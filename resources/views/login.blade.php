<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- CSS -->
   <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
   <link rel="stylesheet" href="{{asset('css/login.css')}}">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <!-- fonts -->
   <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
   <!-- javascript -->
   <script src="{{asset('js/app.js')}}"></script>

   <title>Log In</title>
</head>

<body>
   <section class="login-block">
      <div class="container">
         <div class="row">
            <div class="col-md-4 login-sec">
               <h2 class="text-center">Log In</h2>
               <form class="login-form" method="POST" action="{{ route('login') }}">
                  @csrf
                  <div class="form-group">
                     <label for="email">Email</label>
                     <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                        name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                     @error('email')
                     <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                     </span>
                     @enderror
                  </div>
                  <div class="form-group">
                     <label for="exampleInputPassword1">Password</label>
                     <input id="password" type="password" class="form-control @error('password') is-invalid @enderror"
                        name="password" required autocomplete="current-password">
                  </div>
                  <div class="form-check">
                     <button type="submit" class="btn btn-login float-right">{{ __('Login') }}</button>
                  </div>
               </form>
               <a href="/" style="text-decoration: none;">Go Back&larr;</a>
            </div>
            <div class="col-md-8 banner-sec">
            </div>
         </div>
   </section>
</body>

</html>