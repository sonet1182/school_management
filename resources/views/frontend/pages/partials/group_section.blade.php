@if (isset($group))
    <div class="profile_detail">
        <div class="proflie_detail_left">
            <div class="profile_row">
                <img src="{{ $group->image }}" alt="Profile" class="pd_image">
                <div>
                    <h3>{{ $group->name }}</h3>
                    <h6><i class="fa fa-user" aria-hidden="true"></i> Leader Name: {{ $group->creator->name ?? '' }}</h6>
                    <p>{{ $memberCount ?? 0 }} Members</p>

                    @if ($top_users)
                        @foreach ($top_users as $user)
                            <img src="{{ asset($user->image) }}" class="mt-0" alt>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
        <div class="proflie_detail_right">
            <h6>Category: {{ $group->category_id->title ?? '' }}</h6>
            <h6><i class="fa fa-calendar" aria-hidden="true"></i>: {{ $group->created_at->format('d M, Y') }}</h6>

            {{-- <button type="button"><img src="/asset/frontend/images/add-friends.png" alt>Freinds</button>
                        <button type="button"><img src="/asset/frontend/images/message.png" alt>Message</button>
                        <br /> --}}
            <a href="#"><img src="/asset/frontend/images/more.png" alt></a>
        </div>
    </div>
@endif
