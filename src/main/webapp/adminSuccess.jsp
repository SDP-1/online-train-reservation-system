<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success Page</title>
    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .success-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            color: green; /* Green color for success message */
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        a {
            text-decoration: none;
            color: #3498db; /* Blue color for the "Go back" link */
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="success-container">
        <h1>Operation Successful!!!</h1>
        <p>You will be redirected in <span id="countdown">3</span> seconds...</p>
        <p><a id="goBackLink" href="javascript:history.back()">Go back</a></p>
    </div>
    
    <script>
        // Function to start the countdown timer
        function startCountdown(seconds) {
            var countdown = seconds;
            var countdownElement = document.getElementById("countdown");

            function updateCountdown() {
                countdownElement.textContent = countdown;
                countdown--;

                if (countdown < 0) {
                    // Redirect when the countdown reaches 0
                    document.getElementById("goBackLink").click();
                } else {
                    setTimeout(updateCountdown, 1000); // Update every 1 second
                }
            }

            updateCountdown();
        }

        // Start the countdown with 3 seconds
        startCountdown(3);
    </script>
</body>
</html>
