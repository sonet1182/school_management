<?php

namespace App\Http\Controllers\backend;

use App\Exports\ExportProducts;
use App\Http\Controllers\Controller;
use App\Models\Student;
use Auth;
use Hash;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Maatwebsite\Excel\Facades\Excel;

class StudentCOntroller extends Controller
{
    function __construct()
    {
        $this->middleware('permission:student-list|student-create|student-edit|student-delete', ['only' => ['index', 'show', 'list']]);
        $this->middleware('permission:student-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:student-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:student-delete', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Student::withoutTrashed()
                ->latest()
                ->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('classname', function ($row) {
                    return $row->class ? $row->class->name : '';
                })
                ->addColumn('imageview', function ($row) {
                    if (!empty($row->image)) {
                        $imageUrl = '/' . $row->image;
                    } else {
                        $imageUrl = asset('/demo_img.jpg');
                    }
                    return '<a href="' . $imageUrl . '" data-lightbox="product-gallery" data-title="">
                        <img src="' . $imageUrl . '" alt="Product Image" class="img-thumbnail">
                    </a>';
                })
                ->addColumn('created_at', function ($row) {
                    return $row->created_at->format('h:i A | d M, Y');
                })
                ->addColumn('action', function ($row) {
                    $editUrl = route('students.edit', $row->id);
                    $deleteUrl = route('students.destroy', $row->id);

                    $actionBtn = '';

                    if (Auth::user()->can('student-edit')) {
                        $actionBtn .= '<a href="' . $editUrl . '" class="edit btn btn-success btn-xs" data-toggle="tooltip"
                        data-original-title="edit">Edit</a> ';
                    }

                    if (Auth::user()->can('student-delete')) {
                        $actionBtn .= '<form action="' . $deleteUrl . '" method="POST" style="display:inline;">
                                        ' . csrf_field() . '
                                        ' . method_field('DELETE') . '
                                        <button type="submit" class="delete btn btn-danger btn-xs">Delete</button>
                                   </form>';
                    }

                    return $actionBtn;
                })
                ->rawColumns(['imageview', 'action'])
                ->make(true);
        }

        return view('backend.students.index');
    }

    public function create()
    {
        return view('backend.students.create', compact('groups'));
    }

    public function add_manager(Request $req)
    {
        $manager = new Student();
        $manager->name = $req->name;
        $manager->email = $req->email;
        $manager->password = Hash::make($req->password);
        $manager->save();
        return back()->with('status', 'Manager Added Successfully');
    }


    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:students,email',
            'password' => 'required',
            'phone' => [
                'required',
                'string',
                'regex:/^01[0-9]{9}$/',
                'unique:users,phone',
            ],
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $validatedData['password'] = Hash::make($request->password);
        $student = Student::create($validatedData);

        $notification = array(
            'alert-type' => 'success',
            'message' => 'Student has been added'
        );

        return redirect()->route('backend.students.index')
            ->with($notification);
    }



    public function edit($id)
    {
        $post = Student::findOrFail($id);
        return view('backend.students.edit', compact('post', 'groups', 'types'));
    }



    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:students,email' . $id,
            'password' => 'required',
            'phone' => [
                'required',
                'string',
                'regex:/^01[0-9]{9}$/',
                'unique:users,phone',
            ],
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
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
        $product = Student::findOrFail($id);
        $product->delete();

        $notification = array(
            'alert-type' => 'success',
            'message' => 'Student deleted successfully'
        );

        return redirect()->back()->with($notification);
    }


    public function exportCSVFile()
    {
        return Excel::download(new ExportProducts, 'students.xls');
    }



}
