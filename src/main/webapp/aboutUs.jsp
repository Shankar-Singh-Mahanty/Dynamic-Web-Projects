<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>About Us Page</title>
	<style>
			button {
				font-size: 20px;
			}
		</style>
	</head>
	<body>
		<h1>Welcome To About Us Page : <%= session.getAttribute("name-key") %></h1>
    
    <form action="SessionManagement" method="post">
       <table>
    		<tr>
    			<td><button type="submit" name="action" value="home">Home</button></td>
    			<td><button type="submit" name="action" value="myProfile">Profile</button></td>
       	</tr>
       	<tr>
       		<td colspan="2"><button type="submit" name="action"
       		value="logout" style="width:100%;">LogOut</button></td>
       	</tr>
    	</table>
    </form>
	</body>
</html>

