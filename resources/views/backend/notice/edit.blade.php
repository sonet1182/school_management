@extends('backend.layouts.master')

@section('title', 'Edit Notice')

@section('content')
    <div class="card card-default">
        <div class="card-header">
            <div class="d-flex">
                <div class="ml-auto">
                    <a class="btn btn-sm btn-success" href="{{ route('notices.index') }}"> <i class="fa fa-arrow-left"
                            aria-hidden="true"></i> Notice List </a>
                </div>
            </div>
        </div>


        <div class="card-body">

            @include('layouts.session')


            <form id="updateForm" class="needs-validation" action="{{ route('notices.update', $post->id) }}" method="POST"
                novalidate enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <div class="form-row">


                    <div class="col-md-12 mb-3">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-sm" id="title" name="title"
                            placeholder="Enter title" value="{{ !empty($post) ? $post->title : old('title') }}" required>
                    </div>


                    <div class="col-md-12 mb-3">
                        <label>Show Date and time range:</label>

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="limit" id="showRangeCheckbox1"
                                {{ !empty($post) && $post->start_from ? 'checked' : '' }}>
                            <label class="form-check-label" for="showRangeCheckbox">
                                Show Date and time range
                            </label>
                        </div>

                        @if ($post->start_from)
                            <div class="input-group" id="rangeInputGroup1"
                                style="{{ !empty($post) && $post->start_from ? '' : 'display: none;' }}">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="far fa-clock"></i></span>
                                </div>
                                <input type="text" name="range" class="form-control float-right" id="reservationtime1"
                                    value="{{ !empty($post) ? ($post->start_from ? \Carbon\Carbon::parse($post->start_from)->format('m/d/Y h:i A') : '') : '' }} - {{ !empty($post) ? ($post->end_to ? \Carbon\Carbon::parse($post->end_to)->format('m/d/Y h:i A') : '') : '' }}">
                                <div class="invalid-feedback">
                                    @error('range')
                                        {{ $message }}
                                    @enderror
                                </div>
                            </div>
                        @else
                            <div class="input-group" id="rangeInputGroup1"
                                style="{{ !empty($post) && $post->start_from ? '' : 'display: none;' }}">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="far fa-clock"></i></span>
                                </div>
                                <input type="text" name="range" class="form-control float-right" id="reservationtime1"
                                    value="">
                                <div class="invalid-feedback">
                                    @error('range')
                                        {{ $message }}
                                    @enderror
                                </div>
                            </div>
                        @endif
                    </div>

                    @include('backend.notice.textarea')

                    <div class="col-md-6 mb-3">
                        <label for="validationCustom02">Status</label>
                        <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input" id="validationCustom02" name="status"
                                {{ !empty($post) && $post->status ? 'checked' : '' }}>
                            <label class="custom-control-label" for="validationCustom02"></label>
                        </div>
                    </div>


                </div>

                <button class="btn btn-primary" type="submit">Submit</button>
            </form>
        </div>
    </div>

@endsection

@section('scripts')
    <script>
        const showRangeCheckbox = document.getElementById('showRangeCheckbox1');
        const rangeInputGroup = document.getElementById('rangeInputGroup1');

        showRangeCheckbox1.addEventListener('change', function() {
            rangeInputGroup1.style.display = showRangeCheckbox1.checked ? '' : 'none';
        });

        // Trigger the change event on page load if the checkbox is initially checked
        if (showRangeCheckbox1.checked) {
            rangeInputGroup1.style.display = '';
        }


        $('#reservationtime1').daterangepicker({
            timePicker: true,
            timePickerIncrement: 15,
            locale: {
                format: 'MM/DD/YYYY h:mm A'
            }
        });
    </script>
@endsection
