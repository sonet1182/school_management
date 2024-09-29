@extends('backend.layouts.master')

@section('title', 'Edit Post')

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
        <form action="{{ route('posts.update', $post->id) }}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf


            @if (!empty($post))
                <input type="hidden" name="id" value="{{ $post->id }}" />
            @endif

            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header card-info">
                            <h3 class="card-title panel-title float-left">
                                {{ !empty($post) ? 'Edit Post' : 'Add Post' }}
                            </h3>
                        </div>
                        <div class="card-body">


                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="title">Title</label>
                                    <input type="text" class="form-control form-control-sm" id="title" name="name"
                                        placeholder="Enter title" value="{{ !empty($post) ? $post->name : old('name') }}"
                                        required>
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
                                    <option value="1" {{ $post->type == 1 ? 'selected' : '' }}>Global</option>
                                    <option value="2" {{ $post->type == 2 ? 'selected' : '' }}>Private</option>
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
                                    <option value="{{ $group->id }}" {{ $post->group == $group->id ? 'selected' : '' }}>{{ $group->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header card-info">
                            <h3 class="card-title panel-title float-left">
                                Seo Settings
                            </h3>
                        </div>
                        <div class="card-body">

                            <div class="form-group">
                                <label for="meta_keyword">Meta Keyword</label>


                                <select name="meta_keyword[]" class="select2 form-control" multiple="multiple"
                                    data-placeholder="Select Offer type" style="width: 100%;">
                                    @if (!empty($post->meta_keyword))
                                        @foreach (json_decode($post->meta_keyword) as $option)
                                            <option value="{{ $option }}" selected>{{ $option }}</option>
                                        @endforeach
                                    @endif
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

                // if ($(".variant-row").length > 1) {
                //     $(this).closest(".variant-row").remove();
                // } else {
                //     alert("At least one variant is required.");
                // }
            });
        });
    </script>



@endsection
