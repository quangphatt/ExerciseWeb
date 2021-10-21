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
<body class="body">
	<hr />
	<center><h1 id="title">Doraemon Old Version</h1></center>
	<hr />

	<table>
	<tr>
		<th>Song Title</th>
		<th>Audio Format</th>
	</tr>
	<tr>
		<td>Doraemon No Uta </td>
		<td>
			<a href="music/${album}/Doraemon_old.mp3">MP3</a>
		</td>
	</tr>
	<tr>
		<td>Yume Wo Kanaete Doraemon  </td>
		<td>
			<a href="music/${album}/Yume.mp3">MP3</a>
		</td>
	</tr>
	</table>
	<br />
	<hr />
	<c:url var="Exercise" value="/Exercises"></c:url>
	<a href="${Exercise}">Back Door</a>
	
</body>
</html>