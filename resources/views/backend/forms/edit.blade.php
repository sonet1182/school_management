@extends('backend.layouts.master')

@section('title', 'Form Management')

@section('content')

    <div class="card">

        <div class="card-header">
            <div class="d-flex">


                <div class="ml-auto d-flex">

                    <div class="input-group">
                        <input type="text" class="form-control" id="copyInput"
                            value="{{ url('registration_form/' . $form->id) }}" placeholder="Enter text to copy"
                            aria-label="Input text">
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button"
                                onclick="copyToClipboard()">Copy</button>
                        </div>
                    </div>

                    <a class="btn btn-success mx-2" href="{{ route('forms.show') }}">
                        Show
                    </a>
                    <a class="btn btn-danger" href="{{ route('forms.destroy') }}">
                        Delete
                    </a>
                </div>
            </div>
        </div>



        <div class="card-body">

            <form action="{{ route('forms.update', $form->id) }}" method="POST">
                @csrf
                @method('PUT')

                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="title" class="form-label">Form Title:</label>
                        <input type="text" class="form-control" name="title" id="title" value="{{ $form->title }}"
                            required>
                    </div>
    
                    <div class="form-group col-md-6 mb-3">
                        <label for="title" class="form-label">Group:</label>
                        <select name="group" class="select2" style="width: 100%;">
                            @foreach ($groups as $group)
                                <option value="{{ $group->id }}"  {{ $form->group == $group->id ? 'selected' : '' }}>{{ $group->name }}</option>
                            @endforeach
                        </select>
                    </div>
    
    
                    <div class="form-group col-md-12 mb-3">
                        <label for="description" class="form-label">Form Description:</label>
                        <textarea class="form-control" name="description" id="description" rows="3">{{ $form->description }}</textarea>
                    </div>
                </div>

                <div id="form-fields">
                    @foreach ($form->fields as $index => $field)
                        <div class="form-field row mb-3">
                            <div class="col-md-4">
                                <label class="form-label">Field Type:</label>
                                <select name="fields[{{ $index }}][type]" class="form-control">
                                    <option value="text" {{ $field->field_type == 'text' ? 'selected' : '' }}>Text
                                    </option>
                                    <option value="textarea" {{ $field->field_type == 'textarea' ? 'selected' : '' }}>
                                        Textarea</option>
                                    <option value="select" {{ $field->field_type == 'select' ? 'selected' : '' }}>Select
                                    </option>
                                    <option value="radio" {{ $field->field_type == 'radio' ? 'selected' : '' }}>Radio
                                    </option>
                                    <option value="checkbox" {{ $field->field_type == 'checkbox' ? 'selected' : '' }}>
                                        Checkbox</option>
                                    <option value="file" {{ $field->field_type == 'file' ? 'selected' : '' }}>
                                        File</option>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label class="form-label">Field Label:</label>
                                <input type="text" class="form-control" name="fields[{{ $index }}][label]"
                                    value="{{ $field->field_label }}" required>
                            </div>

                            <div class="col-md-4">
                                <label class="form-label">Field Options (comma-separated for select, radio,
                                    checkbox):</label>
                                <input type="text" class="form-control" name="fields[{{ $index }}][options]"
                                    value="{{ $field->field_options }}">
                            </div>
                        </div>
                    @endforeach
                </div>

                <button type="button" id="add-field" class="btn btn-secondary">Add Field</button>

                <button type="submit" class="btn btn-primary">Update Form</button>
            </form>
        </div>
    </div>

    <script>
        document.getElementById('add-field').addEventListener('click', function() {
            let index = document.querySelectorAll('.form-field').length;
            let fieldTemplate = `
        <div class="form-field row mb-3">
            <div class="col-md-4">
                <label class="form-label">Field Type:</label>
                <select name="fields[${index}][type]" class="form-control">
                    <option value="text">Text</option>
                    <option value="textarea">Textarea</option>
                    <option value="select">Select</option>
                    <option value="radio">Radio</option>
                    <option value="checkbox">Checkbox</option>
                </select>
            </div>

            <div class="col-md-4">
                <label class="form-label">Field Label:</label>
                <input type="text" class="form-control" name="fields[${index}][label]" required>
            </div>

            <div class="col-md-4">
                <label class="form-label">Field Options (comma-separated for select, radio, checkbox):</label>
                <input type="text" class="form-control" name="fields[${index}][options]">
            </div>
        </div>`;
            document.getElementById('form-fields').insertAdjacentHTML('beforeend', fieldTemplate);
        });
    </script>

@endsection


@section('scripts')
    <script>
        $(document).ready(function() {
            $('.select2').select2({
                tags: true
            });
        });
    </script>
@endsection
