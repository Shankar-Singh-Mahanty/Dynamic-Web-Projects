<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Received</title>
</head>
<body>
    <h1>Item Received</h1>
    <form method="post">
        <label for="itemName">Item Name:</label>
        <input type="text" id="itemName" name="itemName"><br><br>
        
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity"><br><br>
        
        <label for="unitPrice">Unit Price:</label>
        <input type="number" id="unitPrice" name="unitPrice"><br><br>
        
        <input type="submit" value="Submit">
    </form>

    <% 
    if (request.getMethod().equals("POST")) {
        String itemName = request.getParameter("itemName");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
        double totalValue = quantity * unitPrice;
    %>
    <h2>Item Details</h2>
    <table border="1">
        <tr>
            <th>Item Name</th>
            <th>Quantity</th>
            <th>Unit Price</th>
            <th>Total Value</th>
        </tr>
        <tr>
            <td><%= itemName %></td>
            <td><%= quantity %></td>
            <td>$<%= unitPrice %></td>
            <td>$<%= totalValue %></td>
        </tr>
    </table>
    <% } %>
</body>
</html>
