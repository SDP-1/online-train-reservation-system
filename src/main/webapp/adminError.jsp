<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
    <style>
        /* Add CSS styles for error page */
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

        .error-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            color: #e74c3c; /* Red color */
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

        .countdown {
            font-size: 24px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>An error occurred!!!</h1>
        <p>Please re-check input values and try again.</p>
        <p>You will be redirected back in <span id="countdown" class="countdown">3</span> seconds...</p>
        <p><a id="goBackLink" href="javascript:history.back()">Go back</a></p>
    </div>
    
    <script>
        // Countdown timer
        var countdownElement = document.getElementById("countdown");
        var secondsRemaining = 3; //countdown time in seconds

        function updateCountdown() {
            countdownElement.textContent = secondsRemaining;
            if (secondsRemaining === 0) {
                document.getElementById("goBackLink").click(); // Auto-click the link
            } else {
                secondsRemaining--;
                setTimeout(updateCountdown, 1000); // Update every second
            }
        }

        updateCountdown();
    </script>
</body>
</html>
