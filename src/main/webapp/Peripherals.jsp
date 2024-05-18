<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <title>Computer Peripherals</title>
</head>
<body>
    <h1>Computer Peripherals</h1>
    <c:set var="url" value="jdbc:oracle:thin:@localhost:1521/xe"/>
    <c:set var="driver" value="oracle.jdbc.driver.OracleDriver"/>
    <c:set var="user" value="system"/>
    <c:set var="password" value="Shan1506"/>
    <sql:setDataSource var="dataSource" driver="${driver}" url="${url}" user="${user}" password="${password}"/>
    <sql:query dataSource="${dataSource}" var="result">
        SELECT * FROM computer_peripherals
    </sql:query>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Image</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.name}"/></td>
                <td><c:out value="${row.description}"/></td>
                <td><img src="${row.image_url}" alt="Peripheral Image" style="max-width: 200px; max-height: 200px;"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
