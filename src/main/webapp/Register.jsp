<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f9fc; /* Soft background color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            display: flex;
            width: 90%;
            max-width: 1200px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
            overflow: hidden;
            background-color: #ffffff; /* White background for the container */
        }

        .image-section {
            flex: 3; /* 3/5 of the container */
            background-image: url('images/Registration.jpg'); /* Updated image path */
            background-size: cover;
            background-position: center;
            border-right: 1px solid #e0e0e0; /* Divider line */
        }

        .form-section {
            flex: 2; /* 2/5 of the container */
            padding: 40px;
            background-color: #ffffff; /* White background for the form */
        }

        .form-section h1 {
            color: #333; /* Darker color for text */
            margin-bottom: 30px;
            font-size: 36px;
            text-align: center;
            font-weight: bold;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
            font-size: 16px;
            font-weight: bold;
        }

        .form-section input[type="text"], 
        .form-section input[type="email"],
        .form-section input[type="password"] {
            width: calc(100% - 30px);
            padding: 15px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ddd;
            background-color: #f9f9f9; /* Light background for input fields */
            font-size: 16px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-section input[type="text"]:focus, 
        .form-section input[type="email"]:focus,
        .form-section input[type="password"]:focus {
            border-color: #4a90e2; /* Blue border on focus */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .form-section button {
            width: 100%;
            padding: 15px;
            background: linear-gradient(45deg, #4a90e2, #007bff); /* Gradient background */
            border: none;
            color: white;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
            font-weight: bold;
        }

        .form-section button:hover {
            background: linear-gradient(45deg, #357ABD, #0056b3); /* Darker gradient for hover effect */
            transform: translateY(-2px); /* Subtle lift effect */
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .image-section {
                height: 300px;
                border-right: none; /* Remove border on smaller screens */
                border-bottom: 1px solid #e0e0e0; /* Add bottom border on smaller screens */
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="image-section"></div>
        <div class="form-section">
            <h1>Registration</h1>

            <!-- Display error message if it exists -->
            <c:if test="${not empty errorMessage}">
                <div class="error-message">${errorMessage}</div>
            </c:if>

            <form action="/register" method="post">
                <label for="Name">Name</label>
                <input type="text" id="Name" name="Name" required="required" placeholder="Enter your name"><br><br>
                <label for="Email">Email</label>
                <input type="email" id="Email" name="email" required="required" placeholder="Enter your email"><br><br>
                <label for="Phone_No">Phone No.</label>
                <input type="text" id="Phone_No" name="Phone_No" required="required" placeholder="Enter your phone number"><br><br>
                <label for="Password">Password</label>
                <input type="password" id="Password" name="Password" required="required" placeholder="Enter your password"><br><br>
                <label for="Conf_Password">Confirm Password</label>
                <input type="password" id="Conf_Password" name="Conf_Password" required="required" placeholder="Confirm your password"><br><br>
                <button type="submit">Register</button><br><br>
                <div style="text-align: center;">or <a href="/Login.jsp" class="register-link">Login to your account</a></div>
            </form>
        </div>
    </div>
</body>
</html>
