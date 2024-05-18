<%@page import="java.util.Iterator"%>
<%@page import="com.Assignment3.Student_Bean"%>
<%@page import="java.util.List"%>
<%@page import="com.Assignment3.CRUD.Read"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Students</title>
</head>
<body>
	<h1>Insert Values</h1>
	<form action="Controller/insert_controller.jsp">
		Sl_No :<input type="text" name="sl_no"><br>
		Student Name :<input type="text" name="name"><br>
		Roll_No:<input type="text" name="roll_no"><br>
		Branch:<input type="text" name="branch"><br>
		<input type="submit" value="Insert">
	</form>
	<hr>
<%
	Read obj_Read_Values=new Read();
	List<Student_Bean> list=obj_Read_Values.get_values();
	Iterator<Student_Bean> it_list=list.iterator();
%>
<table border="1">
<%
	while(it_list.hasNext()){
		Student_Bean obj_Stud_Bean=new Student_Bean();
		obj_Stud_Bean=it_list.next();
%>
<tr>
<td><%=obj_Stud_Bean.getSl_no() %></td>
<td><%=obj_Stud_Bean.getName() %></td>
<td><%=obj_Stud_Bean.getRoll() %></td>
<td><%=obj_Stud_Bean.getBranch() %></td>
<td>
	<a href="edit.jsp?sl_no=<%=obj_Stud_Bean.getSl_no()%>">Edit</a>
</td>
<td>
	<a href="Controller/delete_controller.jsp?sl_no=<%=obj_Stud_Bean.getSl_no()%>">Delete</a>
</td>
</tr>
<%
	}
%>
</table>
</body>
</html>