<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Murach's Java Servlets and JSP</title>
	<link rel="stylesheet" href="styles/main.css" type="text/css" />
	<link href="style.css" rel="stylesheet">

</head>
<body>
	<section id="container" >
	<c:if test="${sqlStatement == null}">
		<c:set var="sqlStatement" value="select * from Users" />
	</c:if>
	
	<h1 id="title">The SQL Gateway</h1>
	<p>Enter an SQL statement and click the Execute button.(Tên bảng phải có dấu "")</p>
	<p><b>SQL statement:</b>	</p>
	<form action="sqlGateway" method="post">
		<textarea id="text" name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
		<br />
		<input type="submit" value="Execute">
	</form>
	<p><b>SQL result:</b></p>
	 <div id="result"> ${sqlResult}</div>
	</section>
		<hr />
	<a href="https://exercisegroupweb.herokuapp.com/Exercises">Back
		door</a>
</body>
</html>
