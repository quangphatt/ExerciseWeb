<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Home</title>
	 <link rel="stylesheet" href="exercises/style.css">
</head>
<body class="body">
	<hr />
	<h1 id="title">List of Albums</h1>
	<hr />
	<center><h1>This is a list of albums about Doraemon</h1></center>
	<table>
	<tr>
		<th class="center">Name of album</th>
		<th class="center">Download</th>
		<th class="center">Listen</th>
	</tr>
	<tr>
		<td>Doraemon Old Version</td>
		
		<td>
			<c:url var="down" value="HomeShop?action=checkUser&album=down"></c:url>
			<a href="${down}">Doraemon Download</a>
		<br /></td>
		<td>Null</td>
	</tr>
	<tr>
		<td>Doraemon New Version</td>
		<td>Null</td>	
		<c:url var="listen" value="HomeShop?action=checkUser&album=onl"></c:url>	
		<td><a href="${listen}">Doraemon Listen Online</a></td>
	</tr>
	</table>
	
	<br />
	<hr />
	<c:url var="Exercise" value="/Exercises"></c:url>
	<a href="${Exercise}">Back Door</a>
</body>
</html>