<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Auth;

class PageController extends Controller
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
        return view('backend.pages.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $data = Page::all();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('created_at', function ($row) {
                    return $row->created_at->format('h:i A | d M, Y');
                })
                ->addColumn('slug_url', function ($row) {
                    return 'pages/'.$row->slug;
                })
                ->addColumn('imageview', function ($row) {
                    if (!empty($row->image)) {
                        $imageUrl = '/'.$row->image;
                    } else {
                        $imageUrl = asset('demo_img.jpg');
                    }
                    return '<a href="/' . $imageUrl . '" data-lightbox="product-gallery" data-title="">
                        <img src="' . $imageUrl . '" alt="Product Image" class="img-thumbnail">
                    </a>';
                })
                ->addColumn('action', function ($row) {
                    $editUrl = route('pages.edit', $row->id);
                    $deleteUrl = route('pages.destroy', $row->id);

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
                ->rawColumns(['created_at', 'action'])
                ->make(true);
        }
    }


    public function create()
    {
        return view('backend.pages.create');
    }



    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|unique:pages',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'body' => 'required',
            'width' => 'nullable|integer|max:1200',
            'height' => 'nullable|integer|max:1200',
        ]);

        function CleanURL($string, $delimiter = '-')
        {
            $string = preg_replace("/[~`{}.'\"\!\@\#\$\%\^\&\*\(\)\_\=\+\/\?\>\<\,\[\]\:\;\|\\\]/", "", $string);
            $string = preg_replace("/[\/_|+ -]+/", $delimiter, $string);
            return $string;
        }

        $height = $request->height ?? '600';
        $width = $request->width ?? '600';
        

        if ($request->hasFile('image')) {
            $validatedData['image'] = $this->UploadImage($request, 'image', 'images/pages/', $width, $height);
        }

        $validatedData['slug'] = CleanURL($request->name);

        $validatedData['height'] = $height;
        $validatedData['width'] = $width;

        $page = new Page($validatedData);
        $page->save();

        $notification = array(
            'alert-type' => 'success',
            'message' => 'Page has been added'
        );

        return redirect()->route('pages.index')
            ->with($notification);
    }


    public function show(Page $page)
    {
        $post = $page;
        return view('backend.pages.show', compact('post'));
    }


    public function edit($id)
    {

        $post = Page::findOrFail($id);
        return view('backend.pages.edit', compact('post'));
    }


    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|unique:pages,name,' . $id,
            'body' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'width' => 'nullable|integer|max:1200',
            'height' => 'nullable|integer|max:1200',
        ]);

        function CleanURL2($string, $delimiter = '-')
        {
            $string = preg_replace("/[~`{}.'\"\!\@\#\$\%\^\&\*\(\)\_\=\+\/\?\>\<\,\[\]\:\;\|\\\]/", "", $string);
            $string = preg_replace("/[\/_|+ -]+/", $delimiter, $string);
            return $string;
        }

        $validatedData['slug'] = CleanURL2($request->name);

        // Find the product and update its details
        $product = Page::findOrFail($id);

        $height = $request->height ?? '600';
        $width = $request->width ?? '600';
        
        $validatedData['height'] = $height;
        $validatedData['width'] = $width;

        if ($request->hasFile('image')) {
            $validatedData['image'] = $this->UploadImage($request, 'image', 'images/pages/', $width, $height);
        }

        $product->update($validatedData);


        $notification = [
            'alert-type' => 'success',
            'message' => 'Page has been updated'
        ];

        return back()->with($notification);
    }




    public function destroy($id)
    {
        $product = Page::findOrFail($id);
        $product->delete();

        $notification = array(
            'alert-type' => 'success',
            'message' => 'Page deleted successfully'
        );

        return redirect()->back()->with($notification);
    }

}
