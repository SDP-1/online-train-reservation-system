<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Add User</title>
    <style>
        
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1474487548417-781cb71495f3?auto=format&fit=crop&q=80&w=3084&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); /*background image  */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh; /* Set minimum height to fill the viewport */
            display: flex;
            flex-direction: column; /* Create a flex container for the page */
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            position: relative;
            display: flex; /* Add display property */
            justify-content: space-between; /* Add space between logo and search bar */
            align-items: center; /* Center vertically */
        }

        header img.logo {
           
            width: 50px;
            height: 50px;
        }

        /* Add styles for the text next to the logo */
        .logo-text {
            font-size: 25px; /*  text size */
            margin-right: 450px;
            text-align: center; /* Align to the center */
            color: red; /* Red color */
        }

        /* Add styles for the search bar */
        .search-bar {
            display: flex;
            align-items: center;
            background-color: #444;
            border-radius: 5px;
            padding: 5px;
        }

        .search-bar input[type="text"] {
            background-color: transparent;
            border: none;
            color: white;
            padding: 5px;
            margin-left: 5px;
        }

        .search-bar button {
            background-color: #333;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        nav {
            background-color: #333;
            overflow: hidden;
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #444;
        }

        main {
            flex-grow: 1; /* Allow the main content to grow and push the footer to the bottom */
            padding: 20px;
        }

        .admin-section {
            background-color: rgba(255, 255, 255, 0.7); /* Reduced transparency */
            padding: 20px;
            border-radius: 5px;
        }

        .add-manager-section {
            margin-top: 20px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7); /* Reduced transparency */
            border-radius: 5px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .error-message {
            color: red;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <header>
        <img src="logo.png" alt="Logo" class="logo">
        <!-- Add the text next to the logo -->
        <div class="logo-text">
            Admin panel - Travel Buddy Online Train Reservation System
        </div>
        <!-- Add the search bar -->
        <div class="search-bar">
            <input type="text" placeholder="Search...">
            <button>Search</button>
        </div>
    </header>
    <nav>
        <a href="adminHome.jsp">Home</a>
        <a href="adminAddTrain.jsp">Add Train</a>
        <a href="updateTrain.jsp">Update Train</a>
        <a href="removeTrain.jsp">Remove Train</a>
        <a href="#">Add Managers</a>
        <a href="adminRemoveManagers.jsp">Remove Managers</a>
        <a href="adminRemoveUsers.jsp">Remove Users</a>
    </nav>
    <main>
        <section class="admin-section">
            <h2>Welcome, <c:forEach var="adm" items="${adminDetails}">${adm.name}</c:forEach>!</h2>
            <p>Welcome to the admin panel of the Travel Buddy Online Train Reservation System. As an admin, you have the authority to manage and oversee various aspects of our train reservation system. From adding new trains to removing existing ones, and from adding new users to removing inactive ones, you play a crucial role in ensuring the smooth operation of our platform. Your dedication and control help provide a seamless and efficient experience for travelers who rely on our services. Thank you for your commitment to making travel easier and more accessible for everyone.</p>
        </section>

        <section class="add-manager-section">
            <h2>Add Manager to the System</h2>
            <form action="addMgrServlet" method="post" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="fullname">Full Name:</label>
                    <input type="text" id="fullname" name="name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" required>
                    <span class="error-message" id="email-error"></span>
                </div>

                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" id="phone" name="phone" required>
                    <span class="error-message" id="phone-error"></span>
                </div>

                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="uid" required>
                </div>

                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="psw" required>
                </div>

                <div class="form-group">
                    <input type="submit" name="submit" value="Add Manager" class="btn">
                </div>
            </form>
        </section>

    </main>
    <footer>
        <p id="dateTime"></p>
        &copy; 2023 Travel Buddy Online Train Reservation System. All rights reserved.
    </footer>
    <script>
        // JavaScript function to display date and time
        function displayDateTime() {
            const dateTimeElement = document.getElementById("dateTime");
            const now = new Date();
            const options = { 
                weekday: 'long', 
                year: 'numeric', 
                month: 'long', 
                day: 'numeric', 
                hour: '2-digit', 
                minute: '2-digit', 
                second: '2-digit',
                timeZoneName: 'short'
            };
            const formattedDateTime = now.toLocaleDateString('en-US', options);
            dateTimeElement.textContent = formattedDateTime;
        }

        // Phone number validation function
        function validatePhone() {
            const phoneElement = document.getElementById("phone");
            const phoneError = document.getElementById("phone-error");
            const phoneValue = phoneElement.value;
            const phonePattern = /^\d{10}$/; // Validates 10 digits

            if (!phonePattern.test(phoneValue)) {
                phoneError.textContent = "Phone number must contain exactly 10 digits.";
                return false;
            } else {
                phoneError.textContent = "";
                return true;
            }
        }

        // Email validation function
        function validateEmail() {
            const emailElement = document.getElementById("email");
            const emailError = document.getElementById("email-error");
            const emailValue = emailElement.value;
            const emailPattern = /^[A-Za-z0-9._%+-]+@gmail\.com$/;

            if (!emailPattern.test(emailValue)) {
                emailError.textContent = "Email must be in the format: ____@gmail.com";
                return false;
            } else {
                emailError.textContent = "";
                return true;
            }
        }

        // Form validation function
        function validateForm() {
            const isPhoneValid = validatePhone();
            const isEmailValid = validateEmail();

            // Return true only if both phone and email are valid
            return isPhoneValid && isEmailValid;
        }

        // Function to show existing managers (you can implement this part)
        function showExistingManagers() {
            // Add your code to show existing managers here
        }

        // Update date and time every second
        setInterval(displayDateTime, 1000);
    </script>
</body>
</html>
