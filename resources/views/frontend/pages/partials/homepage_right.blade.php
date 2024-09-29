<div class="right_sidebar" id="homepage-right">
    <div class="profile_intro card shadow-lg">
        <div class="sider_bar_title mb-0">
            <h4 class="mb-0">Activity</h4>
            <span class="pc-hide close-sidebar custom-close-btn"> <i class="fa fa-close"></i> Close</span>
        </div>
    </div>

    

    <div id="special_group"></div>
    <div id="top_group_by_members"></div>
    <div id="top_group_by_posts"></div>


    <div class="profile_intro card shadow-lg">
        <div class="sider_bar_title mb-1">
            <h4>Advertisement</h4>
        </div>
        <img src="/asset/frontend/images/advertisement.png" alt="Advertisement" class="advirsment_side_bar">
    </div>

    <div id="top_leaders_by_posts"></div>

    <div class="profile_intro">
        <div class="title_box">
            <h3>Leaders</h3>
            <a href="{{ route('user.leader_list') }}">All Leaders</a>
        </div>

        <div class="freinds_box">
            @foreach ($leaders as $data)
                <div><img src="{{ $data->image ? asset($data->image) : asset('images/demo_user.png') }}" alt>
                    <p>{{ $data->name }}</p>
                </div>
            @endforeach
        </div>
    </div>

    <div class="profile_intro card shadow-lg">

        <h4>Important Links</h4>
        <hr class="my-0">

        <ul class="mb-0" style="padding-left: 0px!important">
            @foreach ($pages as $page)
                <li> <a style="text-decoration: none; color: #466189"
                        href="{{ route('page.details', $page->slug) }}">{{ $page->name }} </a></li>
            @endforeach
        </ul>

    </div>
</div>


@push('js')
    <script>
        $(document).ready(function() {
            $.ajax({
                url: '/top_groups_by_members',
                type: 'GET',
                success: function(data) {
                    $("#top_group_by_members").empty();
                    $("#top_group_by_members").append(data);

                },
                error: function(xhr, status, error) {
                    console.error('Error loading group members:', xhr.responseText);
                }
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $.ajax({
                url: '/top_groups_by_posts',
                type: 'GET',
                success: function(data) {
                    $("#top_group_by_posts").empty();
                    $("#top_group_by_posts").append(data);
                },
                error: function(xhr, status, error) {
                    console.error('Error loading group members:', xhr.responseText);
                }
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $.ajax({
                url: '/special_group',
                type: 'GET',
                success: function(data) {
                    $("#special_group").empty();
                    $("#special_group").append(data);
                },
                error: function(xhr, status, error) {
                    console.error('Error loading group members:', xhr.responseText);
                }
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $.ajax({
                url: '/top_leaders_by_posts',
                type: 'GET',
                success: function(data) {
                    $("#top_leaders_by_posts").empty();
                    $("#top_leaders_by_posts").append(data);
                },
                error: function(xhr, status, error) {
                    console.error('Error loading group members:', xhr.responseText);
                }
            });
        });
    </script>
@endpush
