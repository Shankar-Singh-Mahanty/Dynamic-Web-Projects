<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0; 
            padding: 0;
        }
        .container {
            width: 400px; 
            margin: 0 auto;
            padding: 20px; 
        }
        h2, p, form, label, input[type="submit"] {
            margin: 10px 0;
        }
        input[type="text"], input[type="number"] {
            width: 100%; 
            padding: 5px; 
            box-sizing: border-box; 
        }
        input[type="submit"] {
            padding: 8px 12px; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enter Student Details</h2>
        <form method="post">
            <label>Registration Number:</label>
            <input type="text" name="regNo" required>
            
            <label>Name:</label>
            <input type="text" name="name" required>
            
            <label>Subject 1 Marks:</label>
            <input type="number" name="marks1" required min="0" max="100">
            
            <label>Subject 2 Marks:</label>
            <input type="number" name="marks2" required min="0" max="100">
            
            <label>Subject 3 Marks:</label>
            <input type="number" name="marks3" required min="0" max="100">
            
            <input type="submit" value="Calculate">
        </form>
        
        <%-- Java code to calculate total and average marks --%>
        <%
            if (request.getMethod().equals("POST")) {
                // Get student details from the form
                String regNo = request.getParameter("regNo");
                String name = request.getParameter("name");
                int marks1 = Integer.parseInt(request.getParameter("marks1"));
                int marks2 = Integer.parseInt(request.getParameter("marks2"));
                int marks3 = Integer.parseInt(request.getParameter("marks3"));
                
                // Calculate total and average marks
                int total = marks1 + marks2 + marks3;
                double average = total / 3.0;
        %>
                <h2>Student Details</h2>
                <p>Registration Number: <%= regNo %></p>
                <p>Name: <%= name %></p>
                <p>Subject 1 Marks: <%= marks1 %></p>
                <p>Subject 2 Marks: <%= marks2 %></p>
                <p>Subject 3 Marks: <%= marks3 %></p>
                <p>Total Marks: <%= total %></p>
                <p>Average Marks: <%= average %></p>
        <%
            }
        %>
    </div>
</body>
</html>