<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 9/27/2023
  Time: 1:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SignUp</title>
    <style>
        /* Style.css */

        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-box {
            background-color: #fff; /* White background */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Soft shadow */
            padding: 20px; /* Increased padding */
            text-align: center;
            width: 350px; /* Reduced width */
            align-items: center;
        }

        .form-box h1 {
            font-size: 24px; /* Slightly smaller font size */
            color: #333; /* Darker heading color */
            margin-bottom: 10px; /* Increased bottom margin */
        }

        .form-box label {
            display: block;
            margin-top: 10px;
            color: #555; /* Darker label color */
        }

        .form-box input, .form-box select {
            width: 100%; /* Full width input fields */
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 8px;
            box-sizing: border-box; /* Include padding and border in width calculation */
        }

        .form-box button[name="submit"] {
            background-color: #007bff; /* Blue submit button */
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-box button[name="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .selectgender {
            width: 100%; /* Full width select box */
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 8px;
            box-sizing: border-box; /* Include padding and border in width calculation */
        }

        .back {
            color: #666; /* Darker color for back link */
            display: block;
            margin-top: 20px;
            text-decoration: none;
        }

        .back:hover {
            color: #333; /* Darker color on hover */
        }

    </style>
    <!-- <link rel="stylesheet" type="text/css" href="Css.css" /> -->
</head>
<body>
<div class="form-box">
    <form method="post" action="register">
        <h1>Admission Form</h1>
        <br />
        <div class="input-type">
            <label for="firstname">Firstname</label>
            <input type="text" placeholder="Firstname" id="firstname" name="firstname"/> <br />
            <label for="lastname">Lastname</label>
            <input
                    type="text"
                    placeholder="Lastname"
                    id="lastname"
                    name="lastname"
                    required
            /><br />
            <label for="gender">Gender</label>
            <select name="gender" id="gender" class="selectgender" required>
                <option value="" disabled selected>Select gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>

            <label for="date">DOB</label>
            <input
                    type="date"
                    placeholder="Date of Birthday"
                    id="date"
                    name="date"
                    required
            />
            <br />
            <label for="address">Address</label>
            <input
                    type="text"
                    placeholder="Address"
                    required
                    id="address"
                    name="address"
            /><br />
            <label for="number">Contact Number</label>
            <input
                    type="number"
                    placeholder="Contact Number"
                    required
                    id="number"
                    name="number"
            /><br />

            <label for="email" id="email">Email Address</label>
            <input
                    type="email"
                    placeholder="Email Address"
                    id="gmails"
                    name="gmails"
                    required
            /><br />
            <label for="password" id="password">Password</label>
            <input
                    type="password"
                    placeholder="Provide your password"
                    id="pswd"
                    name="pswd"
            /><br />
            <label for="password">Confirm password</label>
            <input
                    type="password"
                    placeholder="Confirm your password"
                    id="pswds"
                    name="pswds"
            /><br />
        </div>
        <br />
        <button disabled id="btn" name="submit">Submit</button>
        <a href="index.jsp" class="back">Login here</a>
    </form>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Your code here

        // Get references to the form elements
        const form = document.querySelector("form");
        const pswd = document.getElementById("pswd");
        const pswds = document.getElementById("pswds");
        const gmails = document.getElementById("gmails");
        const btn = document.getElementById("btn");

        // Add an event listener to the form for input changes
        form.addEventListener("input", () => {
            validateForm();
        });

        // Function to validate the form
        function validateForm() {
            const isPasswordValid = validatePassword();
            const isEmailValid = validateEmail();

            // Check if passwords match and all fields are valid
            if (isPasswordValid && isEmailValid) {
                btn.disabled = false;
            } else {
                btn.disabled = true;
            }
        }

        // Function to validate the password and confirm password fields
        function validatePassword() {
            const password = pswd.value;
            const confirmPassword = pswds.value;

            if (password === confirmPassword && password.length >= 8) {
                // Passwords match and are at least 8 characters long
                pswd.classList.remove("error");
                pswds.classList.remove("error");
                return true;
            } else {
                // Passwords don't match or are too short
                pswd.classList.add("error");
                pswds.classList.add("error");
                return false;
            }
        }

        // Function to validate the email field
        function validateEmail() {
            const email = gmails.value;
            const emailPattern =
                /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            if (emailPattern.test(email)) {
                // Email is valid
                gmails.classList.remove("error");
                return true;
            } else {
                // Email is invalid
                gmails.classList.add("error");
                return false;
            }
        }

        // End of your code
    });
</script>
</body>
<!-- <script defer src="validation.js"></script> -->
</html>
