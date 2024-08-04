<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Login Form</title>
     <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
     <!-- Font Awesome CSS -->
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
     <!-- Custom CSS -->
     <link href="css/login.css" rel="stylesheet" type="text/css"/>
     <style>
         body {
             background-image: url('https://img.thuthuat123.com/uploads/2019/10/11/hinh-nen-den-trang-cuc-ngau_023944440.jpg');
             background-size: cover;
             background-position: center;
             display: flex;
             justify-content: center;
             align-items: center;
             height: 100vh;
             margin: 0;
         }
         #logreg-forms {
             width: 450px;
             padding: 30px; /* Reduce padding for a better fit */
             border-radius: 10px;
             background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
             box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
         }
         .form-signin {
             display: block;
         }
         .form-signup {
             display: none;
         }
         .form-control {
             border-radius: 20px;
             margin-bottom: 20px;
         }
         .btn-success, .btn-primary {
             border-radius: 20px;
             padding: 10px 20px;
             font-weight: bold;
         }
         .btn-forgot {
             text-decoration: underline;
             font-size: 14px;
             color: #007bff;
         }
         /* Adjusting grid columns */
         .form-group.row {
             margin-bottom: 0;
         }
         .form-group.row .form-check {
             padding-left: 15px;
         }
     </style>
</head>
<body>
     <div id="logreg-forms">
         <form class="form-signin" action="login" method="post">
             <h1 class="h3 mb-3 font-weight-normal text-center">Sign in</h1>
             <p class="text-danger text-center">${mess}</p>
             <input name="user" type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
             <input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
             <div class="form-group row">
                 <div class="col-sm-6">
                     <div class="form-check">
                         <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                         <label class="form-check-label" for="exampleCheck1">Remember me</label>
                     </div>
                 </div>
                 <div class="col-sm-6">
                     <a href="#" class="btn btn-forgot">Forgot Password?</a>
                 </div>
             </div>
             <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
             <hr>
             <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Create New Account</button >
         </form>
                <form action="signup" method="post" class="form-signup">
             <h1 class="h3 mb-3 font-weight-normal text-center">Sign up</h1>
             <div class="form-group">
                 <input name="user" type="text" id="user-name" class="form-control" placeholder="Username" required="" autofocus="">
             </div>
             <div class="form-group">
                 <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
             </div>
             <div class="form-group">
                 <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">
             </div>
             <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
             <a href="#" id="cancel_signup" class="text-center mt-3"><i class="fas fa-angle-left"></i> Back to Sign in</a>
         </form>
         <br>
     </div>
     <!-- Bootstrap JS and dependencies -->
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <script>
         function toggleResetPswd(e) {
             e.preventDefault();
             $('#logreg-forms .form-signin').toggle();
             $('#logreg-forms .form-reset').toggle();
         }
         function toggleSignUp(e) {
             e.preventDefault();
             $('#logreg-forms .form-signin').toggle();
             $('#logreg-forms .form-signup').toggle();
         }
         $(() => {
             $('#logreg-forms #btn-signup').click(toggleSignUp);
             $('#logreg-forms #cancel_signup').click(toggleSignUp);
         });
     </script>
</body>
</html>
