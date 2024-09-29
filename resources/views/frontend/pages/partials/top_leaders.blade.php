<div class="profile_intro card shadow-lg">
    <div class="sider_bar_title">
        <h4>Leader Board</h4>
        <a {{ route('user.leader_list') }}>View All</a>
    </div>
    @foreach ($leaders as $leader)
        <div class="online_list">
            <div class="online_icon">
                <img src="{{ asset($leader->image) }}" alt>
            </div>
            <h6 class="mb-0" style="font-weight: 600">{{ $leader->name }}</h6>
        </div>
    @endforeach
</div>
