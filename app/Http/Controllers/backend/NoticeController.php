<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Notice;
use App\Models\PromoCode;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class NoticeController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:notice-list|notice-create|notice-edit|notice-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:notice-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:notice-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:notice-delete', ['only' => ['destroy']]);
    }


    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Notice::withoutTrashed()->latest()->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('start', function ($row) {
                    $time = !empty($row->start_from) ? Carbon::parse($row->start_from)->format('h:i A | d F, Y') : '';
                    return $time;
                })
                ->addColumn('end', function ($row) {
                    $time = !empty($row->end_to) ? Carbon::parse($row->end_to)->format('h:i A | d F, Y') : '';
                    return $time;
                })
                ->addColumn('status_check', function ($row) {
                    if($row->status)
                    {
                        return '<p class="w-100 text-center"><i class="fa fa-check text-success text-center" aria-hidden="true"></i></p>';
                    }else{
                        return '<p class="w-100 text-center"><i class="fa fa-times text-danger text-center" aria-hidden="true"></i></p>';
                    }
                })
                ->addColumn('action', function ($row) {
                    $editUrl = route('notices.edit', $row->id);
                    $actionBtn = '';

                    if (Auth::user()->can('post-edit')) {
                        $actionBtn .= '<a href="' . $editUrl . '" class="edit btn btn-success btn-xs" data-toggle="tooltip"
                        data-original-title="edit">Edit</a> ';
                    }

                    $actionBtn .= '<button class="delete-btn btn btn-danger btn-xs" data-row-id="' . $row->id . '">Delete</button>';

                    return $actionBtn;
                })
                ->rawColumns(['action','status_check'])
                ->make(true);
        }
        return view('backend.notice.index');
    }


    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'body' => 'required',
            'range' => 'nullable|string',
        ]);

        if (isset($request->limit) && $validatedData['range']) {
            list($startTimestamp, $endTimestamp) = $this->extractTimestamps($validatedData['range']);
            $validatedData['start_from'] = Carbon::createFromTimestamp($startTimestamp);
            $validatedData['end_to'] = Carbon::createFromTimestamp($endTimestamp);
        } else {
            $validatedData['start_from'] = null;
            $validatedData['end_to'] = null;
        }

        unset($validatedData['range']);

        if ($request->status) {
            $validatedData['status'] = 1;
        } else {
            $validatedData['status'] = 0;
        }

        $validatedData['created_by'] = Auth::user()->id;

        $promo = Notice::create($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Notice has been added',
        ];

        if ($request->ajax()) {
            return response()->json(['success' => true, 'promo' => $promo]);
        } else {
            return back()->with($notification);
        }
    }




    public function edit($id)
    {
        $post = Notice::findOrFail($id);

        if ($post)
            return view('backend.notice.edit', compact('post'));
        else
            return 'Data Not Found!';
    }


    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'body' => 'required',
            'range' => 'nullable|string',
        ]);

        $promo = Notice::findOrFail($id);

        if (isset($request->limit) && $validatedData['range']) {
            list($startTimestamp, $endTimestamp) = $this->extractTimestamps($validatedData['range']);
            $validatedData['start_from'] = Carbon::createFromTimestamp($startTimestamp);
            $validatedData['end_to'] = Carbon::createFromTimestamp($endTimestamp);
        } else {
            $validatedData['start_from'] = null;
            $validatedData['end_to'] = null;
        }

        unset($validatedData['range']);

        if ($request->status) {
            $validatedData['status'] = 1;
        } else {
            $validatedData['status'] = 0;
        }

        $validatedData['created_by'] = Auth::user()->id;

        $promo->update($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Notice has been updated',
        ];

        return back()->with('status', "Notice Updated");
    }

    public function destroy($id)
    {
        $data = Notice::find($id);

        if (!$data) {
            return response()->json(['success' => false, 'message' => 'Record not found'], 404);
        }

        $data->delete();

        return response()->json(['success' => true, 'message' => 'Record deleted successfully']);
    }


    private function extractTimestamps($range)
    {
        $timestamps = explode(' - ', $range);
        $startTimestamp = strtotime($timestamps[0]);
        $endTimestamp = strtotime($timestamps[1]);

        return [$startTimestamp, $endTimestamp];
    }
}
