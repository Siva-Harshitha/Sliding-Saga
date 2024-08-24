<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="test.UserBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #000; /* Set background color to black */
            margin: 0;
            padding-top: 60px; /* Add padding to avoid overlap with fixed header */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            position: relative; /* Set position relative for body */
            min-height: 100vh; /* Ensure body covers entire viewport */
        }
        .header {
            width: 100%;
            background-color: #000;
            color: #fff;
            padding: 10px 0;
            display: flex;
            align-items: center;
            position: fixed; /* Fix the header at the top */
            top: 0;
            left: 0;
            z-index: 1000; /* Ensure the header is above other elements */
        }
        .welcome-msg {
            font-size: 24px;
            margin: 0 auto; /* Center the welcome message */
        }
        .background-image {
            width: 30%; /* Adjust width as needed */
            height: auto; /* Maintain aspect ratio */
            border-radius: 50%; /* Make the image oval-shaped */
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute; /* Position it in the center */
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .background-image img {
            width: 100%;
            height: auto; /* Maintain aspect ratio */
        }
        .button-container {
            text-align: center;
            position: absolute; /* Position it absolutely */
            bottom: 50px; /* Move it up by adjusting this value */
            width: 100%; /* Ensure full width */
        }
        .btn {
            padding: 20px 30px;
        }
        .logout-container {
            position: absolute;
            right: -120px; /* Adjust as needed */
        }
        .btn-narrow {
            padding: 5px 10px; /* Narrow padding for the logout button */
            font-size: 14px; /* Adjust font size if needed */
        }
        .btn-wide {
            width: 700px; /* Set a specific width for the Start Game button */
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <div class="container d-flex justify-content-center align-items-center position-relative">
            <div class="welcome-msg text-center">
                <% 
                UserBean ub = (UserBean) session.getAttribute("ubean");
                if (ub != null) {
                    out.println("Welcome User: " + ub.getfName());
                } else {
                    out.println("Welcome User!");
                }
                %>
            </div>
            <div class="logout-container">
                <a class="btn btn-danger btn-narrow" href="logout">Logout</a>
            </div>
        </div>
    </div>

    <div class="background-image">
        <img src="bg/logo.png" alt="Logo"> <!-- Make sure this path is correct -->
    </div>
    <div class="button-container">
        <a href="index.html" class="btn btn-success btn-wide">Start Game</a>        
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
