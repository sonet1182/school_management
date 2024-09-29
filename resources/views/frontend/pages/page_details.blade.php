@extends('frontend.layouts.master')

@section('content')
    <div class="container2">
        <h3>{{ $page->name }}</h3>

        <div>
            {!! $page->body !!}
        </div>
    </div>
@endsection
