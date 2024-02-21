<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Form</title>
    <style>

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa; /* Light gray background */
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form {
            background-color: #58585b; /* Purple background */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 300px;
            text-align: center;
            color: #8f8a8a; /* White text */
        }

        .form h1 {
            margin-bottom: 20px;
            color: #484444; /* White heading color */
        }

        .input-field {
            margin-bottom: 20px;
            text-align: left;
        }

        .input-field label {
            display: block;
            margin-bottom: 5px;
            color: #ddd; /* Lighter label color */
            font-weight: bold;
        }

        .input-field input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff; /* Blue button */
            color: #fff;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .forgot {
            margin-top: 10px;
            color: #fff; /* White text */
        }

        .signup {
            margin-top: 20px;
            color: #333;
        }

        form .error {
            border: 2px solid red;
        }

        form .success {
            border: 2px solid greenyellow;
        }
        small{
            color: red;
        }

    </style>
<body>
<div class="container">
    <form class="form" method="post" action="login">
        <h1>Login</h1>
        <div class="input-field">
            <div class="small">
            <small>email: iradukunda@gmail.com</small>
            </div>
            <label for="username">Email</label>
            <input
                    type="text"
                    id="username"
                    placeholder="Enter your email"
                    required
                    id="username"
                    name="email"
            />
        </div>
        <div class="input-field">
            <div class="small">
            <small>password: 12345</small>
            </div>
            <label for="password">Password</label>
            <input
                    type="password"
                    id="password"
                    placeholder="Provide your password"
                    required
                    id="password"
                    name="password"
            />
        </div>
        <button class="button" type="submit" id="button">Login</button>
        <div class="forgot">
            <a href="forgot.jsp">Forgot password?</a>
        </div>
        <div class="signup">
            Don't have an account? <a href="indexr.jsp">Sign Up</a>
        </div>
    </form>
</div>
</body>
<!-- <script  defer src="validation.js"></script> -->
</html>
