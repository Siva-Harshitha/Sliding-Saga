<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #d9edf7; 
        }
        .message-container {
            background-color: #d9edf7; 
            padding: 20px;
            border-radius: 5px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h1><%= request.getAttribute("msg") %></h1>
        <a href="main.html" class="btn btn-primary mt-3">Go back</a>
    </div>
</body>
</html>




