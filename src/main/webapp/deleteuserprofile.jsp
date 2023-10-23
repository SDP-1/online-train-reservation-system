<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('bbl.jpeg'); /* Replace 'your-image-url.jpg' with the URL of your background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        button {
            background-color: #ff3333;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #cc0000;
        }

        /* Popup container */
        .popup-container {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1;
        }

        /* Popup content */
        .popup-content {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .close-btn {
            background-color: #ccc;
            color: #333;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .close-btn:hover {
            background-color: #999;
        }
    </style>
</head>
<body>

<%
   String id=request.getParameter("id");
%>



<div class="container">
        <h2>Delete Account</h2>

        <form action="deleteCustomer" method="post">
            <label for="pid">Passenger ID:</label>
            <input type="text" id="pid" name="pid" value="<%=id%>"readonly>
            <br><br>
            <label for="reason">Select reason:</label>
            <select id="reason" name="reason">
                <option value="personal">Personal reasons</option>
                <option value="privacy">Privacy concerns</option>
                <option value="other">Other</option>
            </select>

            </form>

        <p>Are you sure you want to delete your account?</p>
        <button type="submit" id="deleteBtn">Delete Account</button>
    </div>

    <!-- Popup Container -->
    <div id="popup" class="popup-container">
        <!-- Popup Content -->
        <div class="popup-content">
            <p>Are you sure you want to delete your account?</p>
            <button id="confirmDeleteBtn" class="close-btn">Yes, Delete</button>
            <button id="cancelDeleteBtn" class="close-btn">Cancel</button>
        </div>
    </div>

    <script>
        // Get the popup container
        var popup = document.getElementById('popup');

        // Get the delete button
        var deleteBtn = document.getElementById('deleteBtn');

        // Get the close and cancel buttons inside the popup
        var confirmDeleteBtn = document.getElementById('confirmDeleteBtn');
        var cancelDeleteBtn = document.getElementById('cancelDeleteBtn');

        // Show the popup when delete button is clicked
        deleteBtn.onclick = function () {
            popup.style.display = 'flex';
        }

        // Hide the popup when cancel button is clicked
        cancelDeleteBtn.onclick = function () {
            popup.style.display = 'none';
        }

        // Perform delete action when confirm button is clicked (you can replace this with your actual delete logic)
        confirmDeleteBtn.onclick = function () {
            alert('Account deleted!');
            popup.style.display = 'none';
        }
    </script>
</body>
</html>