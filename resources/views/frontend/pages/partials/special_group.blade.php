<div class="profile_intro card shadow-lg">
    <div>
        <h6 class="text-center" style="font-weight: 600">{{ $group->name }}</h6>
    </div>
    <div class="d-flex mt-1 mb-2" style="gap: 3px">
        @foreach ($top_users as $user)
            <img src="{{ asset($user->image) }}" alt="Profile Image" class="border-radious-50">
        @endforeach
    </div>
    <div>
        <a href="{{ route('group', $group->slug) }}" class="btn text-white w-100 shadow-lg"
            style="background: linear-gradient(to right, #ffc107, #876707);
  border: none;
  transition: all 0.5s ease-in-out;">Join
            Now</a>


    </div>
</div>
