<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Welcome to Profile page</title>
		<style>
			div{
		    border-radius: 8px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    padding: 20px;
		    text-align: justify;
		    width: 40%;
			}
		</style>
	</head>
	<body>
		<%
			String cName = (String)request.getAttribute("cName-key");
		%>
		<h3>WELCOME To : <%= cName %></h3>
		<div>
			<p>
				Akhand Bharat (transl. Undivided India), also known as Akhand Hindustan, is a term for
				the concept of a unified Greater India. It asserts that modern-day Afghanistan, Bangladesh,
				Bhutan, India, Maldives, Myanmar, Nepal, Pakistan, Sri Lanka and Tibet are one nation.
			</p>
		</div>
	</body>
</html>