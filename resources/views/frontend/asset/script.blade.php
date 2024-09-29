<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="{{ asset('asset/backend/plugins/jquery/jquery.min.js') }}"></script>



<script>
    function previewImage(input, previewId, height = "220px", width = "220px") {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $("#" + previewId).html(
                    '<img src="' + e.target.result +
                    '" alt="Image Preview" class="" height="' + height + '" width="' + width + '">'
                );
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>

<script>
    var settingsMenu = document.querySelector(".setting_menu");
    var darkBtn = document.getElementById("dark_btn");

    function settingsMenuToggle() {
        settingsMenu.classList.toggle("setting_menu_height");
    }
    darkBtn.onclick = function() {
        darkBtn.classList.toggle("dark_btn_on");
    }

    function passvalue() {
        var message = document.getElementById("")
    }

    let btnGet = document.querySelector('#button_value');
    let inputGet = document.querySelector('#input_vlaue');
    let post = document.querySelector('#post');

    btnGet.addEventListener('click', () => {
        post.innerText = inputGet.value;
    });
</script>

<script>
    var isAuthenticated = @json(auth()->check());
</script>

<script>
    var page = 1;
    var isLoading = false;
    var hasMoreData = true;

    // Function to attach event listeners to "View More" links
    function attachViewMoreHandler() {
        $('.view-more-link').off('click').on('click', function() {
            const details = $(this).prev('.post-details');
            details.toggleClass('collapsed');

            if (details.hasClass('collapsed')) {
                $(this).text('View More');
            } else {
                $(this).text('View Less');
            }
        });
    }

    // Function to attach event listeners to "Like" buttons
    function attachLikeButtonHandler() {
        $('.like-button').off('click').on('click', function() {
            var productId = $(this).data('product-id');
            var likeButton = $(this);

            if (!isAuthenticated) {
                // If the user is not logged in, show the login modal
                $('#loginModal').modal('show');
                return;
            }

            // If the user is logged in, proceed with the like action
            $.ajax({
                url: '{{ route('toggle-like', '') }}/' + productId,
                type: 'POST',
                data: {
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    likeButton.find('.like-count').text(response.like_count);
                }
            });
        });
    }

    function attachCommentButtonHandler() {
        $('.comment-button').off('click').on('click', function() {
            var productId = $(this).data('product-id');
            $('#commentProductId').val(productId);
            $('#parentCommentId').val(0); // Reset parent comment ID for a new comment
            loadComments(productId);
            $('#commentModal').modal('show');
        });
    }


    // Function to load more posts
    function loadMorePosts() {
        if (!hasMoreData || isLoading) return;

        page++;
        isLoading = true;

        $.ajax({
                url: '?page=' + page,
                type: 'get',
                beforeSend: function() {
                    $('.load-more-btn').text('Loading...');
                }
            })
            .done(function(data) {
                if (data.html == "") {
                    $('.load-more-btn').text('No more posts');
                    hasMoreData = false;
                    return;
                }
                $('#post-data').append(data.html);
                $('.load-more-btn').text('Load More');

                if (!data.next_page) {
                    hasMoreData = false;
                    $('.load-more-btn').text('No more posts');
                }

                // Reattach event handlers for new posts
                attachViewMoreHandler();
                attachLikeButtonHandler();
                attachCommentButtonHandler();
            })
            .fail(function(jqXHR, ajaxOptions, thrownError) {
                alert('No response from server');
            })
            .always(function() {
                isLoading = false;
            });
    }

    // Infinite scroll
    $(window).scroll(function() {
        if ($(window).scrollTop() + $(window).height() >= $(document).height() - 100) {
            loadMorePosts();
        }
    });

    // Manual load more
    $(document).on('click', '.load-more-btn', function() {
        loadMorePosts();
    });

    // Initial attach of event handlers
    $(document).ready(function() {
        attachViewMoreHandler();
        attachLikeButtonHandler();
        attachCommentButtonHandler();
    });
</script>

<script>
    $(document).ready(function() {
        // When any share button is clicked
        $('.share-button').on('click', function() {
            var productId = $(this).data('product-id'); // Get the product ID from the clicked button

            // Set the correct product ID to the buttons inside the modal
            $('#shareModal .share-btn').data('product-id', productId);



        });



        // Handle the actual share process
        $('.share-btn').on('click', function() {
            var platform = $(this).data('platform');
            var productId = $(this).data('product-id'); // Get the correct product ID

            var shareUrl = ''; // URL to be shared
            var postUrl = window.location.href.split('?')[0] + 'post/' + productId;

            switch (platform) {
                case 'facebook':
                    shareUrl = 'https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(
                        postUrl);
                    break;
                case 'whatsapp':
                    shareUrl = 'https://api.whatsapp.com/send?text=' + encodeURIComponent(postUrl);
                    break;
                case 'twitter':
                    shareUrl = 'https://twitter.com/intent/tweet?url=' + encodeURIComponent(postUrl);
                    break;
            }

            window.open(shareUrl, '_blank');
        });
    });
