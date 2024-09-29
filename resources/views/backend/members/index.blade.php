@extends('backend.layouts.master')

@section('title', 'Member')
@section('breadcrumb', 'Member List')

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

    </div>
@endsection


@section('scripts')
    <script type="text/javascript">
        var groupId = "{{ $group_id }}";

        table = $('.yajra-datatable').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "{{ route('members.list', ':groupId') }}".replace(':groupId', groupId),
                type: 'GET',
                beforeSend: function(xhr) {
                    xhr.setRequestHeader('X-CSRF-TOKEN', $('meta[name="csrf-token"]').attr('content'));
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

            if (confirm('Are you sure you want to Remove?')) {
                $.ajax({
                    url: '/admin/members/remove/' + groupId + '/' + rowId,
                    type: 'POST',
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
