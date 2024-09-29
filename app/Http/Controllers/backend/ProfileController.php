<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\User;
use Auth;
use Hash;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    // function __construct()
    // {
    //      $this->middleware('permission:banner-list|banner-create|banner-edit|banner-delete', ['only' => ['index','store']]);
    //      $this->middleware('permission:banner-create', ['only' => ['create','store']]);
    //      $this->middleware('permission:banner-edit', ['only' => ['edit','update']]);
    //      $this->middleware('permission:banner-delete', ['only' => ['destroy']]);
    // }


    public function index()
    {
        $data = User::findOrFail(Auth::user()->id);
        return view('backend.profile.index', compact('data'));
    }

    public function update_image(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'string|max:255',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $user = User::findOrFail(Auth::user()->id);

        if ($request->hasFile('image')) {
            $validatedData['image'] = $this->UploadImage($request, 'image', 'images/profile/', '400', '400', $user->image);
        }

        $user->update($validatedData);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Info has been updated',
        ];

        if ($request->ajax()) {
            return response()->json(['success' => true, 'user' => $user]);
        } else {
            return back()->with($notification);
        }
    }

    public function update_password(Request $request)
    {
        // Validate the form data
        $request->validate([
            'old_password' => 'required',
            'password' => 'required|min:6|confirmed',
        ]);

        // Check if the old password matches the current password
        if (!Hash::check($request->old_password, Auth::user()->password)) {
            $notification = [
                'alert-type' => 'error',
                'message' => 'The provided password does not match your current password.',
            ];
    
            return back()->with($notification);
        }

        // Update the password
        Auth::user()->update([
            'password' => Hash::make($request->password),
        ]);

        // Optionally, log the user out after the password change
        Auth::logout();


        $notification = [
            'alert-type' => 'success',
            'message' => 'Password updated successfully. Please log in with your new password.',
        ];

        return redirect()->route('home')->with($notification);
    }

}
