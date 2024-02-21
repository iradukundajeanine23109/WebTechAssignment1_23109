<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333; /* Changed default text color */
        }

        .login-info {
            text-align: center;
            font-size: 20px;
            color: #007bff; /* Changed text color to blue */
        }

        .admission-button {
            margin-top: 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
        }

        .admission-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="login-info">
    <h1>Congratulations</h1> <br> <br>
    Logged in as Student, ${email}
</div>
<a href="indexr.jsp" class="admission-button">Admission Form</a> <!-- Added button to navigate to admission form -->
</body>
</html>
