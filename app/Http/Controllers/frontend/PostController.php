<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Group;
use App\Models\Product;
use DB;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function toggleLike(Request $request, $productId)
    {
        $product = Product::find($productId);

        if (!$product) {
            return response()->json(['error' => 'Product not found'], 404);
        }

        $userId = auth()->id();
        $likeList = $product->like_list ?? [];

        if (in_array($userId, $likeList)) {
            // If user already liked, remove the like
            $likeList = array_diff($likeList, [$userId]);
        } else {
            // If user hasn't liked, add their ID
            $likeList[] = $userId;
        }

        $product->like_list = array_values($likeList);
        $product->save();

        return response()->json([
            'like_count' => count($likeList),
            'liked' => in_array($userId, $likeList),
        ]);
    }


    public function store(Request $request)
    {
        $comment = Comment::create([
            'user_id' => auth()->id(),
            'post_id' => $request->product_id,
            'parent_id' => $request->parent_id,
            'comment' => $request->comment,
        ]);

        return response()->json(['success' => true, 'product_id' => $comment->post_id]);
    }

    public function load(Request $request)
    {
        $comments = Comment::where('post_id', $request->product_id)
            ->where('parent_id', 0)
            ->with('replies', 'user') // Load replies with user
            ->get();

        return response()->json(['comments' => $comments]);
    }

    // public function top_groups_by_posts()
    // {
    //     $members = Group::select('groups.id', 'groups.name', DB::raw('COUNT(products.id) as product_count'))
    //         ->join('products', 'products.group', '=', 'groups.id')
    //         ->groupBy('groups.id', 'groups.name')
    //         ->orderBy('product_count', 'desc')
    //         ->get();

    //     return response()->json($members);

    //     return view('frontend.pages.partials.top_groups_by_members', compact('groups'));
    // }

    public function top_groups_by_posts()
    {
        $groups = Group::select('groups.id', 'groups.name', 'groups.slug', 'groups.image', DB::raw('COUNT(products.id) as product_count'))
            ->join('products', 'products.group', '=', 'groups.id')
            ->groupBy('groups.id', 'groups.name', 'groups.slug', 'groups.image')
            ->orderBy('product_count', 'desc')
            ->limit(5)
            ->get();

        return view('frontend.pages.partials.top_groups_by_posts', compact('groups'));

        // return response()->json($members);
    }


    public function top_groups_by_members()
    {
        $groups = DB::table('groups')
            ->select('id', 'name', 'slug', 'image', 'members', DB::raw('JSON_LENGTH(members) as member_count')) // Calculate the length of the JSON array
            ->orderByDesc('member_count') // Order by member count in descending order
            ->limit(5) // Limit to top 5 groups
            ->get();

        return view('frontend.pages.partials.top_groups_by_members', compact('groups'));
    }

    public function special_group()
    {
        // Find the group with the most members
        $group = DB::table('groups')
            ->select('id', 'name', 'members', 'slug', DB::raw('JSON_LENGTH(members) as member_count'))
            ->orderByDesc('member_count')
            ->first();

        $memberIds = json_decode($group->members ?? '[]', true);

        rsort($memberIds);
        $topFiveMembers = array_slice($memberIds, 0, 5);

        // Fetch the user data for these top 5 members
        $top_users = DB::table('users')
            ->select('id', 'image')
            ->whereIn('id', $topFiveMembers)
            ->orderByDesc('id')
            ->get();

        return view('frontend.pages.partials.special_group', compact('group', 'top_users'));
    }

    public function top_leaders_by_posts()
    {
        // Fetch top 5 users with the 'leader' role and the most products
        $leaders = DB::table('products')
            ->join('users', 'products.created_by', '=', 'users.id')
            ->select('users.id', 'users.name', 'users.image', DB::raw('COUNT(products.id) as product_count'))
            ->whereIn('users.id', function ($query) {
                $query->select('model_id') // Assuming the 'model_id' refers to the user ID
                    ->from('model_has_roles') // Spatie's table for user-role mapping
                    ->where('role_id', function ($roleQuery) {
                        $roleQuery->select('id')
                            ->from('roles') // Spatie's roles table
                            ->where('name', 'leader'); // Role filter
                    });
            })
            ->groupBy('users.id', 'users.name', 'users.image') // Group by user ID, name, and image
            ->orderByDesc('product_count') // Order by product count in descending order
            ->limit(5) // Limit to top 5 users
            ->get();

        return view('frontend.pages.partials.top_leaders', compact('leaders'));
    }

}
