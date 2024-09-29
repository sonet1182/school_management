@extends('backend.layouts.master')

@section('content')
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <div class="small-box bg-info">
                <div class="inner">
                    <h3>{{ $post }}</h3>
                    <p>Total Posts</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="{{ route('posts.index') }}" class="small-box-footer">Go to <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>

  


        @if ($users)
            <div class="col-lg-3 col-md-6">
                <div class="small-box bg-primary">
                    <div class="inner">
                        <h3>{{ $users }}</h3>
                        <p>Total Members</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person-add"></i>
                    </div>
                    <a href="{{ route('users.index') }}" class="small-box-footer">Go to <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
        @endif

    </div>
@endsection
