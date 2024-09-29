<?php

namespace App\Http\Controllers;

use App\Models\Form;
use App\Models\FormField;
use App\Models\Group;
use App\Models\Submission;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class FormController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:form-list|form-create|form-edit|form-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:form-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:form-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:form-delete', ['only' => ['destroy', 'delete']]);
    }


    public function index()
    {
        return view('backend.forms.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $data = Form::withoutTrashed()
                ->when(!Auth::user()->hasRole('Admin'), function ($query) {
                    return $query->where('user_id', Auth::id());
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
                ->addColumn('details', function ($row) {
                    return '<span>' . $row->description . '</span>';
                })
                ->addColumn('created_at', function ($row) {
                    return $row->created_at->format('h:i A | d M, Y');
                })
                ->addColumn('action', function ($row) {
                    $submissionUrl = route('forms.submissions', $row->id);
                    $editUrl = route('forms.edit', $row->id);
                    $deleteUrl = route('forms.destroy', $row->id);

                    $actionBtn = '';

                    if (Auth::user()->can('form-edit')) {
                        $actionBtn .= '<a href="' . $submissionUrl . '" class="btn btn-info btn-sm" data-toggle="tooltip"
                        data-original-title="Show the Submission of this form">Form Submission</a> ';
                    }


                    if (Auth::user()->can('form-edit')) {
                        $actionBtn .= '<a href="' . $editUrl . '" class="edit btn btn-success btn-sm" data-toggle="tooltip"
                        data-original-title="edit">Edit</a> ';
                    }

                    if (Auth::user()->can('form-delete')) {
                        $actionBtn .= '<form action="' . $deleteUrl . '" method="POST" style="display:inline;">
                                        ' . csrf_field() . '
                                        ' . method_field('DELETE') . '
                                        <button type="submit" class="delete btn btn-danger btn-sm">Delete</button>
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
        return view('backend.forms.create', compact('groups'));
    }

    public function store(Request $request)
    {
        $form = Form::create([
            'user_id' => Auth::user()->id,
            'title' => $request->input('title'),
            'group' => $request->input('group'),
            'description' => $request->input('description'),
        ]);

        foreach ($request->input('fields') as $field) {
            FormField::create([
                'form_id' => $form->id,
                'field_type' => $field['type'],
                'field_label' => $field['label'],
                'field_options' => $field['options'] ?? null,
            ]);
        }

        $notification = [
            'alert-type' => 'success',
            'message' => 'Form Created successfully!',
        ];

        return back()->with($notification);
    }

    public function edit($id)
    {
        $groups = Group::where('creator_id', Auth::user()->id)->get();

        if(!Auth::user()->hasRole('Admin')){
            $form = Form::where('id', $id)->where("user_id", Auth::user()->id)->first();
        }
        else {
            $form = Form::where('id', $id)->first();
        }

        return view('backend.forms.edit', compact('form','groups'));
    }

    public function update(Request $request, Form $form)
    {
        $form->update([
            'title' => $request->input('title'),
            'group' => $request->input('group'),
            'description' => $request->input('description'),
        ]);

        $form->fields()->delete();

        foreach ($request->input('fields') as $field) {
            FormField::create([
                'form_id' => $form->id,
                'field_type' => $field['type'],
                'field_label' => $field['label'],
                'field_options' => $field['options'] ?? null,
            ]);
        }

        $notification = [
            'alert-type' => 'success',
            'message' => 'Form Updated successfully!',
        ];

        return back()->with($notification);
    }


    public function delete($id)
    {
        if(!Auth::user()->hasRole('Admin')){
            $form = Form::where('id', $id)->where("user_id", Auth::user()->id)->first();
        }
        else {
            $form = Form::where('id', $id)->first();
        }

        $form->delete();

        $notification = array(
            'alert-type' => 'success',
            'message' => 'Form deleted successfully'
        );

        return redirect()->back()->with($notification);
    }


    public function show()
    {
        $form = Form::where("user_id", Auth::user()->id)->first();
        return view('backend.forms.show', compact('form'));
    }

    public function submit(Request $request, Form $form)
    {
        $submissionData = [];

        foreach ($form->fields as $field) {
            if ($field->field_type == 'file') {
                if ($request->hasFile('fields.' . $field->id)) {
                    $filePath = $this->UploadImage($request, 'fields.' . $field->id, 'images/user/', 300, 300);
                    $submissionData[$field->id] = $filePath;
                }
            } else {
                $submissionData[$field->id] = $request->input('fields.' . $field->id);
            }
        }


        $sub = Submission::where('user_id', Auth::user()->id)->where('form_id', $form->id)->first();

        if ($sub) {
            $notification = [
                'alert-type' => 'warning',
                'message' => 'You have already submit the form!',
            ];

            return back()->with($notification);
        } else {
            Submission::create([
                'user_id' => auth()->id(),
                'form_id' => $form->id,
                'submission_data' => $submissionData,
                'card_id' => rand(1000, 9999), 
            ]);

            // $user = User::where('id', Auth::user()->id)->first();
            // $existingLeaders = json_decode($user->reg_leader, true) ?? [];

            // if (!in_array($form->user_id, $existingLeaders)) {
            //     $existingLeaders[] = $form->user_id;
            // }
            // $user->update([
            //     'reg_leader' => json_encode($existingLeaders),
            // ]);

            $notification = [
                'alert-type' => 'success',
                'message' => 'Form submitted successfully!',
            ];

            return back()->with($notification);
        }

    }



    public function submissions($id)
    {
        if(!Auth::user()->hasRole('Admin')){
            $form = Form::where('id', $id)->where("user_id", Auth::user()->id)->first();
        }
        else {
            $form = Form::where('id', $id)->first();
        }

        if ($form) {
            $submissions = $form->submissions()->with('user')->get();
        } else {
            $submissions = [];
        }

        return view('backend.forms.submissions', compact('form', 'submissions'));
    }


    

    public function showDetails2($id)
    {
        $submission = Submission::with('form')->findOrFail($id);
        $form = $submission->form;

        // Retrieve specific fields
        $name = $submission->submission_data[$form->fields->where('field_label', 'Name')->first()->id] ?? 'N/A';
        $bloodGroup = $submission->submission_data[$form->fields->where('field_label', 'Blood Group')->first()->id] ?? 'N/A';
        $institute = $submission->submission_data[$form->fields->where('field_label', 'Institution')->first()->id] ?? 'N/A';
        $imagePath = $submission->submission_data[$form->fields->where('field_label', 'Image')->first()->id] ?? null;

        return view('backend.forms.details', compact('name', 'bloodGroup', 'institute', 'imagePath'));
    }


    public function showDetails($id)
    {
        $submission = Submission::with('form')->findOrFail($id);

        if (!$submission) {
            return redirect()->back()->withErrors('Data not found');
        }

        $pdf = new \Mpdf\Mpdf([
            'default_font' => 'nikosh',
            'default_font_size' => '12',
        ]);

        $form = $submission->form;

        $pdf->WriteHTML($this->pdf_html_print($submission, $form));

        $pdf->Output();

        $notification = [
            'alert-type' => 'success',
            'message' => 'Card Generated!',
        ];

        return back()->with($notification);
    }

    public function pdf_html_print($submission, $form)
    {
        $name = $submission->submission_data[$form->fields->where('field_label', 'Name')->first()->id] ?? 'N/A';
        $bloodGroup = $submission->submission_data[$form->fields->where('field_label', 'Blood Group')->first()->id] ?? 'N/A';
        $phone = $submission->submission_data[$form->fields->where('field_label', 'Phone')->first()->id] ?? 'N/A';
        $institute = $submission->submission_data[$form->fields->where('field_label', 'Institution')->first()->id] ?? 'N/A';
        $imagePath = $submission->submission_data[$form->fields->where('field_label', 'Image')->first()->id] ?? null;

        $imageData = base64_encode(file_get_contents(public_path($imagePath)));
        $src = 'data:image/jpeg;base64,' . $imageData;

        // Generate QR code
        $site_url = url('/');
        $url = "https://api.qrserver.com/v1/create-qr-code/?size=100x100&data=" . $site_url . '/verify_id_card/' . $submission->card_id; // Example URL

        return view('pdf.document', compact('name', 'bloodGroup', 'institute', 'imagePath', 'phone', 'src', 'url', 'submission'));
    }



}
