@foreach ($products as $data)
    <div class="post_container card shadow-lg">
        <div class="post_row">
            <div class="user_profile">

                @if ($data->creator)
                    <img src="{{ $data->creator->image ? asset($data->creator->image) : asset('asset/frontend/images/profile-pic.png') }}"
                        alt="Profile Image">
                @else
                    <img src="{{ asset('asset/frontend/images/profile-pic.png') }}" alt="Profile Image">
                @endif

                <div>
                    <p class="text-bold" style="font-weight: 600">{{ $data->creator ? $data->creator->name : '' }}</p>
                    <span>{{ $data->created_at->format('h:i A | d M, Y') }}</span>
                </div>
            </div>
            <a>
                {{-- <i class="fa fa-ellipsis-v"></i> --}}
                @if ($data->type == 1)
                    <span class="badge badge-success badge-xs">Public</span>
                @endif
                @if ($data->type == 2)
                    <span class="badge badge-danger badge-xs">Private</span>
                @endif
            </a>

        </div>

        <div class="mt-2">
            <h6 class="post-title" style="font-weight: 600">{{ $data->name }}</h6>
        </div>

        <!-- Initially collapsed details -->
        <div class="post-details collapsed mt-1">
            {!! $data->detail !!}
        </div>

        <!-- "View More / View Less" link -->
        <a href="javascript:void(0);" class="view-more-link">View More...</a>

        <div class="mt-2">
            <div class="action-buttons">
                <a href="javascript:void(0);" class="like-button" data-product-id="{{ $data->id }}">
                    <i class="fas fa-thumbs-up"></i> Like ( <span
                        class="like-count">{{ count($data->like_list ?? []) }}</span> )
                </a>

                <a href="javascript:void(0);" class="comment-button" data-product-id="{{ $data->id }}">
                    <i class="fas fa-comment"></i> Comment
                </a>
                <a href="javascript:void(0);" class="share-button" data-bs-toggle="modal" data-bs-target="#shareModal"
                    data-product-id="{{ $data->slug }}">
                    <i class="fas fa-share"></i> Share
                </a>
            </div>

        </div>
    </div>
@endforeach
