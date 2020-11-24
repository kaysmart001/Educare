<?php include 'signin.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>Educare Login page</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->   
   <link rel="icon" type="image/x-icon" href="assets/images/educare-icon.ico"/>
   <link rel="shortcut icon" href="assets/images/educare-icon.ico" type="image/x-icon">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="assets/css/util.css">
   <link rel="stylesheet" type="text/css" href="assets/css/main.css">
<!--===============================================================================================-->
</head>
<body>
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
               <img src="assets/images/img-01.png" alt="IMG">
            </div>
            <form class="login100-form validate-form" method="post">
               <span class="login100-form-title">
                  Educare Member Login
               </span>
               <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                  <input class="input100" type="text" name="email" placeholder="Email">
                  <span class="focus-input100"></span>
                  <span class="symbol-input100">
                     <i class="fa fa-envelope" aria-hidden="true"></i>
                  </span>
               </div>
               <div class="wrap-input100 validate-input" data-validate = "Password is required">
                  <input class="input100" type="password" name="pass" placeholder="Password">
                  <span class="focus-input100"></span>
                  <span class="symbol-input100">
                     <i class="fa fa-lock" aria-hidden="true"></i>
                  </span>
               </div>
               
               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" name="login">
                     Login
                  </button>
                  <div class="text-center p-t-20">
                  <a class="txt2" href="pwd-recovery.php">
                     forgot your password? 
                     <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                  </a>
                 </div>
               </div>
               <div class="text-center p-t-20">
               <a class="txt2" href="index.php">
                  Go back to homepage
                  <i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
               </a>
               </div>
               <div class="text-center p-t-20">
                  <a class="txt2" href="register.php">
                     Don't have an account? Signup
                     <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                  </a>
               </div>
            </form>
         </div>
      </div>
   </div>
   
   

   
<!--===============================================================================================-->   
   <script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="assets/vendor/bootstrap/js/popper.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
   <script src="assets/vendor/tilt/tilt.jquery.min.js"></script>
   <script >
      $('.js-tilt').tilt({
         scale: 1.1
      })
   </script>
<!--===============================================================================================-->
   <script src="assets/js/main.js"></script>

</body>
</html>

					
			