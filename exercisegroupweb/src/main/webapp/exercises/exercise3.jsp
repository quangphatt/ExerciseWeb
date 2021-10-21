<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<iframe src="https://exercise3web.herokuapp.com/" width="100%"
		height="500px"></iframe>
	<br />
	<hr />
	<c:url var="Exercise" value="/Exercises"></c:url>
	<a href="${Exercise}">Back Door</a>
</body>
</html>