@extends('backend.layouts.master')

@section('title', 'Leader')
@section('breadcrumb', 'Leader List')

@section('content')

    <div class="card card-default">


        @if ($errors->any())
            <div class="alert alert-danger mb-2">
                <ul class="mb-0">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif



        <div class="card-header">
            <div class="d-flex">
                <div class="ml-auto">
                    <button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#exampleModal"> <i
                            class="fa fa-plus" aria-hidden="true"></i> Create New Leader </button>

                </div>
            </div>



            <!-- Create Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Create New Leader</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="bannerForm" class="needs-validation" action="{{ route('leaders.store') }}"
                                method="POST" novalidate enctype="multipart/form-data">
                                @csrf

                                <div class="form-row">
                                    <div class="col-md-12 mb-3">
                                        <label for="title">Name</label>
                                        <input type="text" class="form-control form-control-sm" id="title"
                                            name="name" placeholder="Enter title" value="{{ old('name') }}" required>
                                    </div>

                                    <div class="col-md-12 mb-3">
                                        <label for="title">Email</label>
                                        <input type="email" class="form-control form-control-sm" id="email"
                                            name="email" placeholder="Enter Email" value="{{ old('email') }}">
                                    </div>

                                    <div class="col-md-12 mb-3">
                                        <label for="title">Phone Number</label>
                                        <input type="phone" class="form-control form-control-sm" id="phone"
                                            name="phone" placeholder="Enter Phone Number" value="{{ old('phone') }}">
                                    </div>

                                    <div class="col-md-12 mb-3">
                                        <label for="title">Password</label>
                                        <input type="password" class="form-control form-control-sm" id="password"
                                            name="password" placeholder="Enter password" value="{{ old('password') }}">
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

                                <button class="btn btn-primary" type="submit">Submit</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="card-body">
            <table class="table table-bordered yajra-datatable">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>


        <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Update Leader</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="teacher_box"></div>
                    </div>

                </div>
            </div>
        </div>


    </div>
@endsection


@section('scripts')
    <script type="text/javascript">
        var table;

        $(document).ready(function() {
            // Initialize the DataTable
            table = $('.yajra-datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('leaders.list') }}",
                    type: 'GET',
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader('X-CSRF-TOKEN', $('meta[name="csrf-token"]').attr(
                            'content'));
                    },
                },
                columns: [{
                        data: 'id',
                        name: 'id'
                    },
                    {
                        data: 'imageview',
                        name: 'imageview'
                    },
                    {
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'email',
                        name: 'email'
                    },
                    {
                        data: 'phone',
                        name: 'phone'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: true,
                        searchable: true
                    },
                ]
            });

            // Handle delete button click event
            $('.yajra-datatable').on('click', '.delete-btn', function() {
                var rowId = $(this).data('row-id');

                if (confirm('Are you sure you want to delete this record?')) {
                    $.ajax({
                        url: '/admin/leaders/' + rowId,
                        type: 'DELETE',
                        data: {
                            '_token': '{{ csrf_token() }}',
                        },
                        success: function(response) {
                            if (response.success) {
                                toastr.success(response.message);
                            } else {
                                toastr.error(response.message);
                            }
                            table.ajax.reload();
                        },
                        error: function(xhr, status, error) {
                            console.error(xhr.responseText);
                            alert('Error deleting record');
                        }
                    });
                }
            });

            // Attach form submission handler outside of modal events to avoid multiple bindings
            $('#bannerForm').on('submit', function(e) {
                e.preventDefault();

                $.ajax({
                    url: $(this).attr('action'),
                    type: 'POST',
                    data: new FormData(this),
                    contentType: false,
                    cache: false,
                    processData: false,
                    success: function(data) {
                        if (data.success) {
                            $('#bannerForm')[0].reset();
                            $('#exampleModal').modal('hide');
                            $('#image-preview').empty();

                            toastr.success("Banner has been added");
                            table.ajax.reload();
                        } else {
                            alert('Error submitting form');
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                        var errorResponse = JSON.parse(xhr.responseText);
                        toastr.error(errorResponse.message);
                    }
                });
            });

            // Event listener for modal show to load form data for edit
            $('#exampleModal1').on('shown.bs.modal', function() {
                // Update data by ajax form submit
                $('#updateForm').submit(function(e) {
                    e.preventDefault();

                    $.ajax({
                        url: $(this).attr('action'),
                        type: 'POST',
                        data: new FormData(this),
                        contentType: false,
                        cache: false,
                        processData: false,
                        success: function(data) {
                            if (data.success) {
                                $('#updateForm')[0].reset();
                                $('#exampleModal1').modal('hide');

                                toastr.success("Banner has been Updated");
                                table.ajax.reload();
                            } else {
                                alert('Error submitting form');
                            }
                        },
                        error: function(xhr, status, error) {
                            console.error(xhr.responseText);
                            var errorResponse = JSON.parse(xhr.responseText);
                            toastr.error(errorResponse.message);
                        }
                    });
                });
            });
        });
    </script>


    <script>
        $(document).on('click', '.edit-btn', function(event) {
            event.preventDefault();

            $('#exampleModal1').modal('show');

            var leader_id = $(this).data('row-id');

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="token"]').attr('value')
                }
            });

            $.ajax({
                url: "{{ route('leaders.edit', ['leader' => ':leader_id']) }}".replace(':leader_id',
                    leader_id),
                type: 'GET',
                success: function(res) {
                    $("#teacher_box").empty();
                    $("#teacher_box").append(res);
                },
                error: function(data) {
                    console.error(data.responseText);
                }
            });
        });
    </script>
@endsection
