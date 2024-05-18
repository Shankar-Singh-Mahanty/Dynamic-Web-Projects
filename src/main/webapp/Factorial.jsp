<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Factorial Calculator</title>
</head>
<body>
    <h2>Factorial Calculator</h2>
    <form method="post">
        Enter a number: <input type="number" name="number">
        <input type="submit" value="Calculate">
    </form>
    <%
        // Check if the form is submitted
        if (request.getMethod().equals("POST")) {
            // Get the number from the form
            int number = Integer.parseInt(request.getParameter("number"));
            
            // Validate if the number is non-negative
            if (number < 0) {
                out.println("<p>Please enter a non-negative number.</p>");
            } else {
                // Calculate factorial
                long factorial = 1;
                for (int i = 1; i <= number; i++) {
                    factorial *= i;
                }
                
                // Display the factorial value
                out.println("<p>Factorial of " + number + " is: " + factorial + "</p>");
            }
        }
    %>
</body>
</html>