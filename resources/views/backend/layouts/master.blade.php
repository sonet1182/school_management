<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Demo Name | @yield('title', 'Dashboard')</title>

    <meta name="csrf-token" content="{{ csrf_token() }}">

    @include('backend.asset.css')

    @yield('css')

    @include('backend.asset.js')

    <style>
        .table-responsive {
            overflow: auto;
        }

        .sticky-action {
            position: -webkit-sticky;
            /* for Safari */
            position: sticky;
            right: 0;
            background: white;
            z-index: 1;
            /* to ensure it sits above other content */
        }

        .sticky-header {
            position: -webkit-sticky;
            /* for Safari */
            position: sticky;
            top: 0;
            background: white;
            z-index: 1;
            /* to ensure it sits above other content */
        }

        th,
        td {
            white-space: nowrap;
            /* Prevent text from wrapping */
        }
    </style>

    {{-- @include('backend.asset.js') --}}


</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        {{-- @include('backend.asset.preloader') --}}

        @include('backend.inc.navbar')
        @include('backend.inc.sidebar')


        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h5 class="m-0">@yield('title', 'Dashboard')</h5>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">@yield('breadcrumb', 'Dashboard')</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <section class="content">
                <div class="container-fluid">
                    @yield('content')
                </div>
            </section>
        </div>

        @include('backend.inc.footer')
        @include('backend.inc.controlbar')
    </div>

    @yield('scripts')

    @stack('js')

</body>

</html>
