@extends('backend.layouts.master')

@section('title', 'Add New Group')

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
        <form action="{{ route('groups.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            @if (!empty($post))
                <input type="hidden" name="id" value="{{ $post->id }}" />
            @endif

            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header card-info  {{ !empty($post) ? 'alert-primary' : '' }}">
                            <h3 class="card-title panel-title float-left">
                                {{ !empty($post) ? 'Edit Group' : 'Add Group' }}
                            </h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="title">Name</label>
                                    <input type="text" class="form-control form-control-sm" id="title" name="name"
                                        placeholder="Enter Name" value="{{ !empty($post) ? $post->name : old('name') }}"
                                        required>
                                </div>

                                <div class="form-group col-md-12">
                                    <label for="post_content">Description</label>
                                    <div class="pad">
                                        <textarea xid="compose-textarea" class="form-control compose-textarea-summernote" name="details">{{ !empty($post) ? $post->details : old('detail') }}</textarea>
                                    </div>
                                </div>

                                <div class="col-md-12 mb-3">
                                    <label for="validationCustom01">Image</label>

                                    <input class="form-control" name="image" type="file"
                                        onchange="previewImage(this, 'image-preview','200px','200px')">
                                    <div class="mt-2" id="image-preview"></div>
                                    <div class="invalid-feedback">
                                        @error('image')
                                            {{ $message }}
                                        @enderror
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
                                Select Category
                            </h3>
                        </div>

                        <div class="card-body">
                            <ul class="list-group">
                                @foreach ($categories as $category)
                                    <li class="list-group-item">
                                        <h5>
                                            <input type="radio" name="category" value="{{ $category->id }}" />
                                            {{ $category->title }}
                                        </h5>
                                        @if (count($category->subCategories))
                                            <ul class="list-group mt-2">
                                                @include('categories.subCategories_select', [
                                                    'subCategories' => $category->subCategories,
                                                ])
                                            </ul>
                                        @endif
                                    </li>
                                @endforeach
                            </ul>
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

@section('scripts')
    <script>
        $(document).ready(function() {
            $('.select2').select2({
                tags: true
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            // Add variant
            $("#add-variant").on("click", function() {
                var clonedRow = $(".variant-row:first").clone();
                clonedRow.find("input").val(""); // Clear input values
                $("#variant-section").append(clonedRow);
            });

            // Remove variant
            $(document).on("click", ".remove-variant", function() {
                $(this).closest(".variant-row").remove();
            });
        });
    </script>
@endsection
