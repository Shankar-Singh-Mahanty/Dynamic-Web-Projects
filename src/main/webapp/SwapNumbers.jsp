<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%
    // Initialize the numbers
    int num1 = 10;
    int num2 = 20;
		// Values Before Swapping
		out.println("Value of numbers before swapping: -");
		out.println("num1 = " + num1);
		out.println("num2 = " + num2);
		
    // Swap the numbers using a temporary variable
    int temp = num1;
    num1 = num2;
    num2 = temp;

    // Output the swapped numbers
    out.println("Values after swapping: -");
    out.println("num1 = " + num1);
		out.println("num2 = " + num2);
%>
