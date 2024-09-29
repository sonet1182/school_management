@extends('frontend.layouts.master')

@php
    $firstImage = null;

    // Check if details contain any image
    if (!empty($data->detail)) {
        // Load HTML content from Summernote
        $doc = new \DOMDocument();
        libxml_use_internal_errors(true); // Suppress warnings for malformed HTML
        $doc->loadHTML($data->detail);
        libxml_clear_errors();

        // Find the first image in the details
        $imageTags = $doc->getElementsByTagName('img');
        if ($imageTags->length > 0) {
            $firstImage = $imageTags->item(0)->getAttribute('src');
        }
    }

    // Set a fallback image if no image is found in details
    $ogImage = $firstImage ? asset($firstImage) : asset('path/to/fallback/image.png');
@endphp

@section('share_meta')
    <meta property="og:type" content="website">
    <meta property="og:title" content="{{ $data->name }}">
    <meta property="og:description" content="{{ strip_tags($data->detail) }}">
    <meta property="og:image" content="{{ $ogImage }}" />
    <meta property="og:image:type" content="image/png" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
    <meta property="og:url" content="{{ urlencode(Request::fullUrl()) }}">
    <meta name="description" content="{{ strip_tags($data->detail) }}">
@endsection

@section('content')
    @include('frontend.pages.partials.ticker')


    <div class="container">
        <div class="main_content">
            <div id="post-data">

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
                                <p class="text-bold" style="font-weight: 600">
                                    {{ $data->creator ? $data->creator->name : '' }}</p>
                                <span>{{ $data->created_at->format('h:i A | d M, Y') }}</span>
                            </div>
                        </div>
                        <a href="#"><i class="fa fa-ellipsis-v"></i></a>
                    </div>

                    <!-- Initially collapsed details -->
                    <div class="post-details collapsed mt-2">
                        {!! $data->detail !!}
                    </div>

                    <!-- "View More / View Less" link -->
                    <a href="javascript:void(0);" class="view-more-link">View More</a>

                    <div class="mt-2">
                        <div class="action-buttons">
                            <a href="javascript:void(0);" class="like-button" data-product-id="{{ $data->id }}">
                                <i class="fas fa-thumbs-up"></i> Like ( <span
                                    class="like-count">{{ count($data->like_list ?? []) }}</span> )
                            </a>

                            <a href="javascript:void(0);" class="comment-button" data-product-id="{{ $data->id }}">
                                <i class="fas fa-comment"></i> Comment
                            </a>
                            <a href="javascript:void(0);" class="share-button" data-bs-toggle="modal"
                                data-bs-target="#shareModal" data-product-id="{{ $data->slug }}">
                                <i class="fas fa-share"></i> Share
                            </a>
                        </div>

                    </div>
                </div>



                <!-- Share Modal -->
                <div class="modal fade" id="shareModal" tabindex="-1" aria-labelledby="shareModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h6 class="modal-title text-center" id="shareModalLabel">Share Post</h6>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body text-center">
                                <button class="btn btn-primary mb-2 share-btn" data-platform="facebook">
                                    <i class="fab fa-facebook-f"></i> Share on Facebook
                                </button>
                                <button class="btn btn-success mb-2 share-btn" data-platform="whatsapp">
                                    <i class="fab fa-whatsapp"></i> Share on WhatsApp
                                </button>
                                <button class="btn btn-info mb-2 share-btn" data-platform="twitter">
                                    <i class="fab fa-twitter"></i> Share on Twitter
                                </button>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Comment Modal -->
                <div class="modal fade" id="commentModal" tabindex="-1" aria-labelledby="commentModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="commentModalLabel">Comments</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div id="commentsContainer"></div>

                                <div class="mt-3">
                                    <form id="commentForm">
                                        @csrf
                                        <input type="hidden" id="commentProductId" name="product_id">
                                        <input type="hidden" id="parentCommentId" name="parent_id" value="0">
                                        <div class="form-group">
                                            <textarea class="form-control" name="comment" placeholder="Write a comment..." rows="3" required></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary mt-2">Submit</button>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        @include('frontend.pages.partials.homepage_right')
    </div>
@endsection
