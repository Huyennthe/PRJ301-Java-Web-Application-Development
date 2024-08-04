<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>User Profile</title>
     <style>
         body {
             font-family: Arial, sans-serif;
             margin: 0;
             padding: 0;
             background-image: url('https://img.thuthuat123.com/uploads/2019/10/11/hinh-nen-den-trang-cuc-ngau_023944440.jpg');
             background-size: cover;
             background-position: center;
             color: #333; /* Text color is black */
         }
         .container {
             max-width: 400px;
             margin: 50px auto;
             padding: 20px;
             background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
             border-radius: 10px;
             box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Light shadow */
         }
         h1 {
             text-align: center;
             margin-bottom: 20px;
             color: #333; /* Title color is black */
         }
         .profile-info {
             margin-bottom: 20px;
         }
         .profile-info label {
             font-weight: bold;
             display: block; /* Display the label as a block to be below the input */
             margin-bottom: 5px; /* Distance between label and input */
         }
         .profile-info input {
             width: 100%; /* Input occupies the entire width of the container */
             padding: 10px; /* Distance between input border and text */
             border: 1px solid #ccc; /* Light gray input border */
             border-radius: 5px; /* Round input border */
             box-sizing: border-box; /* Box-sizing so that padding does not change the size of the input */
             margin-bottom: 10px; /* Distance between inputs */
         }
         .btn {
             display: block;
             width: 100%;
             padding: 10px;
             text-align: center;
             border: none;
             border-radius: 5px;
             cursor: pointer;
             background-color: #007bff; /* Blue button color */
             color: #fff; /* Button text color is white */
             text-decoration: none;
             margin-bottom: 10px; /* Distance between button and inputs */
         }
         .btn:hover {
             background-color: #0056b3; /* Darker blue color on hover */
         }
     </style>
</head>
<body>
     <div class="container">
         <h1>User Profile</h1>
         <div class="profile-info">
             <label>User:</label>
             <input type="text" name="username" value="${sessionScope.acc.user}" required>
         </div>
         <div class="profile-info">
             <label>Password:</label>
             <input type="password" name="password" value="${sessionScope.acc.pass}" required>
         </div>
         <a href="home" class="btn btn-lg btn-outline-secondary text-uppercase">Back to Home</a>
         
         <!-- Change Password Section -->
         <h2>Change Password</h2>
         <form action="Login.jsp" method="post">
             <div class="profile-info">
                 <label>Old Password:</label>
                 <input type="password" name="oldpassword" required>
             </div>
             <div class="profile-info">
                 <label>New Password:</label>
                 <input type="password" name="newpassword" required>
             </div>
             <div class="profile-info">
                 <label>Confirm New Password:</label>
                 <input type="password" name="confirmnewpassword" required>
             </div>
             <button type="submit" class="btn btn-lg btn-outline-secondary text-uppercase">Change Password</button>
         </form>
     </div>
</body>
</html>
