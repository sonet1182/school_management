<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Section;
use App\Models\StudentClass;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class SectionController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:section-list|section-create|section-edit|section-delete', ['only' => ['index','store']]);
         $this->middleware('permission:section-create', ['only' => ['create','store']]);
         $this->middleware('permission:section-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:section-delete', ['only' => ['destroy']]);
    }


    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Section::withoutTrashed()->latest()->get();
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
        return view('backend.sections.index');
    }


    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $banner = Section::create($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Section has been added',
        ];

        if ($request->ajax()) {
            return response()->json(['success' => true, 'banner' => $banner]);
        } else {
            return back()->with($notification);
        }
    }

    public function edit($id)
    {
        $post = Section::findOrFail($id);

        if ($post)
            return view('backend.sections.edit', compact('post'));
        else
            return 'Data Not Found!';
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $class = Section::findOrFail($id);

        $class->update($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Section has been updated',
        ];

        if ($request->ajax()) {
            return response()->json(['success' => true, 'class' => $class]);
        } else {
            return back()->with($notification);
        }
    }

    public function destroy($id)
    {
        $data = Section::find($id);
        if (!$data) {
            return response()->json(['success' => false, 'message' => 'Record not found'], 404);
        }

        $data->delete();

        return response()->json(['success' => true, 'message' => 'Record deleted successfully']);
    }
}
