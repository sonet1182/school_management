<form id="updateForm" class="needs-validation" action="{{ route('subleaders.update', $post->id) }}" method="POST" novalidate
    enctype="multipart/form-data">
    @csrf
    @method('PUT')


    <div class="form-row">

        <div class="col-md-12 mb-3">
            <label for="title">Title</label>
            <input type="text" class="form-control form-control-sm" id="title" name="name"
                placeholder="Enter title" value="{{ !empty($post) ? $post->name : old('name') }}" required>
        </div>

        <div class="col-md-12 mb-3">
            <label for="title">Email</label>
            <input type="email" class="form-control form-control-sm" id="title" name="email"
                placeholder="Enter email" value="{{ !empty($post) ? $post->email : old('email') }}">
        </div>

        <div class="col-md-12 mb-3">
            <label for="title">Phone</label>
            <input type="phone" class="form-control form-control-sm" id="title" name="phone"
                placeholder="Enter phone" value="{{ !empty($post) ? $post->phone : old('phone') }}">
        </div>

        <div class="col-md-12 mb-3">
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
    </div>

    <button class="btn btn-primary" type="submit">Submit</button>

</form>



