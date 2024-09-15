<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Experience</title>
    
    <style>
        /* Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('images/BackColor.jpeg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }

        /* Container for the form */
        .container {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0px 20px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 400px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        .container:hover {
            transform: scale(1.05); /* Slight zoom effect on hover */
        }

        /* Form Heading */
        h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
            font-weight: bold;
        }

        /* Label */
        label {
            display: block;
            text-align: left;
            font-weight: normal;
            margin-bottom: 5px;
        }

        /* Input Fields */
        input[type="text"], input[type="date"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background-color: #f1f1f1;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        input[type="text"]:focus, input[type="date"]:focus {
            background-color: #e8f0fe;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 153, 255, 0.6);
        }

        /* Buttons */
        button {
            background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%);
            border: none;
            color: white;
            padding: 12px;
            margin-top: 15px;
            width: 100%;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
            text-transform: uppercase;
            font-weight: bold;
        }

        button:hover {
            background: linear-gradient(135deg, #38f9d7 0%, #43e97b 100%);
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Experience</h2>
        
        <!-- Form for updating experience -->
        <form action="/addExp" method="post">
            <c:set var="ex" value="${edit_data}" />
            
            <!-- Hidden Sr No field -->
            <input type="hidden" name="srNo" value="${ex.srNo}">
            
            <!-- Company Name -->
            <label for="companyName">Company Name</label>
            <input type="text" name="companyName" value="${ex.companyName}" required="required">
            
            <!-- Role -->
            <label for="role">Role</label>
            <input type="text" name="role" value="${ex.role}" required="required">
            
            <!-- Joining Date -->
            <label for="joiningDate">Date of Joining</label>
            <input type="text" name="joiningDate" value="${ex.joiningDate}" required="required">
            
            <!-- Last Date -->
            <label for="lastDate">Last Date</label>
            <input type="text" name="lastDate" value="${ex.lastDate}" required="required">
            
            <!-- Button to Update Experience -->
            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
