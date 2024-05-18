<%@page import="com.Assignment3.CRUD.Create"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String slNoString = request.getParameter("sl_no");
	int sl_no=Integer.parseInt(slNoString);
	String name =request.getParameter("name");
	String rollString = request.getParameter("roll_no");
	int roll_no=Integer.parseInt(rollString);
	String branch=request.getParameter("branch");
	Create obj_Insert_Values=new Create();
	obj_Insert_Values.insert_values(sl_no, name, roll_no, branch);
%>
<script type="text/javascript">
	window.location.href="http://localhost:8080/DWP/Insert_Values.jsp"
</script>
</body>
</html>
