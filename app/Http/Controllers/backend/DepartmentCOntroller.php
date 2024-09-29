<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Department;
use App\Models\StudentClass;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class DepartmentCOntroller extends Controller
{
    function __construct()
    {
         $this->middleware('permission:department-list|department-create|department-edit|department-delete', ['only' => ['index','store']]);
         $this->middleware('permission:department-create', ['only' => ['create','store']]);
         $this->middleware('permission:department-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:department-delete', ['only' => ['destroy']]);
    }


    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Department::withoutTrashed()->latest()->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $actionBtn = '';
                    $actionBtn .= '<button class="edit-btn btn btn-success btn-xs mr-1" data-row-id="' . $row->id . '">Edit</button>';
                    $actionBtn .= '<button class="delete-btn btn btn-danger btn-xs" data-row-id="' . $row->id . '">Delete</button>';

                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('backend.departments.index');
    }


    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $data = Department::create($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Department has been added',
        ];

        if ($request->ajax()) {
            return response()->json(['success' => true, 'data' => $data]);
        } else {
            return back()->with($notification);
        }
    }

    public function edit($id)
    {
        $post = Department::findOrFail($id);

        if ($post)
            return view('backend.departments.edit', compact('post'));
        else
            return 'Data Not Found!';
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $class = Department::findOrFail($id);

        $class->update($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Department has been updated',
        ];

        if ($request->ajax()) {
            return response()->json(['success' => true, 'class' => $class]);
        } else {
            return back()->with($notification);
        }
    }

    public function destroy($id)
    {
        $data = Department::find($id);
        if (!$data) {
            return response()->json(['success' => false, 'message' => 'Record not found'], 404);
        }

        $data->delete();

        return response()->json(['success' => true, 'message' => 'Record deleted successfully']);
    }
}
