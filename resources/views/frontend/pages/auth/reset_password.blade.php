@extends('frontend.layouts.master')

@section('content')
    <div class="">
        <h2 class="text-center">Reset Password</h2>

        <div class="col-md-6 mx-auto">
            <div class="card card-default">
                <div class="card-body">

                    <h6 class="text-center">OTP has been send to your mail : </h6>
                    <h4 class="text-center">{{ $email }}</h4>


                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul class="mb-0">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    <!-- The rest of your reset password form goes here -->



                    <!-- Form to reset password -->
                    <form action="{{ route('forgot.password.reset') }}" method="POST" class="login">

                        <input type="hidden" name="email" value="{{ $email }}" />

                        @csrf
                        <div class="form-group">
                            <label for="otp">OTP</label>
                            <input type="text" name="otp" class="form-control" required>
                            @if ($errors->has('otp'))
                                <span class="text-danger">{{ $errors->first('otp') }}</span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="password">New Password</label>
                            <input type="password" name="password" class="form-control" required>
                            @if ($errors->has('password'))
                                <span class="text-danger">{{ $errors->first('password') }}</span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="password_confirmation">Confirm Password</label>
                            <input type="password" name="password_confirmation" class="form-control" required>
                        </div>

                        <input type="submit" value="Reset Password">
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
