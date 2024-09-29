@extends('backend.layouts.master')

@section('title', 'Form Management')

@section('css')
    <link rel="stylesheet" href="{{ asset('asset/backend/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
@endsection


@section('content')

    @if ($form)
        <div class="card">
            <div class="card-header">
                <h4>Submissions for: {{ $form->title }}</h4>
                <p>{{ $form->description }}</p>
            </div>

            <div class="card-body">
                <table class="table table-bordered" id="datatable">
                    <thead>
                        <tr>
                            @foreach ($form->fields as $field)
                                <th>{{ $field->field_label }}</th>
                            @endforeach
                            <th>Group</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($submissions as $submission)
                            <tr>
                                @foreach ($form->fields as $field)
                                    <td>
                                        @php
                                            $fieldData = $submission->submission_data[$field->id] ?? '';

                                            // Handle file types
                                            if ($field->field_type == 'file' && $fieldData) {
                                                $fieldData =
                                                    '<img src="' . asset($fieldData) . '" height="80px" width="80px"/>';
                                            } elseif (is_array($fieldData)) {
                                                $fieldData = implode(', ', $fieldData);
                                            }
                                        @endphp
                                        {!! $fieldData !!}
                                    </td>
                                @endforeach
                                <td>
                                    {{ $submission->form->group_id->name ?? '' }}
                                </td>
                                <td>
                                    <a href="{{ route('forms.generate_id_card', $submission->id) }}"
                                        class="btn btn-sm btn-info">Generate</a>

                                    @if(empty($submission->group_id))
                                        <a href="{{ route('forms.add_member', $submission->id) }}"
                                            class="btn btn-sm btn-success">Add Member</a>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    @else
        <div class="card py-5">
            <h4 class="text-center">No form Submission yet!</h4>
        </div>
    @endif

@endsection


@section('scripts')
    <script>
        $(document).ready(function() {
            $("#dataTable").DataTable({
                "order": [] // Disable default sorting
            });
        });
    </script>
@endsection
