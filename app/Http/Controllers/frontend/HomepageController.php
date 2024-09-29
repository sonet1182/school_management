<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Form;
use App\Models\Notice;
use App\Models\Page;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomepageController extends Controller
{

    public function old_home(Request $request)
    {
        // Fetch the common data
        $tickers = Notice::latest()->get();
        $pages = Page::select('name', 'slug')->get();
        $leaders = User::role('leader')->take(6)->get();
        $subleaders = User::role('subleader')->take(6)->get();

        // Check if the user is authenticated
        if (Auth::check()) {
            $user = Auth::user();

            // Decode the reg_group field to get the array of leader IDs
            $regGroupIds = json_decode($user->reg_group, true) ?? [];

            // Fetch products of type 1 and type 2, where type 2 is created by a leader in the user's reg_group array
            $products = Product::with('creator')
                ->withoutTrashed()
                ->where(function ($query) use ($regGroupIds, $user) {
                    $query->where('type', 1)
                        ->orWhere(function ($query) use ($regGroupIds) {
                            $query->where('type', 2)
                                ->whereIn('group', $regGroupIds);
                        });
                })
                ->latest()
                ->paginate(4);
        } else {
            // If the user is not authenticated, fetch only products of type 1
            $products = Product::with('creator')
                ->withoutTrashed()
                ->where('type', 1)
                ->latest()
                ->paginate(4);
        }

        // Handle AJAX request for infinite scrolling
        if ($request->ajax()) {
            $view = view('frontend.pages.partials.posts', compact('products'))->render();
            return response()->json(['html' => $view, 'next_page' => $products->nextPageUrl()]);
        }

        // Render the homepage view with the necessary data
        return view('frontend.pages.homepage', compact('products', 'tickers', 'pages', 'leaders', 'subleaders'));
    }


    public function home(Request $request)
    {
        // Fetch the common data
        $tickers = Notice::latest()->get();
        $pages = Page::select('name', 'slug')->get();
        $leaders = User::role('leader')->take(6)->get();
        $subleaders = User::role('subleader')->take(6)->get();

        // Check if the user is authenticated
        if (Auth::check()) {
            $user = Auth::user();

            // Decode the reg_group field to get the array of leader IDs
            $regGroupIds = json_decode($user->reg_group, true) ?? [];

            // Fetch products based on user's role
            if ($user->hasRole('Admin')) {
                // Admins can see all products
                $products = Product::with('creator')
                    ->withoutTrashed()
                    ->latest()
                    ->paginate(4);
            } elseif (Auth::user()->hasRole('Leader')) {
                // Leaders can see products of type 1 and those created by themselves (group creators)
                $products = Product::with('creator')
                    ->withoutTrashed()
                    ->where(function ($query) use ($user) {
                        $query->where('type', 1)
                            ->orWhere(function ($query) use ($user) {
                                $query->where('type', 2)
                                    ->where('created_by', $user->id);
                            });
                    })
                    ->latest()
                    ->paginate(4);
            } elseif (Auth::user()->hasRole('Subleader')) {
                $products = Product::with('creator')
                    ->withoutTrashed()
                    ->where(function ($query) use ($user) {
                        $query->where('type', 1)
                            ->orWhere(function ($query) use ($user) {
                                $query->where('type', 2)
                                    ->where(function ($subQuery) use ($user) {
                                        $subQuery->where('created_by', $user->id)
                                            ->orWhere('created_by', $user->leader_id);
                                    });
                            });
                    })
                    ->latest()
                    ->paginate(4);
            } else {

                // Other users see products of type 1 and those from their reg_group
                $products = Product::with('creator')
                    ->withoutTrashed()
                    ->where(function ($query) use ($regGroupIds) {
                        $query->where('type', 1)
                            ->orWhere(function ($query) use ($regGroupIds) {
                                $query->where('type', 2)
                                    ->whereIn('group', $regGroupIds);
                            });
                    })
                    ->latest()
                    ->paginate(4);
            }
        } else {
            // If the user is not authenticated, fetch only products of type 1
            $products = Product::with('creator')
                ->withoutTrashed()
                ->where('type', 1)
                ->latest()
                ->paginate(4);
        }

        // Handle AJAX request for infinite scrolling
        if ($request->ajax()) {
            $view = view('frontend.pages.partials.posts', compact('products'))->render();
            return response()->json(['html' => $view, 'next_page' => $products->nextPageUrl()]);
        }

        // Render the homepage view with the necessary data
        return view('frontend.pages.homepage', compact('products', 'tickers', 'pages', 'leaders', 'subleaders'));
    }




    public function leader_list()
    {
        $leaders = User::role('leader')->get();
        return view('frontend.pages.leaders', compact('leaders'));

    }


    public function index()
    {
        if (Auth::check()) {
            return redirect()->route('dashboard');
        } else {
            return view('auth.login');
        }
    }


    public function post_details($slug)
    {
        $tickers = Notice::latest()->get();
        $pages = Page::select('name', 'slug')->get();
        $data = Product::where('slug', $slug)->firstOrFail();
        $leaders = User::role('leader')->take(6)->get();
        $subleaders = User::role('subleader')->take(6)->get();
        return view('frontend.pages.post_details', compact('data', 'tickers', 'pages', 'leaders', 'subleaders'));
    }


    public function page_details($slug)
    {
        $page = Page::where('slug', $slug)->firstOrFail();
        return view('frontend.pages.page_details', compact('page'));
    }

    public function registration_form($id)
    {
        if (Auth::check()) {
            $form = Form::findOrFail($id);
            return view('frontend.pages.reg_form', compact('form'));
        } else {
            return redirect()->route('home')->with('show_login_modal', true);
        }
    }
}
