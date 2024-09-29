<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Group;
use App\Models\Media;
use App\Models\Notice;
use App\Models\Page;
use App\Models\Product;
use App\Models\User;
use Auth;
use DB;
use Illuminate\Http\Request;

class ProductController extends Controller
{



    public function showBySlug(Request $request, $slug)
    {
        $group = Group::where('slug', $slug)->first();

        $memberIds = json_decode($group->members ?? '[]', true);

        rsort($memberIds);
        $memberCount = count($memberIds);
        $topFiveMembers = array_slice($memberIds, 0, 5);

        // Fetch the user data for these top 5 members
        $top_users = DB::table('users')
            ->select('id', 'image')
            ->whereIn('id', $topFiveMembers)
            ->orderByDesc('id')
            ->get();



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
                ->where('group', $group->id)
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
                ->where('group', $group->id)
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
        return view('frontend.pages.homepage', compact('group', 'memberCount', 'top_users', 'products', 'tickers', 'pages', 'leaders', 'subleaders'));
    }

}
