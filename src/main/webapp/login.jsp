<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user Login</title>
    <style>
       
        body {
            background-image: url('http://localhost:8080/OTRS/image/gallery-4.jpg'); /* background image */
            background-size: cover; /* Make sure the image covers the entire background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background for the form */
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        /* Style for the welcome message container */
        .welcome-container {
            background-color: #007bff; /* Blue background color */
            color: #fff; /* White text color */
            text-align: center;
            padding: 10px; /* Padding around the welcome message */
            border-radius: 5px; /* Rounded corners */
            margin-bottom: 20px; /* Space between welcome message and form */
        }

        /* Style for the welcome message text */
        .welcome-message {
            font-size: 18px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 3px;
            width: 100%;
        }

        a {
            text-decoration: none;
            display: block;
            text-align: center;
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="welcome-container">
            <p class="welcome-message">Welcome to Travel Buddy Online Train Reservation System.</p>
        </div>
        <h2>Login</h2>
        <form action="loginServlet" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="uid" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="pass" required>
            </div>
            <div class="form-group">
                <input type="submit" name="submit" value="Login" class="btn">
            </div>
        </form>
        
        <!-- Links to Admin and Manager Login Pages -->
        <p>Don't have an account? <a href="createAccount.jsp">Register</a></p>
        <p>Admin? <a href="adminLogin.jsp">Login as Admin</a></p>
        <p>Manager? <a href="managerLogin.jsp">Login as Manager</a></p>
    </div>
</body>
</html>
