<div class="group-list card shadow-lg p-2 profile_intro">
    <h6>Top Group <span class="float-end">Posts</span></h6>

    @foreach ($groups as $data)
        <div class="member">
            <img src="{{ $data->image }}" alt="Profile Image">
            <span class="name"><a href="{{ route('group', $data->slug) }}">{{ $data->name }}</a></span>
            <span class="points">{{ $data->product_count ?? '0' }}</span>
        </div>
    @endforeach

</div>
</div>
