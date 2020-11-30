<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSS -->
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/landing.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <!-- javascript -->
    <script src="{{asset('js/app.js')}}"></script>



    <title>Bloggy!</title>
</head>

<body>
    <!-- navbar -->
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light ">
            <a class="navbar-brand" href="/"><img src="{{asset('img/logo.svg')}}" alt="logo-navbar">Bloggy</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a href="/register" class="mt-2">Sign Up</a>
                    <a href="/login" class="btn btn-primary">Log In</a>
                </div>
            </div>
        </nav>
    </div>
    <!-- end of navbar -->
    <!-- hero -->
    <div class="container">
        <div class="row landing">
            <div class="col-lg-6 mt-5">
                <h3>Every Story <span>Matters</span> </h3>
                <p>Bloggy adalah wadah untuk kamu bercerita, bagikan kisahmu karena kami percaya bahwa setiap cerita itu
                    penting</p>
                <a href="/loginn" class="btn border border-primary text-dark">Get Started &rarr;</a>
                <p style="margin-top: 200px">&copy; SanberCode Final Project</p>
            </div>
            <div class="col-lg-6">
                <img src="{{asset('img/bloggy.png')}}" alt="hero" class="img-fluid float-left">
            </div>
        </div>
    </div>
    <!-- end of landing -->
</body>

</html>