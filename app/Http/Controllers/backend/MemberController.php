<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Form;
use App\Models\Group;
use App\Models\Submission;
use App\Models\User;
use Hash;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Yajra\DataTables\Facades\DataTables;

class MemberController extends Controller
{
    public function index($id)
    {
        $group_id = $id;
        return view('backend.members.index', compact('group_id'));
    }

    public function list(Request $request, $group_id)
    {
        if ($request->ajax()) {
            $group_id = (int) $group_id;
            $data = User::whereJsonContains('reg_group', $group_id)->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('imageview', function ($row) {
                    if (!empty($row->image)) {
                        $imageUrl = $row->image;
                    } else {
                        $imageUrl = asset('/demo_img.jpg');
                    }
                    return '<a href="/' . $imageUrl . '" data-lightbox="product-gallery" data-title="">
                        <img src="/' . $imageUrl . '" alt="Product Image" class="img-thumbnail" width="50" height="50">
                    </a>';
                })
                ->addColumn('action', function ($row) {
                    $actionBtn = '';
                    $actionBtn .= '<button class="delete-btn btn btn-danger btn-xs" data-row-id="' . $row->id . '">Remove</button>';

                    return $actionBtn;
                })
                ->rawColumns(['imageview', 'action'])
                ->make(true);
        }
    }


    public function add_member($id){
        $submissions = Submission::findOrFail($id);
        $form = Form::findOrFail($submissions->form_id);
        $group_id = $form->group;
        $submissions->group_id = $group_id;
        $submissions->save();

        $group = Group::findOrFail($group_id);

        $user = User::findOrFail($submissions->user_id);
        $existingGroups = json_decode($user->reg_group, true) ?? [];
        $existingLeaders = json_decode($user->reg_leader, true) ?? [];
        $existingMembers = json_decode($group->members, true) ?? [];

        if (!in_array($group_id, $existingGroups)) {
            $existingGroups[] = $group_id;
        }
        if (!in_array($form->user_id, $existingLeaders)) {
            $existingLeaders[] = $form->user_id;
        }
        if (!in_array($form->user_id, $existingMembers)) {
            $existingMembers[] = $submissions->user_id;
        }

        $user->update([
            'reg_group' => json_encode($existingGroups),
            'reg_leader' => json_encode($existingLeaders),
        ]);

        $group->update ([
            'members' => json_encode($existingMembers),
        ]);

        $notification = [
            'alert-type' => 'success',
            'message' => 'Member has been added to the group!',
        ];
        return back()->with($notification);
    }


    public function remove($group_id, $id)
    {
        $user = User::find($id);
        if (!$user) {
            return response()->json(['success' => false, 'message' => 'Record not found'], 404);
        }

        $group = Group::find($group_id);

        $regGroup = json_decode($user->reg_group, true);

        if (($key = array_search($group_id, $regGroup)) !== false) {
            unset($regGroup[$key]);
        }

        $regLeader = json_decode($user->reg_leader, true);

        if (($key = array_search($group->creator_id, $regLeader)) !== false) {
            unset($regLeader[$key]);
        }

        $regMember = json_decode($group->members, true);

        if (($key = array_search($user->id, $regMember)) !== false) {
            unset($regMember[$key]);
        }

        $user->reg_group = json_encode(array_values($regGroup));
        $user->reg_leader = json_encode(array_values($regLeader));
        $user->save();

        $group->members = json_encode(array_values($regMember));
        $group->save();

        return response()->json(['success' => true, 'message' => 'Member removed from group successfully']);
    }

}
