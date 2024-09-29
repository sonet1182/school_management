@extends('backend.layouts.master')

@section('title', 'Groups')
@section('breadcrumb', 'Group List')

@section('content')



    <div class="card card-default">


        <div class="card-header">
            <div class="d-flex">
                <div class="ml-auto">

                    <a class="btn btn-sm btn-success" href="{{ route('groups.create') }}"> <i class="fa fa-plus"
                            aria-hidden="true"></i> Create New Group </a>

                </div>
            </div>
        </div>


        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered yajra-datatable">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Created By</th>
                            <th>Members</th>
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
                    url: "{{ route('groups.list') }}",
                    type: 'GET',
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader('X-CSRF-TOKEN', $('meta[name="csrf-token"]').attr(
                            'content'));
                    },
                },
                order: [
                    [0, 'desc']
                ],
                columns: [
                    {
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
                        data: 'category_id',
                        name: 'category_id'
                    },
                    {
                        data: 'creator',
                        name: 'creator'
                    },
                    {
                        data: 'view_member',
                        name: 'view_member'
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
