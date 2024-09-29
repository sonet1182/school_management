@extends('backend.layouts.master')

@section('title', 'Create New Role')

@section('content')

    <div class="card card-default">

        <div class="card-header">
            <div class="d-flex">
                <a class="btn btn-primary ml-auto" href="{{ route('roles.index') }}"> Back </a>
            </div>
        </div>


        <div class="card-body">


            @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <strong>Whoops!</strong> Something went wrong.<br><br>
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            {!! Form::open(['route' => 'roles.store', 'method' => 'POST']) !!}
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Name:</strong>
                        {!! Form::text('name', null, ['placeholder' => 'Name', 'class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Permission:</strong>
                        <br />

                        <div class="row">
                            @foreach ($permission as $group => $groupPermissions)
                            <div class="col-xs-12 col-sm-12 col-md-3">
                                <div class="form-group">
                                    <strong><u>{{ strtoupper($group) }}:</u></strong>
                                    <br />
                                    @foreach ($groupPermissions as $value)
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="permission[]"
                                                value="{{ $value->name }}">
                                            <label class="form-check-label">{{ $value->name }}</label>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
                        </div>

                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
            {!! Form::close() !!}

        </div>

    @endsection
