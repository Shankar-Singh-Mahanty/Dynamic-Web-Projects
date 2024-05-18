<%@page import="com.Assignment3.CRUD.Update"%>
<%@page import="com.Assignment3.Student_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Values</title>
</head>
<body>
<%
	String slNoString = request.getParameter("sl_no");
	int sl_no=Integer.parseInt(slNoString);
	Update obj_Edit_values=new Update();
	Student_Bean obj_Student_Bean=obj_Edit_values.get_value_of_student(sl_no);
%>

<h1>Edit Values</h1>
<form action="Controller/edit_controller.jsp">
	Sl_No :<input type="text" name="sl_no" value="<%=sl_no%>"><br>
	Student Name :<input type="text" name="name" value="<%=obj_Student_Bean.getName()%>"><br>
	Roll_No:<input type="text" name="roll_no" value="<%=obj_Student_Bean.getRoll()%>"><br>
	Branch:<input type="text" name="branch" value="<%=obj_Student_Bean.getBranch()%>"><br>
	<input type="submit" value="Edit">
</form>
</body>
</html>
