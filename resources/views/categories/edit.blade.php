<form id="updateForm" class="needs-validation" action="{{ route('categories.update', $post->id) }}" method="POST"
    novalidate enctype="multipart/form-data">
    @csrf
    @method('PUT')


    <div class="form-row">
        <div class="col-md-12 mb-3">
            <label for="title">Category Name</label>
            <input type="text" class="form-control form-control-sm" id="title" name="title"
                placeholder="Enter title" value="{{ !empty($post) ? $post->title : old('title') }}" required>
        </div>

        <div class="col-md-12 mb-3">
            <label for="title">URL</label>
            <input type="text" class="form-control form-control-sm" id="url" name="url"
                placeholder="Enter url" value="{{ !empty($post) ? $post->url : old('url') }}" required>
        </div>
    </div>

    <button class="btn btn-primary" type="submit">Submit</button>
</form>
