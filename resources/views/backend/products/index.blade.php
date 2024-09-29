@extends('backend.layouts.master')

@section('title', 'Posts')
@section('breadcrumb', 'Post List')

@section('content')



    <div class="card card-default">


        <div class="card-header">
            <div class="d-flex">
                <div class="ml-auto">

                    <a class="btn btn-sm btn-success" href="{{ route('posts.create') }}"> <i class="fa fa-plus"
                            aria-hidden="true"></i> Create New Post </a>

                </div>
            </div>
        </div>


        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered yajra-datatable">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Title</th>
                            <th>Group Name</th>
                            <th>Type</th>
                            <th>Posted By</th>
                            <th>Posted Time</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>



    </div>
@endsection


@section('scripts')
    <script type="text/javascript">
        $(function() {

            var table = $('.yajra-datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('products.list') }}",
                    type: 'GET',
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader('X-CSRF-TOKEN', $('meta[name="csrf-token"]').attr(
                            'content'));
                    },
                },
                order: [
                    [0, 'desc']
                ],
                columns: [{
                        data: 'id',
                        name: 'id'
                    },
                    {
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'group_id',
                        name: 'group_id'
                    },
                    {
                        data: 'post_type',
                        name: 'post_type'
                    },
                    {
                        data: 'creator',
                        name: 'creator'
                    },
                    {
                        data: 'created_at',
                        name: 'created_at'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: true,
                        searchable: true
                    },
                ]
            });

        });
    </script>


@endsection
