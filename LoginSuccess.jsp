<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="test.UserBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding-top: 60px; 
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            position: relative; 
            min-height: 100vh; 
        }
        .header {
            width: 100%;
            background-color: #000;
            color: #fff;
            padding: 10px 0;
            display: flex;
            align-items: center;
            position: fixed; 
            top: 0;
            left: 0;
            z-index: 1000; 
        }
        .welcome-msg {
            font-size: 24px;
            margin: 0 auto; 
        }
        .background-image {
            width: 30%; 
            height: auto; 
            border-radius: 50%; 
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute; 
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .background-image img {
            width: 100%;
            height: auto; 
        }
        .button-container {
            text-align: center;
            position: absolute; 
            bottom: 50px; 
            width: 100%; 
        }
        .btn {
            padding: 20px 30px;
        }
        .logout-container {
            position: absolute;
            right: -120px; 
        }
        .btn-narrow {
            padding: 5px 10px; 
            font-size: 14px; 
        }
        .btn-wide {
            width: 700px; 
        }
    </style>
</head>
<body>
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
        <img src="bg/logo.png" alt="Logo"> 
    </div>
    <div class="button-container">
        <a href="index.html" class="btn btn-success btn-wide">Start Game</a>        
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
