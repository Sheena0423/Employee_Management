<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Experience Details</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/BackColor.jpeg'); /* Replace with your image URL */
            background-size: inherit;
            background-position: center;
            margin: 0;
            padding: 0;
        }

        /* Container styling */
        .container {
            margin: 5% auto;
            padding: 20px;
            width: 80%;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.1);
        }

        /* Image section styling */
        .upper-section {
            text-align: center;
            padding-bottom: 20px;
        }

        .upper-section img {
            max-width: 100%;
            height: auto;
        }

        /* Lower section styling */
        .lower-section {
            padding-top: 20px;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Buttons */
        a {
            text-decoration: none;
            color: white;
            background-color: #2196F3;
            padding: 8px 12px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0b7dda;
        }

        .delete-btn {
            background-color: #f44336;
        }

        .delete-btn:hover {
            background-color: #d32f2f;
        }

        .edit-btn {
            background-color: #4CAF50;
        }

        .edit-btn:hover {
            background-color: #45a049;
        }
    </style>

    <!-- JavaScript for confirmation -->
    <script type="text/javascript">
        function confirmDelete() {
            return confirm("Are you sure you want to delete this entry?");
        }

        function confirmEdit() {
            return confirm("Do you want to edit this entry?");
        }
    </script>
</head>
<body>
    <div class="container">
        <!-- Upper section: Image -->
        <div class="upper-section">
            <img src="images//Emp_Exp.png" alt="Experience Banner" /> <!-- Replace with your image URL -->
        </div>
        
        <!-- Lower section: Table -->
        <div class="lower-section">
            <table border="2">
                <tr>
                    <th>Sr No.</th>
                    <th>Company Name</th>
                    <th>Role</th>
                    <th>Date of Joining</th>
                    <th>Last Date</th>
                    <th colspan="2">Modify</th>
                </tr>
                <c:forEach var="emp" items="${data}">
                    <tr>
                        <td>${emp.srNo}</td>
                        <td>${emp.companyName}</td>
                        <td>${emp.role}</td>
                        <td>${emp.joiningDate}</td>
                        <td>${emp.lastDate}</td>
                        <td>
                            <a href="<c:url value='/${emp.srNo}' />" class="edit-btn" onclick="return confirmEdit();">Edit</a>
                        </td>
                        <td>
                            <a href="<c:url value='/delete/${emp.srNo}' />" class="delete-btn" onclick="return confirmDelete();">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>
