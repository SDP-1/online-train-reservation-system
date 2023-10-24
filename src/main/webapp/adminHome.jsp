<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home - Travel Buddy Online Train Reservation System</title>
    <style>
       
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1474487548417-781cb71495f3?auto=format&fit=crop&q=80&w=3084&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); /* background image */
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
            font-size: 25px;
            margin-right: 450px;
            text-align: center;
            color: red;
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

        .options {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 20px;
        }

        .option {
            text-align: center;
            margin-bottom: 20px;
        }

        .option img {
            width: 50px;
            height: 50px;
        }

        .logout-button {
            text-align: center;
            margin-top: 20px;
        }

        .logout-button form {
            display: inline-block;
        }

        .logout-button input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
    </style>
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

        // Update date and time every second
        setInterval(displayDateTime, 1000);
    </script>
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
        <a href="#">Home</a>
        <a href="adminAddTrain.jsp">Add Train</a>
        <a href="updateTrain.jsp">Update Train</a>
        <a href="removeTrain.jsp">Remove Train</a>
        <a href="adminAddUsers.jsp">Add Managers</a>
        <a href="adminRemoveManagers.jsp">Remove Managers</a>
        <a href="adminRemoveUsers.jsp">Remove Users</a>
    </nav>
    <main>
        <section class="admin-section">
        <section class="admin-section">
            <h2>Welcome, <c:forEach var="adm" items="${adminDetails}">${adm.name}</c:forEach>!</h2>
            <h4>Your email:  <c:forEach var="adm" items="${adminDetails}">${adm.email}</c:forEach></h4>
            <h4>Your Phone: <c:forEach var="adm" items="${adminDetails}">${adm.phone}</c:forEach></h4>        
        </section>
            <p>Welcome to the admin panel of the Travel Buddy Online Train Reservation System. As an admin, you have the authority to manage and oversee various aspects of our train reservation system. From adding new trains to removing existing ones, and from adding new users to removing inactive ones, you play a crucial role in ensuring the smooth operation of our platform. Your dedication and control help provide a seamless and efficient experience for travelers who rely on our services. Thank you for your commitment to making travel easier and more accessible for everyone.</p>
            <div class="options">
                  <div class="option">
                    <img src="addtrain.png" alt="Add Train Icon">
                    <h3>Add Train</h3>
                    <p>add a new train to the system.</p>
                </div> 
                <div class="option">
                    <img src="removetrain.png" alt="Remove Train Icon">
                    <h3>Remove Train</h3>
                    <p>Remove existing trains from the system.</p>
                </div>
                <div class="option">
                    <img src="adduser.png" alt="Add Users Icon">
                    <h3>Add Users</h3>
                    <p>Add new users to the system for booking tickets.</p>
                </div>
                <div class="option">
                    <img src="removeuser.png" alt="Remove Users Icon">
                    <h3>Remove Users</h3>
                    <p>Remove users who are no longer active.</p>
                </div>
            </div>
            <div class="logout-button">
                <form action="adminLogoutServlet" method="post">
                    <div>
                        <input type="submit" name="submit" value="Logout" class="btn">
                    </div>
                </form>
            </div>
        </section>
    </main>
    <footer>
        <p id="dateTime"></p>
        &copy; 2023 Travel Buddy Online Train Reservation System. All rights reserved.
    </footer>
    <script>
        // Initialize date and time display
        displayDateTime();
    </script>
</body>
</html>
