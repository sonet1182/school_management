<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\User;
use Hash;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Yajra\DataTables\Facades\DataTables;

class LeaderController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:leader-list|leader-create|leader-edit|leader-delete', ['only' => ['index','store']]);
         $this->middleware('permission:leader-create', ['only' => ['create','store']]);
         $this->middleware('permission:leader-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:leader-delete', ['only' => ['destroy']]);
    }


    public function index()
    {
        return view('backend.leaders.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $data = User::role('leader')->latest()->get();
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
                ->addColumn('action', function ($row) {
                    $actionBtn = '';
                    $actionBtn .= '<button class="edit-btn btn btn-success btn-xs mr-1" data-row-id="' . $row->id . '">Edit</button>';
                    $actionBtn .= '<button class="delete-btn btn btn-danger btn-xs" data-row-id="' . $row->id . '">Delete</button>';

                    return $actionBtn;
                })
                ->rawColumns(['imageview', 'action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users,email',
            'password' => 'required',
            'phone' => [
                'required',
                'string',
                'regex:/^01[0-9]{9}$/',
                'unique:users,phone',
            ],
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($request->hasFile('image')) {
            $validatedData['image'] = $this->UploadImage($request, 'image', 'images/profile/', '400', '400');
        }

        $validatedData['password'] = Hash::make($request->password);

        $leader = User::create($validatedData);
        $leader->assignRole(['leader']);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Leader has been added',
        ];

        if ($request->ajax()) {
            return response()->json(['success' => true, 'leader' => $leader]);
        } else {
            return back()->with($notification);
        }
    }

    public function edit($id)
    {
        $post = User::findOrFail($id);

        if ($post)
            return view('backend.leaders.edit', compact('post'));
        else
            return 'Data Not Found!';
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => [
                'required',
                'string',
                'email',
                Rule::unique('users', 'email')->ignore($id),
            ],
            'phone' => [
                'required',
                'string',
                'regex:/^01[0-9]{9}$/',
                Rule::unique('users', 'phone')->ignore($id),
            ],
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);


        $banner = User::findOrFail($id);

        if ($request->hasFile('image')) {
            $validatedData['image'] = $this->UploadImage($request, 'image', 'images/profile/', '400', '400', $banner->image);
        }

        if ($request->status) {
            $validatedData['status'] = 1;
        } else {
            $validatedData['status'] = 0;
        }

        $banner->update($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Data has been updated',
        ];

        if ($request->ajax()) {
            return response()->json(['success' => true, 'banner' => $banner]);
        } else {
            return back()->with($notification);
        }
    }

    public function destroy($id)
    {
        $data = User::find($id);

        if (!$data) {
            return response()->json(['success' => false, 'message' => 'Record not found'], 404);
        }

        $data->delete();

        return response()->json(['success' => true, 'message' => 'Record deleted successfully']);
    }
}
