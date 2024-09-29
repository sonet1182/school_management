<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Mail\OtpMail;
use App\Models\EmailVerification;
use App\Models\User;
use Auth;
use Hash;
use Illuminate\Http\Request;
use Mail;
use Validator;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required|min:4'
        ]);

        if ($validator->fails()) {
            $notification = [
                'alert-type' => 'error',
                'message' => $validator->errors(),
            ];

            return back()->with($notification);
        } else {
            $user = User::where([['email', $request->email]])->orWhere([['phone', $request->email]])->first();
            if (!$user || !Hash::check($request->password, $user->password)) {
                $notification = [
                    'alert-type' => 'error',
                    'message' => "Invalid Credentials!",
                ];

                return back()->with($notification);
            } else {
                // Log the user in and create a session
                Auth::login($user);

                // Optional: Create a token if you need it for API authentication
                $token = $user->createToken($user->email . '_Token')->plainTextToken;

                $notification = [
                    'alert-type' => 'success',
                    'message' => "Logged in Successfully!",
                ];

                return back()->with($notification);
            }
        }
    }

    public function register(Request $request)
    {

        // return session('otp') . '+' . $request->input('otp');

        try {
            // Validate the incoming request data
            $this->validate($request, [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:users',
                'phone' => 'required|string|unique:users',
                'password' => 'required|string|min:6|confirmed',
                'otp' => 'required|string',
            ]);

            // Verify OTP
            if ($request->input('otp') != session('otp')) {
                return redirect()->back()->withErrors(['otp' => 'Invalid OTP.'])->withInput()->with('show_register_modal', true);
            }

            // Create a new user instance after a valid registration
            $user = User::create([
                'name' => $request->input('name'),
                'email' => $request->input('email'),
                'phone' => $request->input('phone'),
                'password' => Hash::make($request->input('password')),
            ]);

            $user->assignRole(['user']);
            $token = $user->createToken($user->email . '_Token')->plainTextToken;

            // Log the user in automatically
            Auth::login($user);

            // Redirect the user to a desired location, e.g., the home page
            $notification = [
                'alert-type' => 'success',
                'message' => "Registration Successful!",
            ];

            // Redirect the user to a desired location, e.g., the home page
            return redirect()->back()->with($notification);
        } catch (\Illuminate\Validation\ValidationException $e) {
            // If validation fails, set the session variable to show the modal
            return redirect()->back()->withErrors($e->errors())->withInput()->with('show_register_modal', true);
        }
    }


    public function sendOtp(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email|max:255|unique:users',
        ]);

        $otp = rand(1000, 9999); // Generate a 6-digit OTP

        // Save the OTP in the session or database
        session(['otp' => $otp, 'email' => $request->input('email')]);

        // Send the OTP via email
        Mail::to($request->input('email'))->send(new OtpMail($otp));

        return response()->json(['status' => 'success']);
    }


    // Forget Password Recover
    public function showForgotPasswordForm()
    {
        return view('frontend.pages.auth.forget_password');
    }

    public function sendOtp2(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email|max:255|exists:users',
        ]);

        $email = $request->input('email'); // Store the email in a variable
        $otp = rand(1000, 9999); // Generate a 4-digit OTP

        // Save the OTP in the session
        session(['otp' => $otp, 'email' => $email]);

        try {
            // Attempt to send the OTP via email
            Mail::to($email)->send(new OtpMail($otp));

            // If successful, return the view with a success status
            return view('frontend.pages.auth.reset_password', compact('email'))
                ->with('status', 'OTP has been sent to your email!');
        } catch (\Exception $e) {
            session()->forget(['otp', 'email']);

            $notification = [
                'alert-type' => 'error',
                'message' => "Failed to send OTP. Please try again.",
            ];

            // Redirect the user to a desired location, e.g., the home page
            return redirect()->back()->with($notification);
        }
    }


    public function resetPasswordForm()
    {
        return view('frontend.pages.auth.reset_password');
    }


    public function resetPassword(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email|max:255|exists:users',
            'otp' => 'required|string',
            'password' => 'required|string|min:6|confirmed',
        ]);

        // Verify OTP
        if ($request->input('otp') != session('otp') || $request->input('email') != session('email')) {
            return redirect()->back()->withErrors(['otp' => 'Invalid OTP or email.']);
        }

        // Reset password
        $user = User::where('email', $request->input('email'))->first();
        $user->password = Hash::make($request->input('password'));
        $user->save();

        // Clear the session
        session()->forget(['otp', 'email']);

        return redirect()->route('home')->with('message', 'Password has been reset successfully.');
    }



    public function settings()
    {
        if (Auth::user()) {
            $data = User::findOrFail(Auth::user()->id);
            return view('frontend.pages.settings', compact('data'));
        } else {
            return redirect()->back()->with('show_login_modal', true);
        }
    }

}
