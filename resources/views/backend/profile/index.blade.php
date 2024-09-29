@extends('backend.layouts.master')

@section('title', 'Profile Management')

@section('content')

    <div class="card card-default">
        <div class="card-body">
            <form id="bannerForm" class="needs-validation" action="{{ route('profile.update_image') }}" method="POST"
                novalidate enctype="multipart/form-data">
                @csrf

                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="title">Name</label>
                        <input type="text" class="form-control form-control-sm" id="title" name="name"
                            placeholder="Enter title" value="{{ $data->name }}" required>
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="title">Email</label>
                        <input type="email" class="form-control form-control-sm" id="email" name="email"
                            placeholder="Enter Email" value="{{ $data->email }}" readonly>
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="title">Phone Number</label>
                        <input type="phone" class="form-control form-control-sm" id="phone" name="phone"
                            placeholder="Enter Phone Number" value="{{ $data->phone }}" readonly>
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="validationCustom01">Image</label>

                        <input class="form-control" name="image" type="file"
                            onchange="previewImage(this, 'image-preview2','200px','200px')">
                        <div class="mt-2" id="image-preview2">
                            <image src="{{ asset($data->image) }}" alt="" height="200px" width="200px"
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
        </div>
    </div>

    <div class="card card-default mt-3">
        <div class="card-body">
            <h5>Update Password</h5>
            <form id="passwordUpdateForm" class="needs-validation" action="{{ route('profile.update_password') }}"
                method="POST" novalidate>
                @csrf

                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="old_password">Old Password</label>
                        <input type="password" class="form-control form-control-sm" id="old_password" name="old_password"
                            placeholder="Enter old password" required>
                    </div>
                    <div class="col-md-6 mb-3"></div>

                    <div class="col-md-6 mb-3">
                        <label for="new_password">New Password</label>
                        <input type="password" class="form-control form-control-sm" id="password" name="password"
                            placeholder="Enter new password" required>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="confirm_password">Confirm New Password</label>
                        <input type="password" class="form-control form-control-sm" id="password_confirmation"
                            name="password_confirmation" placeholder="Confirm new password" required>
                    </div>
                </div>

                <button class="btn btn-primary" type="submit">Submit</button>
            </form>
        </div>
    </div>

@endsection
