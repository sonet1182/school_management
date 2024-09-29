<?php

namespace App\Http\Controllers;

use App\Exports\ExportProducts;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Group;
use App\Models\Media;
use App\Models\Offer;
use App\Models\Product;
use App\Models\ProductVariant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;
use Maatwebsite\Excel\Facades\Excel;

class ProductController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:post-list|post-create|post-edit|post-delete', ['only' => ['index', 'show', 'list']]);
        $this->middleware('permission:post-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:post-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:post-delete', ['only' => ['destroy']]);
    }

    public function index()
    {
        return view('backend.products.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $data = Product::withoutTrashed()
                ->when(!Auth::user()->hasRole('Admin'), function ($query) {
                    return $query->where('created_by', Auth::id());
                })
                ->latest()
                ->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('group_id', function ($row) {
                    return $row->group_id ? $row->group_id->name : '';
                })
                ->addColumn('creator', function ($row) {
                    return $row->creator ? $row->creator->name : '';
                })
                ->addColumn('post_type', function ($row) {
                    if($row->type == 2) {
                        return 'Private';
                    }else{
                        return 'Global';
                    }
                })
                ->addColumn('imageview', function ($row) {
                    $galleryIds = json_decode($row->galleryimg_id, true);

                    if (is_array($galleryIds) && !empty($galleryIds)) {
                        $images = Media::whereIn('id', $galleryIds)->get();
                        if (!empty($images[0])) {
                            $imageUrl = asset($images[0]->file_directory . '/' . $images[0]->filename);
                        } else {
                            $imageUrl = asset('/demo_img.jpg');
                        }
                    } else {
                        $imageUrl = asset('/demo_img.jpg');
                    }
                    return '<a href="' . $imageUrl . '" data-lightbox="product-gallery" data-title="">
                        <img src="' . $imageUrl . '" alt="Product Image" class="img-thumbnail" width="50" height="50">
                    </a>';
                })
                ->addColumn('details', function ($row) {
                    return '<span>' . $row->detail . '</span>';
                })
                ->addColumn('created_at', function ($row) {
                    return $row->created_at->format('h:i A | d M, Y');
                })
                ->addColumn('action', function ($row) {
                    $editUrl = route('posts.edit', $row->id);
                    $deleteUrl = route('posts.destroy', $row->id);

                    $actionBtn = '';

                    if (Auth::user()->can('post-edit')) {
                        $actionBtn .= '<a href="' . $editUrl . '" class="edit btn btn-success btn-xs" data-toggle="tooltip"
                        data-original-title="edit">Edit</a> ';
                    }

                    if (Auth::user()->can('post-delete')) {
                        $actionBtn .= '<form action="' . $deleteUrl . '" method="POST" style="display:inline;">
                                        ' . csrf_field() . '
                                        ' . method_field('DELETE') . '
                                        <button type="submit" class="delete btn btn-danger btn-xs">Delete</button>
                                   </form>';
                    }

                    return $actionBtn;
                })
                ->rawColumns(['imageview', 'details', 'action'])
                ->make(true);
        }
    }



    public function create()
    {
        $groups = Group::where('creator_id', Auth::user()->id)->get();
        return view('backend.products.create', compact('groups'));
    }


    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|unique:products',
            'detail' => 'required|string',
            'group' => 'required|exists:groups,id',
            'meta_keyword' => 'nullable',
        ]);

        function CleanURL($string, $delimiter = '-')
        {
            $string = preg_replace("/[~`{}.'\"\!\@\#\$\%\^\&\*\(\)\_\=\+\/\?\>\<\,\[\]\:\;\|\\\]/", "", $string);
            $string = preg_replace("/[\/_|+ -]+/", $delimiter, $string);
            return $string;
        }

        $validatedData['meta_keyword'] ??= [];
        $validatedData['meta_keyword'] = json_encode($validatedData['meta_keyword']);
        $validatedData['created_by'] = Auth::user()->id;
        $validatedData['slug'] = CleanURL($request->name);
        $validatedData['type'] = $request->type;


        $product = new Product($validatedData);
        $product->save();

        $notification = array(
            'alert-type' => 'success',
            'message' => 'Post has been added'
        );

        return redirect()->route('posts.index')
            ->with($notification);
    }


    private function getCategoryHierarchy(Category $category)
    {
        $hierarchy = [$category->id];

        while ($category->parent_id) {
            $category = Category::findOrFail($category->parent_id);
            array_unshift($hierarchy, $category->id);
        }

        return $hierarchy;
    }


    public function show(Product $product)
    {
        return view('backend.products.show', compact('product'));
    }


    public function edit($id)
    {

        $post = Product::findOrFail($id);
        $groups = Group::where('creator_id', Auth::user()->id)->get();
        $types = json_decode($post->type);

        return view('backend.products.edit', compact('post', 'groups', 'types'));
    }




    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|unique:products,name,' . $id,
            'detail' => 'required|string',
            'group' => 'required|exists:groups,id',
            'meta_keyword' => 'nullable',
        ]);

        function CleanURL2($string, $delimiter = '-')
        {
            $string = preg_replace("/[~`{}.'\"\!\@\#\$\%\^\&\*\(\)\_\=\+\/\?\>\<\,\[\]\:\;\|\\\]/", "", $string);
            $string = preg_replace("/[\/_|+ -]+/", $delimiter, $string);
            return $string;
        }

        $validatedData['meta_keyword'] = json_encode($request->input('meta_keyword', []));
        $validatedData['edited_by'] = Auth::user()->id;
        $validatedData['slug'] = CleanURL2($request->name);
        $validatedData['type'] = $request->type;


        $product = Product::findOrFail($id);
        $product->update($validatedData);


        $notification = [
            'alert-type' => 'success',
            'message' => 'Post has been updated'
        ];

        return back()->with($notification);
    }




    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        $product->delete();

        $notification = array(
            'alert-type' => 'success',
            'message' => 'Post deleted successfully'
        );

        return redirect()->back()->with($notification);
    }


    public function exportCSVFile()
    {
        return Excel::download(new ExportProducts, 'products.xls');
    }


    public function stock_alert()
    {
        return view('backend.products.stock_alert');
    }

    public function stock_alert_list(Request $request)
    {
        if ($request->ajax()) {
            $data = Product::withoutTrashed()
                ->whereColumn('quantity', '<=', 'stock_alert')
                ->latest()
                ->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('category_id', function ($row) {
                    return $row->category_id->title;
                })
                ->addColumn('imageview', function ($row) {
                    $galleryIds = json_decode($row->galleryimg_id, true);

                    if (is_array($galleryIds) && !empty($galleryIds)) {
                        $images = Media::whereIn('id', $galleryIds)->get();
                        if (!empty($images[0])) {
                            $imageUrl = asset($images[0]->file_directory . '/' . $images[0]->filename);
                        } else {
                            $imageUrl = asset('/demo_img.jpg');
                        }
                    } else {
                        $imageUrl = asset('/demo_img.jpg');
                    }
                    return '<a href="' . $imageUrl . '" data-lightbox="product-gallery" data-title="">
                        <img src="' . $imageUrl . '" alt="Product Image" class="img-thumbnail" width="50" height="50">
                    </a>';
                })
                ->addColumn('details', function ($row) {
                    return '<span>' . $row->detail . '</span>';
                })
                ->addColumn('action', function ($row) {
                    $editUrl = route('posts.edit', $row->id);
                    $deleteUrl = route('posts.destroy', $row->id);

                    $actionBtn = '';

                    // Check if the user has permission to edit
                    if (Auth::user()->can('product-edit')) {
                        $actionBtn .= '<a href="' . $editUrl . '" class="edit btn btn-success btn-xs" data-toggle="tooltip"
                        data-original-title="edit">Edit</a> ';
                    }

                    // Check if the user has permission to delete
                    if (Auth::user()->can('product-delete')) {
                        $actionBtn .= '<form action="' . $deleteUrl . '" method="POST" style="display:inline;">
                                        ' . csrf_field() . '
                                        ' . method_field('DELETE') . '
                                        <button type="submit" class="delete btn btn-danger btn-xs">Delete</button>
                                   </form>';
                    }

                    return $actionBtn;
                })
                ->rawColumns(['imageview', 'details', 'action'])
                ->make(true);
        }
    }
}
