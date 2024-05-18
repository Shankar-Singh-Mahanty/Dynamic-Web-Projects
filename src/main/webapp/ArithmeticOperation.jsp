<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
	// Get parameters from the Form
	double num1 = Double.parseDouble(request.getParameter("num1")); 
	double num2 = Double.parseDouble(request.getParameter("num2")); 
	String operation = request.getParameter("operation"); 
	double result = 0; 
	
	// Perform the selected operation 
	switch (operation) { 
		case "Addition": 
			result = num1 + num2; 
			break; 
		case "Subtraction": 
			result = num1 - num2; 
			break; 
		case "Multiplication": 
			result = num1 * num2; 
			break; 
		case "Division": 
			if (num2 != 0) { 
				result = num1 / num2; 
			} else { 
				// Handling division by zero 
				out.println("<script>alert('Error: Division by zero is not allowed');</script>");
				out.println("<script>window.location.href='index.html';</script>"); 
			} 
			break; 
		default: 
			// Handling invalid operation 
			out.println("<script>alert('Error: Invalid operation');</script>"); 
			out.println("<script>window.location.href='index.html';</script>"); 
	} 
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Result</title>
</head>
<body>
	<h1>Result</h1> 
	<p>Operation: <%= operation %></p> 
	<p>Result: <%= result %></p>
</body>
</html>

