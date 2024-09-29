<nav>
    <div class="nav_left">
        <a href="{{ url('/') }}" class="logo">
            BD Community
        </a>
        <ul class="mb-hide">
            <li><img src="/asset/frontend/images/notification.png" alt="notification"></li>
            <li><img src="/asset/frontend/images/inbox.png" alt="inbox"></li>
            <li><img src="/asset/frontend/images/video.png" alt="video"></li>
        </ul>
    </div>
    <div class="nav_right">
        <div class="search_box">
            <img src="/asset/frontend/images/search.png" alt="search">
            <input type="search" placeholder="Search">
        </div>
        @if (auth()->check())
            <div class="nav_user_icon online_icon" onclick="settingsMenuToggle()">
                <img src="{{ auth()->user()->image ? asset(auth()->user()->image) : asset('asset/frontend/images/profile-pic.png') }}"
                    alt="Profile Image">
            </div>
        @else
            <div class="nav_user_icon">
                <a class="btn btn-sm btn-success mr-1" href="javascript:void(0);" data-bs-toggle="modal"
                    data-bs-target="#loginModal" />Login</a>
                <a class="btn btn-sm btn-success mr-1" href="javascript:void(0);" data-bs-toggle="modal"
                    data-bs-target="#registerModal" />Register</a>
            </div>
        @endif
    </div>
    <!-- todo: setting menu -->
    <div class="setting_menu">
        <div id="dark_btn" class="dark_btn_on">
            <span></span>
        </div>

        @if (auth()->check())
            <div class="settings_menu_inner">
                <div class="user_profile">
                    <img src="{{ auth()->user()->image ? asset(auth()->user()->image) : asset('asset/frontend/images/profile-pic.png') }}"
                        alt="Profile Image">
                    <div>
                        <p>{{ auth()->user()->name }}</p>
                        <a href="#">See Your Profile</a>
                    </div>
                </div>
                <hr />
                <div class="user_profile">
                    <img src="/asset/frontend/images/feedback.png" alt>
                    <div>
                        <p>Give Feedback</p>
                        <a href="#">Help Us To improve new design</a>
                    </div>
                </div>
                <hr />
                <div class="setting_link">
                    <img src="/asset/frontend/images/setting.png" class="setting_icon" alt>
                    <a href="{{ route('user.settings') }}">Setting & Privacy <img src="/asset/frontend/images/arrow.png"
                            alt width="10px"></a>
                </div>
                {{-- <div class="setting_link">
                    <img src="/asset/frontend/images/help.png" class="setting_icon" alt>
                    <a href="#">Help & Support <img src="/asset/frontend/images/arrow.png" alt width="10px"></a>
                </div>
                <div class="setting_link">
                    <img src="/asset/frontend/images/display.png" class="setting_icon" alt>
                    <a href="#">Dispaly & Accesiblity <img src="/asset/frontend/images/arrow.png" alt
                            width="10px"></a>
                </div> --}}
                <div class="setting_link">
                    <img src="/asset/frontend/images/logout.png" class="setting_icon" alt>
                    <a href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                  document.getElementById('logout-form').submit();">Logout<img
                            src="/asset/frontend/images/arrow.png" alt width="10px"></a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </div>
            </div>
        @endif
    </div>
</nav>




<!-- Modal -->
<div class="modal fade @if (session('show_login_modal')) show @endif" id="loginModal" tabindex="-1"
    aria-labelledby="loginModalLabel" aria-hidden="true"
    style="@if (session('show_login_modal')) display: block; @endif">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <form class="login" action="{{ route('user.login') }}" method="POST">
                    @csrf
                    <h2>Welcome, User!</h2>
                    <p>Please log in</p>
                    <input type="text" name="email" class="form-control" placeholder="Enter email/Phone Number">
                    <input type="password" name="password" placeholder="Password" />
                    <input type="submit" value="Log In" />
                    <div class="links">
                        <a href="{{ route('forgot.password.form') }}">Forgot password</a>
                        <a class="register_link" href="javascript:void(0);" data-bs-toggle="modal"
                            data-bs-target="#registerModal">Register</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Register Modal -->
<div class="modal fade @if (session('show_register_modal')) show @endif" id="registerModal" tabindex="-1"
    aria-labelledby="registerModalLabel" aria-hidden="true"
    style="@if (session('show_register_modal')) display: block; @endif">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <form class="login" action="{{ route('user.register') }}" method="POST" id="registerForm">
                    @csrf
                    <h2>Join Us!</h2>
                    <p>Please register</p>

                    @if ($errors->any() && session('show_register_modal'))
                        <div class="alert alert-danger">
                            <ul class="mb-0">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <!-- Name Input -->
                    <div class="form-group">
                        <input type="text" name="name" class="form-control" placeholder="Full Name"
                            value="{{ old('name') }}">
                        @if ($errors->has('name'))
                            <span class="text-danger">{{ $errors->first('name') }}</span>
                        @endif
                    </div>

                    <!-- Email Input -->
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="Email"
                            value="{{ old('email') }}" id="emailInput">
                        @if ($errors->has('email'))
                            <span class="text-danger">{{ $errors->first('email') }}</span>
                        @endif
                        <a href="javascript:void(0);" id="sendOtpLink">Send OTP</a>
                        <img src="{{ asset('images/loading.gif') }}" id="loading" height="20" width="20"
                            style="display: none" />
                    </div>

                    <!-- OTP Input -->
                    @if ($errors->has('otp'))
                        <div class="form-group" id="otpField">
                            <input type="text" name="otp" class="form-control" placeholder="Enter OTP"
                                value="{{ old('otp') }}">
                            <span class="text-danger">{{ $errors->first('otp') }}</span>
                        </div>
                    @else
                        <div class="form-group" id="otpField" style="display:none;">
                            <input type="text" name="otp" class="form-control" placeholder="Enter OTP"
                                value="{{ old('otp') }}">
                        </div>
                    @endif

                    <!-- Phone Input -->
                    <div class="form-group">
                        <input type="text" name="phone" class="form-control" placeholder="Phone"
                            value="{{ old('phone') }}">
                        @if ($errors->has('phone'))
                            <span class="text-danger">{{ $errors->first('phone') }}</span>
                        @endif
                    </div>

                    <!-- Password Input -->
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" placeholder="Password">
                        @if ($errors->has('password'))
                            <span class="text-danger">{{ $errors->first('password') }}</span>
                        @endif
                    </div>

                    <!-- Confirm Password Input -->
                    <div class="form-group">
                        <input type="password" name="password_confirmation" class="form-control"
                            placeholder="Confirm Password">
                    </div>

                    <!-- Submit Button -->
                    <input type="submit" value="Register">

                    <!-- Links -->
                    <div class="links">
                        <a href="javascript:void(0);" class="login_link" data-bs-toggle="modal"
                            data-bs-target="#loginModal">Already
                            have an account? Log In</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Share Modal -->
<div class="modal fade" id="shareModal" tabindex="-1" aria-labelledby="shareModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title text-center" id="shareModalLabel">Share Post</h6>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
<div class="modal fade" id="commentModal" tabindex="-1" aria-labelledby="commentModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="commentModalLabel">Comments</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
