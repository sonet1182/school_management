<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Package;
use App\Models\Product;
use App\Models\Receipt;
use App\Models\Leader;
use App\Models\User;
use Auth;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:admin-dashboard', ['only' => ['dashboard']]);
    }

    public function dashboard()
    {

        if (Auth::user()->hasRole('Admin')) {
            $post = Product::withoutTrashed()->count();
            $leaders = 10;
            $subleaders = 10;
            $users = 0;
        } else {
            $post = Product::withoutTrashed()->where('created_by', Auth::user()->id)->count();
            $subleaders = 0;
            $users = 0;
            $leaders = null;
        }

        return view('backend.pages.home', compact('post', 'leaders', 'subleaders', 'users'));
    }
}
