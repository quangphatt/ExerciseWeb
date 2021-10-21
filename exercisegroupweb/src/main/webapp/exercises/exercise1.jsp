<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Exercise Number One</title>
	<style type="text/css">
		.inputs{
			font-size: 25px;
			float: right;
			width:75%;
		}
		button{
			float: right;
		}
		#div{
			width: 50%;
			margin:0 auto;
			border: 2px solid black;
			padding: 10px;
			font-size: 18px;
			background-color: teal;
		}
		.label{
			float: left;
		}
	
	</style>
</head>
<body>
	
	<hr />
	<center>
		<div id="div">
			<header><center><h1>Fill Information To Login</h1></center></header>
			<h2>
				<form action="LoginExercise" method="post">
					<label class="label" for="username" >Username:</label>
					<input class="inputs" name="username" type="text" required="required" />
					<br /><br />
					<label class="label" for="password" >Password:</label>
					<input class="inputs"  type="text" name="password"required="required" />
					<br /><br />
					<label class="label" for="email" >Email:</label>
					<input class="inputs"  name="email" type="email" required="required"/>
					<br /><br />
					<button class="inputs">Login</button>
					<br />
				</form>
			</h2>
		</div>
	</center>
	<br />
	<hr />
	<c:url var="Exercise" value="/Exercises"></c:url>
	<a href="${Exercise}">Back Door</a></body>
</html>