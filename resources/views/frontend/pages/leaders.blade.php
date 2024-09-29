@extends('frontend.layouts.master')

@section('content')
    <h4 class="text-center">Leader List</h4>

    <div class="card card-default">
        <div class="card-body">

            <div class="row">
                <div class="freinds_box col-lg-6 col-md-6">
                    @foreach ($leaders as $data)
                        <div><img src="{{ $data->image ? asset($data->image) : asset('images/demo_user.png') }}" alt>
                            <p>{{ $data->name }}</p>
                        </div>
                    @endforeach
                </div>
            </div>

        </div>
    </div>
@endsection
