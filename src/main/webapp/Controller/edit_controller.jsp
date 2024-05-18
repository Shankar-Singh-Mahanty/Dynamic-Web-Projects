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
	String name =request.getParameter("name");
	String rollString = request.getParameter("roll_no");
	int roll_no=Integer.parseInt(rollString);
	String branch=request.getParameter("branch");
	
	Student_Bean obj_Stud_Bean=new Student_Bean();
	obj_Stud_Bean.setSl_no(sl_no);
	obj_Stud_Bean.setName(name);
	obj_Stud_Bean.setRoll(roll_no);
	obj_Stud_Bean.setBranch(branch);
	Update obj_Edit_values=new Update();
	obj_Edit_values.edit_student(obj_Stud_Bean);
%>
<script type="text/javascript">
	window.location.href="http://localhost:8080/DWP/Insert_Values.jsp"
</script>
</body>
</html>