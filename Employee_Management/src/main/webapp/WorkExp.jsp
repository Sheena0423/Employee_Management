<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Experience</title>
    
    <style>
        /* Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
background-image: url('images/BackColor.jpeg'); /* Replace with your image URL */
            background-size: inherit;
            background-position: center;            display: flex;
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

        /* Secondary Button (Show Details) */
        .show-details-btn {
            background: linear-gradient(135deg, #f9d423 0%, #ff4e50 100%);
        }

        .show-details-btn:hover {
            background: linear-gradient(135deg, #ff4e50 0%, #f9d423 100%);
        }

        /* Form and button alignment */
        form {
            display: flex;
            flex-direction: column;
        }

        .button-group {
            display: flex;
            flex-direction: column;
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
        <h2>Add Experience</h2>
        
        <!-- Form for adding experience -->
        <form action="/addExp" method="post">
            <label for="companyName" >Company Name</label>
            <input type="text" name="companyName" required="required" placeholder="Enter company name">
            
            <label for="role">Role</label>
            <input type="text" name="role" required="required" placeholder="Enter your role">
            
			<label for="joiningDate">Date of Joining</label>
            <input type="date" name="joiningDate" required="required">
            
            <label for="lastDate">Last Date</label>
            <input type="date" name="lastDate" required="required"><br>
            
            <!-- Button to Add Experience -->
            <button type="submit">Add Details</button>
            </form>
            <!-- Button to Show Experience Details -->
            <form action="/viewDetails" method="get">
                <button type="submit" class="show-details-btn">Show Details</button>
            </form>
        
    </div>
</body>
</html>
