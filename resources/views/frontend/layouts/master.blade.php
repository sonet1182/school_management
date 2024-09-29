<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('asset/frontend/style.css') }}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght
    @100;200;300;400;500;600&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <script src="https://kit.fontawesome.com/c451d80140.js" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Home Page</title>

    @include('frontend.asset.style')

    @yield('share_meta')
</head>

<body>
    @include('frontend.inc.navbar')

    <div class="profile_container vh-90">
        @yield('content')
    </div>

    @include('frontend.inc.bottom_nav')

    @include('frontend.asset.script')

    @stack('js')

    @yield('scripts')
</body>

</html>
