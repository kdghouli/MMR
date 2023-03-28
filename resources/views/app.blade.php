<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>👨‍🎓 MMR 🐙</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <meta name="csrf-token" content="{{ csrf_token() }}">



    <style>
        body {
            font-family: 'Nunito';
        }
    </style>

    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
</head>

<body class="container-fluid">
    <div id="app">



        {{-- ici le site --}}


    </div>



    <script src="{{ mix('js/app.js') }}" ></script>


</body>

</html>
