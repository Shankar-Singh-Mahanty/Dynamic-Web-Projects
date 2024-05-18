<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Number Reversal</title>
</head>
<body>
    <h2>Number Reversal</h2>
    <form method="post">
        Enter a number: <input type="text" name="number">
        <input type="submit" value="Get Reverse">
    </form>
    <%-- Java code to reverse the number --%>
    <%
        if (request.getMethod().equals("POST")) {
            // Get the number from the form
            String numberStr = request.getParameter("number");
            
            // Reverse the number
            int number = Integer.parseInt(numberStr);
            int reversedNumber = 0;
            while (number != 0) {
                int digit = number % 10;
                reversedNumber = reversedNumber * 10 + digit;
                number /= 10;
            }
            // Display the reversed number
            out.println("<p>Reverse of " + numberStr + " is: " + reversedNumber + "</p>");
        }
    %>
</body>
</html>