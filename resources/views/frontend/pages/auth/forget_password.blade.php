@extends('frontend.layouts.master')

@section('content')
<div class="">
    <h2>Forgot Password</h2>

    <!-- Form to request OTP -->
    <form class="login" action="{{ route('forgot.password.sendOtp') }}" method="POST" class="login">
        @csrf
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" name="email" class="form-control" required>
            @if ($errors->has('email'))
                <span class="text-danger">{{ $errors->first('email') }}</span>
            @endif
        </div>
        <input type="submit" value="Send OTP">
    </form>

</div>
@endsection
