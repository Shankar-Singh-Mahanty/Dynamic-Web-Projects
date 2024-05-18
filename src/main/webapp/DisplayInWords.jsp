<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<% 
	// Define a map to hold the word representations of digits
	Map<Character, String> digitMap = new HashMap<>();
	digitMap.put('0', "Zero"); 
	digitMap.put('1', "One"); 
	digitMap.put('2', "Two"); 
	digitMap.put('3', "Three"); 
	digitMap.put('4', "Four"); 
	digitMap.put('5', "Five"); 
	digitMap.put('6', "Six"); 
	digitMap.put('7', "Seven"); 
	digitMap.put('8', "Eight"); 
	digitMap.put('9', "Nine"); 
	
	// Get the number from the request 
	String numberStr = request.getParameter("number"); 
	int length = numberStr.length(); 
	
	// Convert each digit into its corresponding word representation 
	StringBuilder result = new StringBuilder(); 
	for (int i = 0; i < length; i++) { 
		char digit = numberStr.charAt(i); 
		result.append(digitMap.get(digit)).append(" "); 
	} 
	// Output the result 
	out.println("<!DOCTYPE html>"); 
	out.println("<html>"); 
	out.println("<head>"); 
	out.println("<meta charset=\"UTF-8\">"); 
	out.println("<title>Number to Words Converter Result</title>"); 
	out.println("</head>"); 
	out.println("<body>"); 
	out.println("<h1>Number to Words Converter Result</h1>"); 
	out.println("<p>Number: " + numberStr + "</p>"); 
	out.println("<p>Word Representation: " + result.toString().trim() + "</p>"); 
	out.println("</body>"); out.println("</html>"); 
%>
