<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - Something Went Wrong</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f3f4f7;
            color: #333;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .error-container {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .error-title {
            font-size: 48px;
            color: #D32F2F;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .error-message {
            font-size: 24px;
            margin-bottom: 30px;
            color: #555;
        }

        .error-details {
            font-size: 16px;
            margin-top: 20px;
            color: #888;
        }

        .btn-container {
            margin-top: 40px;
        }

        .btn {
            background-color: #D32F2F;
            color: white;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.2s ease-in-out;
        }

        .btn:hover {
            background-color: #9C2727;
            transform: scale(1.05);
        }

        .btn:focus {
            outline: none;
        }
    </style>
</head>
<body>

<div class="error-container">
    <h1 class="error-title">Oops! Something Went Wrong</h1>

    <p class="error-message">
        <strong>Error Code:</strong> <%= request.getAttribute("javax.servlet.error.status_code") %>
    </p>

    <p class="error-message">
        <strong>Message:</strong> <%= request.getAttribute("javax.servlet.error.message") %>
    </p>

    <p class="error-message">
        <strong>Exception:</strong> <%= request.getAttribute("javax.servlet.error.exception") != null ? request.getAttribute("javax.servlet.error.exception").toString() : "N/A" %>
    </p>

    <p class="error-message">
        <strong>Servlet Name:</strong> <%= request.getAttribute("javax.servlet.error.servlet_name") != null ? request.getAttribute("javax.servlet.error.servlet_name").toString() : "N/A" %>
    </p>

    <p class="error-details">
        Something went wrong on our end. We're working on it, but in the meantime, you can return to the <a href="/student/dashboard">Dashboard</a> or try again later.
    </p>

    <div class="btn-container">
        <a href="/" class="btn">Go to Homepage</a>
    </div>
</div>

</body>
</html>

<%@ include file="footer.jsp" %>
