<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Group;
use App\Models\User;
use Auth;
use Hash;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Yajra\DataTables\Facades\DataTables;

class GroupController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:group-list|group-create|group-edit|group-delete', ['only' => ['index','store']]);
         $this->middleware('permission:group-create', ['only' => ['create','store']]);
         $this->middleware('permission:group-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:group-delete', ['only' => ['destroy']]);
    }


    public function index()
    {
        return view('backend.groups.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $data = Group::where('creator_id', Auth::user()->id)->latest()->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('imageview', function ($row) {
                    if (!empty($row->image)) {
                        $imageUrl = $row->image;
                    } else {
                        $imageUrl = asset('/demo_img.jpg');
                    }
                    return '<a href="/' . $imageUrl . '" data-lightbox="product-gallery" data-title="">
                        <img src="/' . $imageUrl . '" alt="Product Image" class="img-thumbnail" width="50" height="50">
                    </a>';
                })
                ->addColumn('view_member', function ($row) {
                    $editUrl = route('members.index', $row->id);
                    return '<a href="' . $editUrl . '" class="btn btn-info btn-sm px-4">View</a>';
                })
                ->addColumn('category_id', function ($row) {
                    return $row->category_id ? $row->category_id->title : '';
                })
                ->addColumn('creator', function ($row) {
                    return $row->creator ? $row->creator->name : '';
                })
                ->addColumn('action', function ($row) {
                    $editUrl = route('groups.edit', $row->id);
                    $deleteUrl = route('groups.destroy', $row->id);

                    $actionBtn = '';

                    if (Auth::user()->can('group-edit')) {
                        $actionBtn .= '<a href="' . $editUrl . '" class="edit btn btn-success btn-xs" data-toggle="tooltip"
                        data-original-title="edit">Edit</a> ';
                    }

                    if (Auth::user()->can('group-delete')) {
                        $actionBtn .= '<form action="' . $deleteUrl . '" method="POST" style="display:inline;">
                                        ' . csrf_field() . '
                                        ' . method_field('DELETE') . '
                                        <button type="submit" class="delete btn btn-danger btn-xs">Delete</button>
                                   </form>';
                    }

                    return $actionBtn;
                })
                ->rawColumns(['imageview', 'category_id', 'creator', 'view_member', 'action'])
                ->make(true);
        }
    }


    public function create()
    {
        $categories = Category::withoutTrashed()->with('subCategories')->whereNull('parent_id')->get();
        return view('backend.groups.create', compact('categories'));
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'details' => 'nullable|string',
            'category' => 'required|integer',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($request->hasFile('image')) {
            $validatedData['image'] = $this->UploadImage($request, 'image', 'images/group/', '400', '400');
        }

        $validatedData['creator_id'] = Auth::user()->id;

        $validatedData['slug'] = $this->CleanURL($request->name);

        // Get the selected category and its ancestors
        $category = Category::findOrFail($validatedData['category']);
        $categoryHierarchy = $this->getCategoryHierarchy($category);
        $validatedData['category_hierarchy'] = json_encode($categoryHierarchy);

        Group::create($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Group has been created',
        ];

        return redirect()->route('groups.index')
            ->with($notification);
    }

    public function edit($id)
    {
        $post = Group::findOrFail($id);
        $categories = Category::with('subCategories')->whereNull('parent_id')->get();

        if ($post)
            return view('backend.groups.edit', compact('post','categories'));
        else
            return 'Data Not Found!';
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'details' => 'nullable|string',
            'category' => 'required|integer',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);


        $banner = Group::findOrFail($id);

        if ($request->hasFile('image')) {
            $validatedData['image'] = $this->UploadImage($request, 'image', 'images/group/', '400', '400', $banner->image);
        }

        if ($request->status) {
            $validatedData['status'] = 1;
        } else {
            $validatedData['status'] = 0;
        }

        $validatedData['slug'] = $this->CleanURL($request->name);

        // Get the selected category and its ancestors
        $category = Category::findOrFail($validatedData['category']);
        $categoryHierarchy = $this->getCategoryHierarchy($category);
        $validatedData['category_hierarchy'] = json_encode($categoryHierarchy);

        $banner->update($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Data has been updated',
        ];

        return back()->with($notification);
    }

    public function destroy($id)
    {
        $product = Group::findOrFail($id);
        $product->delete();

        $notification = array(
            'alert-type' => 'success',
            'message' => 'Group deleted successfully'
        );

        return redirect()->back()->with($notification);
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

    function CleanURL($string, $delimiter = '-')
        {
            $string = preg_replace("/[~`{}.'\"\!\@\#\$\%\^\&\*\(\)\_\=\+\/\?\>\<\,\[\]\:\;\|\\\]/", "", $string);
            $string = preg_replace("/[\/_|+ -]+/", $delimiter, $string);
            return $string;
        }

}
