<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
        }
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        #thankYouMessage {
            display: none;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Feedback Form</h1>
        <form action="feedback" method="post" id="feedbackForm">
            <label for="customerEmail">Your Email:</label><br>
            <input type="email" id="customerEmail" name="customerEmail" required><br><br>
            
            <label for="feedback">Your Feedback:</label><br>
            <textarea id="feedback" name="feedback" rows="4" required></textarea><br><br>
            
            <input type="submit" value="Submit">
        </form>

        <div id="thankYouMessage">
            <h2>Thank you for responding!</h2>
        </div>
    </div>

    <a href="home" class="btn btn-lg btn-outline-secondary text-uppercase" style="display: block; text-align: center; margin-top: 20px;">Back to Home</a>

    <script>
        document.getElementById("feedbackForm").addEventListener("submit", function(event) {
            // Prevent default form submission
            event.preventDefault();

            // Display the thank you message
            document.getElementById("thankYouMessage").style.display = "block";
        });
    </script>
</body>
</html>
