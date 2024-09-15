<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('images/Login.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay to improve text readability */
        }

        .form-container {
            position: relative;
            background-color: rgba(255, 255, 255, 0.6); /* 60% transparent white background */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 400px;
            z-index: 1; /* Ensure the form is above the overlay */
        }

        .form-container h1 {
            color: #222; /* Darker color for text */
            margin-bottom: 20px;
            font-size: 32px;
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
        .form-container label {
            display: block;
            margin: 12px 0 6px;
            font-size: 16px; /* Larger font size */
            color: #333; /* Darker color for labels */
        }

        .form-container input[type="text"], 
        .form-container input[type="email"],
        .form-container input[type="password"] {
            width: calc(100% - 20px);
            padding: 12px;
            margin: 8px 0;
            border-radius: 10px;
            border: 1px solid #ddd;
            background-color: rgba(255, 255, 255, 0.6); /* Transparent background */
            font-size: 16px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container input[type="text"]:focus, 
        .form-container input[type="email"]:focus,
        .form-container input[type="password"]:focus {
            border-color: #4a90e2; /* Blue border on focus */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .form-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 15px;
        }

        .form-footer .checkbox-container {
            display: flex;
            align-items: center;
        }

        .form-footer input[type="checkbox"] {
            margin-right: 8px;
        }

        .form-footer:active a {
            font-size: 14px;
            color: #4a90e2; /* Blue color for links */
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .form-footer a:hover {
            color: #007bff; /* Darker blue on hover */
        }

        .form-container button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(45deg, #4a90e2, #007bff); /* Gradient background */
            border: none;
            color: white;
            border-radius: 10px;
            font-size: 18px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease, box-shadow 0.2s ease;
            font-weight: bold;
        }

        .form-container button:hover {
            background: linear-gradient(45deg, #357ABD, #0056b3); /* Darker gradient for hover effect */
            transform: translateY(-2px); /* Subtle lift effect */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .form-container {
                padding: 20px;
            }

            .form-container h1 {
                font-size: 24px;
            }

            .form-container input[type="text"], 
            .form-container input[type="email"],
            .form-container input[type="password"] {
                padding: 10px;
                font-size: 14px;
            }

            .form-container button {
                font-size: 16px;
                padding: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="form-container">
        <h1>Login</h1>
        <!-- Display error message if it exists -->
            <c:if test="${not empty ErrorMessage}">
                <div class="error-message">${ErrorMessage}</div>
            </c:if>
        <form action="/login" method="get">
            <label for="username">Username</label>
            <input type="text" id="username" name="email" required="required" placeholder="Enter your username">
            <label for="password">Password</label>
            <input type="password" id="password" name="Password" required="required" placeholder="Enter your password">
            
            <div class="form-footer">
                <div class="checkbox-container">
                    <input type="checkbox" id="rememberMe" name="rememberMe">
                    <label for="rememberMe">Remember Me</label>
                </div>
                <a href="/forgot-password" class="forgot-password">Forgot Password?</a>
            </div>
            
            <button type="submit">Login</button><br><br>
            
            <div style="text-align: center;">Don't have an account? <a href="/Register.jsp" class="register-link">Register Here</a></div>
        </form>
    </div>
</body>
</html>
