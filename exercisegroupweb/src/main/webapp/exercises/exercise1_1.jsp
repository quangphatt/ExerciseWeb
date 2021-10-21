<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login Success</title>
	<style type="text/css">
		#main{
			width: 80%;
			margin:0 auto;
			border: 2px solid black;
			padding: 10px;
			font-size: 18px;
		}
		h1{
			color: blue;
		}
	</style>
</head>
<body>
	<div id="main">
		<center><h1>Your Account</h1></center>
		<hr />
		<center>
		<h2>Username:  ${user.username}</h2>
		<h2>Password: <c:out value=" ${user.password}"></c:out></h2>
		<h2>Email: <c:out value="${user.email}"></c:out></h2>
		</center>
	</div>
<br />
<hr />
<c:url var="Exercise" value="/Exercises"></c:url>
	<a href="${Exercise}">Back Door</a></body>
</html>