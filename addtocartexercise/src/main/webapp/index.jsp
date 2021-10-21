<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN">
	
<html>
<head>
	<title>Add To Cart</title>
	<link rel="stylesheet" href="style.css" type="text/css" />

</head>
<body>
	<h1 id="title">CD list</h1>

	<table id="ds" cellpadding="5" border=1>

		<tr valign="bottom">
			<th align="left"><b>Description</b></th>
			<th align="left"><b>Price</b></th>
			<th align="left"></th>
		</tr>

		<tr valign="top">
			<td>86 (the band) - True Life Songs and Pictures</td>
			<td>$14.95</td>
			<td><a href="<c:url value='/cart?productCode=8601' />"> Add
					To Cart</a></td>
		</tr>

		<tr valign="top">
			<td>Paddlefoot - The first CD</td>
			<td>$12.95</td>
			<td><a href="<c:url value='/cart?productCode=pf01' />"> Add
					To Cart</a></td>
		</tr>

		<tr valign="top">
			<td>Paddlefoot - The second CD</td>
			<td>$14.95</td>
			<td><a href="<c:url value='/cart?productCode=pf02' />"> Add
					To Cart</a></td>
		</tr>

		<tr valign="top">
			<td>Joe Rut - Genuine Wood Grained Finish</td>
			<td>$14.95</td>
			<td><a href="<c:url value='/cart?productCode=jr01' />"> Add
					To Cart</a></td>
		</tr>
	</table>
	<br />
	<hr />
	<a href="https://exercisegroupweb.herokuapp.com/Exercises">Back
		door</a>
</body>
</html>