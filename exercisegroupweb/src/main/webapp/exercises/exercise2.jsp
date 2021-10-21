<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Exercise Number One</title>
<style type="text/css">
body{
	background-color: black;
	color: white;
}
.inputs{
	font-size: 25px;
	float: right;
	width: 77%;
}
a{
	color: white;
}
button{
	float: right;
}
#div{
	width: 55%
}
.label{
	float: left;
	font-size: 30px
}
</style>
</head>
<body>
	<header><center><h1>Fill Information To Register</h1></center></header>
	<hr />
	<center>
	<div id="div">
	<h2>
	<form action="HomeShop" method="post">
		<input type="hidden" name="action" value="registerUser" />
		<h6><c:out value=" ${message}"></c:out></h6>
		<label for="username" class="label">Username:</label>
		<input class="inputs" name="username" type="text" required="required" />
		<br /><br />
		<label for="password" class="label" >Password:</label>
		<input class="inputs"  type="text" name="password"required="required" />
		<br /><br />
		<label for="email:" class="label">Email:</label>
		<input class="inputs"  name="email" type="email" required="required"/>
		<br /><br />
		<button class="inputs">Register</button>
	</form>
	</h2>
	</div>
	</center>
	
	
	<br />
	<hr />
	<c:url var="Exercise" value="/Exercises"></c:url>
	<a href="${Exercise}">Back Door</a>
</body>
</html>