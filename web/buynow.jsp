<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://ongnhuahdpevietnam.com/wp-content/uploads/2022/08/hinh-nen-mau-trang-xam.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
        }
        .container {
            margin-top: 50px;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 10px;
        }
        h1 {
            text-align: center;
        }
        form {
            margin-top: 30px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"] {
            background-color: rgba(255, 255, 255, 0.8);
        }
        button[type="submit"] {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Checkout</h1>
        <form action="processorder" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" class="form-control" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="paymentMethod">Payment Method:</label><br>
                <select id="paymentMethod" name="paymentMethod" class="form-control" required>
                    <option value="" selected disabled>Select Payment Method</option>
                    <option value="cash">Cash</option>
                    <option value="card">Card</option>
                    <option value="bankTransfer">Bank Transfer</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Place Order</button>
             
        </form>
         <a href="home" class="btn btn-lg btn-outline-secondary text-uppercase">Back to Home</a>
    </div>
</body>
</html>
