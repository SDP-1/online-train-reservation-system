<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title> 
    <style>
        /* Internal CSS */
        body {
            background-image: url('https://images.unsplash.com/photo-1474487548417-781cb71495f3?auto=format&fit=crop&q=80&w=3084&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); /* background image */
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
            <p class="welcome-message">Welcome to Admin Login for Travel Buddy Online Train Reservation System.</p>
        </div>
        <h2>Admin Login</h2> 
        <form action="adminLoginServlet" method="post"> 
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="adminuid" required> 
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="adminpass" required> 
            </div>
            <div class="form-group">
                <input type="submit" name="submit" value="Login" class="btn"> 
            </div>
        </form>
        
        <!-- Link to User Login Page -->
        <p>Switch to user login? <a href="login.jsp">User Login</a></p>
    </div>
</body>
</html>
