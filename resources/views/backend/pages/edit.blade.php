@extends('backend.layouts.master')

@section('title', 'Edit Page')

@section('content')

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif


    <span>
        <form action="{{ route('pages.update', $post->id) }}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf


            <div class="card">
                <div class="card-header card-info  {{ !empty($post) ? 'alert-primary' : '' }}">
                    <h3 class="card-title panel-title float-left">
                        {{ !empty($post) ? 'Edit Post' : 'Add Post' }}
                    </h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="title">Name</label>
                            <input type="text" class="form-control form-control-sm" id="title" name="name"
                                placeholder="Enter title" value="{{ !empty($post) ? $post->name : old('name') }}" required>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label for="validationCustom01">Image</label>
                
                            <input class="form-control" name="image" type="file"
                                onchange="previewImage(this, 'image-preview2','200px','200px')">
                            <div class="mt-2" id="image-preview2">
                                <image src="{{ asset($post->image) }}" alt="" height="200px" width="200px"
                                    onerror="this.src='{{ asset('demo_img.jpg') }}'; this.alt='Alternative Text';" />
                            </div>
                            <div class="invalid-feedback">
                                @error('image')
                                    {{ $message }}
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-4 mb-3">
                            <label for="">Height</label>
                            <input type="text" class="form-control form-control-sm" id="height" name="height" value="{{ $post->height ?? old('height') }}">
                        </div>

                        <div class="col-md-4 mb-3">
                            <label for="">Width</label>
                            <input type="text" class="form-control form-control-sm" id="width" name="width" value="{{ $post->width ?? old('width') }}">
                        </div>

                        <div class="form-group col-md-12">
                            <label for="post_content">Body</label>
                            <div class="pad">
                                <textarea xid="compose-textarea" class="form-control compose-textarea-summernote" name="body">{{ !empty($post) ? $post->body : old('body') }}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <button type="submit" class="btn btn-success px-5 mb-4 mx-auto">Submit</button>
            </div>
        </form>
    </span>
@endsection