</script>



<!--Toaster CDN JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<!--Toaster Calling Function-->
<script type="text/javascript">
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "2000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }

    @if (Session::has('message'))
        var type = "{{ Session::get('alert-type', 'info') }}";
        switch (type) {
            case 'info':
                toastr.info("{{ Session::get('message') }}");
                break;

            case 'warning':
                toastr.warning("{{ Session::get('message') }}");
                break;

            case 'success':
                toastr.success("{{ Session::get('message') }}");
                break;

            case 'error':
                toastr.error("{{ Session::get('message') }}");
                break;
        }
    @endif
</script>

<script>
    $(document).ready(function() {
        // When "Register" link is clicked inside the login modal
        $('#loginModal').on('click', '.register_link', function(e) {
            console.log('object')
            $('#loginModal').modal('hide'); // Close the login modal
            setTimeout(function() {
                $('#registerModal').modal('show'); // Show the register modal
            }, 500); // Add a slight delay to allow the previous modal to close properly
        });

        // When "Log In" link is clicked inside the register modal
        $('#registerModal').on('click', '.login_link', function(e) {
            e.preventDefault();
            $('#registerModal').modal('hide'); // Close the register modal
            setTimeout(function() {
                $('#loginModal').modal('show'); // Show the login modal
            }, 500); // Add a slight delay to allow the previous modal to close properly
        });
    });
</script>


<script>
    $(document).ready(function() {
        $('#sendOtpLink').on('click', function() {
            $('#loading').show();

            var email = $('#emailInput').val();

            if (email === '') {
                alert('Please enter an email address first.');
                $('#loading').hide(); // Hide loading animation
                return;
            }

            $.ajax({
                url: '{{ route('send.otp') }}', // Route to send OTP
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    email: email
                },
                success: function(response) {
                    if (response.status === 'success') {
                        $('#otpField').show(); // Show the OTP input field
                        alert('OTP sent to your email.');
                    } else {
                        alert('Failed to send OTP. Please try again.');
                    }
                    $('#loading').hide();
                },
                error: function(xhr) {
                    var errorMessage =
                        'An error occurred while sending OTP. Please try again.';

                    if (xhr.responseJSON && xhr.responseJSON.message) {
                        errorMessage = xhr.responseJSON.message;
                    }

                    alert(errorMessage);
                    $('#loading').hide();
                }
            });
        });
    });
</script>




{{-- Comment Functions --}}
<script>
    $(document).ready(function() {

        attachCommentButtonHandler();

        $('#commentForm').on('submit', function(e) {
            e.preventDefault();
            var formData = $(this).serialize();

            if (!isAuthenticated) {
                // If the user is not logged in, show the login modal
                $('#commentModal').modal('hide');
                $('#loginModal').modal('show');
                return;
            }

            $.ajax({
                url: '{{ route('comments.store') }}',
                type: 'POST',
                data: formData,
                success: function(response) {
                    loadComments(response.product_id);
                    $('#commentForm')[0].reset();
                    $('#parentCommentId').val(
                        0); // Reset parent comment ID after submitting
                }
            });
        });
    });

    function loadComments(productId) {
        $.ajax({
            url: '{{ route('comments.load') }}',
            type: 'GET',
            data: {
                product_id: productId
            },
            success: function(response) {
                $('#commentsContainer').html(renderComments(response.comments));
            }
        });
    }

    function renderComments(comments) {
        if (!comments || comments.length === 0) {
            return '<p>No comments yet. Be the first to comment!</p>';
        }

        var html = '';
        comments.forEach(function(comment) {
            var replies = comment.replies || [];

            var userImage = comment.user.image ? comment.user.image : 'images/demo_user.png';

            html += `
        <div class="comment mb-3 d-flex">
            <div class="user-image">
                <img src="${userImage}" alt="${comment.user.name}" class="img-fluid rounded-circle" width="50" height="50">
            </div>
            <div class="comment-body ms-3">
                <strong>${comment.user.name}</strong>
                <p>${comment.comment}</p>
            </div>
        </div>
    `;
        });
        return html;
    }

    $(document).on('click', '.reply-button', function() {
        var parentCommentId = $(this).data('comment-id');
        $('#parentCommentId').val(parentCommentId);
        $('#commentForm textarea').focus();
    });
</script>
