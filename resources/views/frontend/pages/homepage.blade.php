@extends('frontend.layouts.master')

@section('content')
    @include('frontend.pages.partials.ticker')

    <div class="container flex-container"">
        <div class="main_content">
            @include('frontend.pages.partials.group_section')

            <div id="post-data">
                @include('frontend.pages.partials.posts')
            </div>
        </div>

        @include('frontend.pages.partials.homepage_right')
    </div>

    <!-- Overlay for small devices -->
    <div id="overlay" class="overlay"></div>
@endsection

@section('scripts')
    <script>
        // Function to slide in the sidenav after 5 seconds
        function showSidenav() {
            const sidenav = document.getElementById('homepage-right');
            const overlay = document.getElementById('overlay');

            sidenav.style.transform = 'translateX(0)'; // Slide in the sidenav
            overlay.style.display = 'block'; // Show the overlay

            // Add event listener to hide the sidenav when overlay is clicked
            overlay.addEventListener('click', () => {
                sidenav.style.transform = 'translateX(100%)'; // Hide the sidenav
                overlay.style.display = 'none'; // Hide the overlay
            });
        }

        // Slide in the sidenav after 5 seconds
        window.onload = function() {
            if (window.innerWidth <= 768) { // Trigger only on small devices
                setTimeout(showSidenav, 3000);
            }
        };
    </script>

    <script>
        $(document).on('click', '.close-sidebar', function(e) {
            e.preventDefault();

            // Toggle the 'closed' class on the right_sidebar
            var rightSidebar = document.querySelector('.right_sidebar');
            var overlay = document.querySelector('.overlay');
            rightSidebar.classList.toggle('closed');
            overlay.classList.toggle('closed');

            if (rightSidebar.classList.contains('closed')) {
                this.innerHTML = '<span class="icon"><i class="fa fa-list"></i></span>';
            } else {
                this.innerHTML = '<span class="icon"><i class="fa fa-close"></i></span>';
            }

        });
    </script>
@endsection
