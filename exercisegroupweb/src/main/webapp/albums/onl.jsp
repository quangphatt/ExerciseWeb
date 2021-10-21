<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Album Doraemon</title>	
	<link rel="stylesheet" href="exercises/style.css">
</head>
<body id="body1">
	<center><h1 id="title">Doraemon New Version</h1></center>
	<h2 class="center">You can only listen this album </h2>
	<center><iframe src="https://www.nhaccuatui.com/lh/auto/pO5GvRcFEz4I" width="620" height="587" frameborder="0" allowfullscreen allow="autoplay"></iframe></center>
	<br />
	<hr />
	<c:url var="Exercise" value="/Exercises"></c:url>
	<a href="${Exercise}">Back Door</a>
</body>
</html>