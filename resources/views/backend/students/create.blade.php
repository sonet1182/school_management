@extends('backend.layouts.master')

@section('title', 'Add New Post')

@section('content')

    @include('layouts.session')

    <div class="card card-default">


        <div class="card-header">
            <div class="d-flex">
                <div class="ml-auto">

                    <a class="btn btn-sm btn-success" href="{{ route('students.create') }}"> <i class="fa fa-plus"
                            aria-hidden="true"></i> Add Student </a>

                </div>
            </div>
        </div>


        <div class="card-body">
            <form action="{{ route('students.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @if (!empty($post))
                    <input type="hidden" name="id" value="{{ $post->id }}" />
                @endif

                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header card-info  {{ !empty($post) ? 'alert-primary' : '' }}">
                                <h3 class="card-title panel-title float-left">
                                    {{ !empty($post) ? 'Edit Post' : 'Add Post' }}
                                </h3>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="title">Title</label>
                                        <input type="text" class="form-control form-control-sm" id="title"
                                            name="name" placeholder="Enter title"
                                            value="{{ !empty($post) ? $post->name : old('name') }}" required>
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label for="post_content">Description</label>
                                        <div class="pad">
                                            <textarea xid="compose-textarea" class="form-control compose-textarea-summernote" name="detail">{{ !empty($post) ? $post->detail : old('detail') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header card-info">
                                <h3 class="card-title panel-title float-left">
                                    Post Type
                                </h3>
                            </div>
                            <div class="card-body">
                                <div class="form-group col-md-12">
                                    <select class="form-control" name="type">
                                        <option value="1" selected>Global</option>
                                        <option value="2">Private</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header card-info">
                                <h3 class="card-title panel-title float-left">
                                    Select Group
                                </h3>
                            </div>

                            <div class="card-body">
                                <select name="group" class="select2" style="width: 100%;">
                                    @foreach ($groups as $group)
                                        <option value="{{ $group->id }}">{{ $group->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header card-info  {{ !empty($post) ? 'alert-primary' : '' }}">
                                <h3 class="card-title panel-title float-left">
                                    <i class="fas fa-search mr-1"></i> Seo Settings
                                </h3>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="meta_keyword">Meta Keyword</label>
                                    <select name="meta_keyword[]" class="select2" multiple="multiple" style="width: 100%;">
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <button type="submit" class="btn btn-success px-5 mb-4 mx-auto">Submit</button>
                </div>
            </form>
        </div>


    </div>
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
