<%@page import="com.Assignment3.CRUD.Delete"%>
<%@page import="com.Assignment3.CRUD.Update"%>
<%@page import="com.Assignment3.Student_Bean"%>
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
	Delete obj_Delete_values=new Delete();
	obj_Delete_values.delete_value(sl_no);
%>
<script type="text/javascript">
	window.location.href="http://localhost:8080/DWP/Insert_Values.jsp"
</script>
</body>
</html>
