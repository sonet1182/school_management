@extends('backend.layouts.master')

@section('title', 'Form Management')

@section('content')

    <div class="card">
        <div class="card-body">

            <form action="{{ route('forms.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="title" class="form-label">Form Title:</label>
                        <input type="text" class="form-control" name="title" id="title" required>
                    </div>
    
                    <div class="form-group col-md-6 mb-3">
                        <label for="title" class="form-label">Group:</label>
                        <select name="group" class="select2" style="width: 100%;">
                            @foreach ($groups as $group)
                                <option value="{{ $group->id }}">{{ $group->name }}</option>
                            @endforeach
                        </select>
                    </div>
    
                    <div class="form-group col-md-12 mb-3">
                        <label for="description" class="form-label">Form Description:</label>
                        <textarea class="form-control" name="description" id="description" rows="3"></textarea>
                    </div>
                </div>

                <div id="form-fields" class="form-group">
                    <div class="form-field row mb-3">
                        <div class="col-md-3">
                            <label class="form-label">Field Type:</label>
                            <select name="fields[0][type]" class="form-control field-type" data-index="0">
                                <option value="text" selected>Text</option>
                                <option value="textarea">Textarea</option>
                                <option value="select">Select</option>
                                <option value="radio">Radio</option>
                                <option value="checkbox">Checkbox</option>
                                <option value="file">File</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label class="form-label">Field Label:</label>
                            <input type="text" class="form-control" name="fields[0][label]" value="Name" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Field Options (comma-separated):</label>
                            <input type="text" class="form-control field-options" name="fields[0][options]" disabled
                                placeholder="For select, radio, checkbox">
                        </div>
                    </div>

                    <div class="form-field row mb-3">
                        <div class="col-md-3">
                            <label class="form-label">Field Type:</label>
                            <select name="fields[1][type]" class="form-control field-type" data-index="1">
                                <option value="text" selected>Text</option>
                                <option value="textarea">Textarea</option>
                                <option value="select">Select</option>
                                <option value="radio">Radio</option>
                                <option value="checkbox">Checkbox</option>
                                <option value="file">File</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label class="form-label">Field Label:</label>
                            <input type="text" class="form-control" name="fields[1][label]" value="Phone" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Field Options (comma-separated):</label>
                            <input type="text" class="form-control field-options" name="fields[1][options]" disabled
                                placeholder="For select, radio, checkbox">
                        </div>
                    </div>

                    <div class="form-field row mb-3">
                        <div class="col-md-3">
                            <label class="form-label">Field Type:</label>
                            <select name="fields[2][type]" class="form-control field-type" data-index="2">
                                <option value="text" selected>Text</option>
                                <option value="textarea">Textarea</option>
                                <option value="select">Select</option>
                                <option value="radio">Radio</option>
                                <option value="checkbox">Checkbox</option>
                                <option value="file">File</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label class="form-label">Field Label:</label>
                            <input type="text" class="form-control" name="fields[2][label]" value="Blood Group" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Field Options (comma-separated):</label>
                            <input type="text" class="form-control field-options" name="fields[2][options]" disabled
                                placeholder="For select, radio, checkbox">
                        </div>
                    </div>

                    <div class="form-field row mb-3">
                        <div class="col-md-3">
                            <label class="form-label">Field Type:</label>
                            <select name="fields[3][type]" class="form-control field-type" data-index="3">
                                <option value="text" selected>Text</option>
                                <option value="textarea">Textarea</option>
                                <option value="select">Select</option>
                                <option value="radio">Radio</option>
                                <option value="checkbox">Checkbox</option>
                                <option value="file">File</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label class="form-label">Field Label:</label>
                            <input type="text" class="form-control" name="fields[3][label]" value="Institution"
                                required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Field Options (comma-separated):</label>
                            <input type="text" class="form-control field-options" name="fields[3][options]" disabled
                                placeholder="For select, radio, checkbox">
                        </div>
                    </div>

                    <!-- Other predefined fields -->
                    <!-- Example for Image Field -->
                    <div class="form-field row mb-3">
                        <div class="col-md-3">
                            <label class="form-label">Field Type:</label>
                            <select name="fields[4][type]" class="form-control field-type" data-index="4">
                                <option value="text">Text</option>
                                <option value="textarea">Textarea</option>
                                <option value="select">Select</option>
                                <option value="radio">Radio</option>
                                <option value="checkbox">Checkbox</option>
                                <option value="file" selected>File</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label class="form-label">Field Label:</label>
                            <input type="text" class="form-control" name="fields[4][label]" value="Image" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Field Options (comma-separated):</label>
                            <input type="text" class="form-control field-options" name="fields[4][options]" disabled
                                placeholder="For select, radio, checkbox">
                        </div>
                    </div>
                </div>

                <button type="button" id="add-field" class="btn btn-secondary">Add Field</button>

                <button type="submit" class="btn btn-primary">Create Form</button>
            </form>

        </div>
    </div>

    <script>
        document.getElementById('add-field').addEventListener('click', function() {
            let index = document.querySelectorAll('.form-field').length;
            let fieldTemplate = `
        <div class="form-field row mb-3">
            <div class="col-md-3">
                <label class="form-label">Field Type:</label>
                <select name="fields[${index}][type]" class="form-control field-type" data-index="${index}">
                    <option value="text">Text</option>
                    <option value="textarea">Textarea</option>
                    <option value="select">Select</option>
                    <option value="radio">Radio</option>
                    <option value="checkbox">Checkbox</option>
                    <option value="file">File</option>
                </select>
            </div>

            <div class="col-md-3">
                <label class="form-label">Field Label:</label>
                <input type="text" class="form-control" name="fields[${index}][label]" required>
            </div>

            <div class="col-md-6">
                <label class="form-label">Field Options (comma-separated):</label>
                <input type="text" class="form-control field-options" name="fields[${index}][options]" disabled placeholder="For select, radio, checkbox">
            </div>
        </div>`;
            document.getElementById('form-fields').insertAdjacentHTML('beforeend', fieldTemplate);
        });

        // Enable/Disable Field Options based on selected Field Type
        document.addEventListener('change', function(event) {
            if (event.target.classList.contains('field-type')) {
                let index = event.target.getAttribute('data-index');
                let optionsField = document.querySelector(`[name="fields[${index}][options]"]`);
                if (event.target.value === 'file' || event.target.value === 'text' || event.target.value ===
                    'textarea') {
                    optionsField.disabled = true;
                    optionsField.value = '';
                } else {
                    optionsField.disabled = false;
                }
            }
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

