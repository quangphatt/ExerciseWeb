<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Your Cart</title>
	<link rel="stylesheet" href="style.css" type="text/css" />

</head>
<body>

	<h1 id="title">Your cart</h1>

	<table border="1" cellpadding="5">
		<tr>
			<th>Quantity</th>
			<th>Description</th>
			<th>Price</th>
			<th>Amount</th>
			<th></th>
		</tr>

		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<c:forEach var="item" items="${cart.list}">
			<tr valign="top">
				<td>
					<form action="<c:url value='/cart' />">
						<input type="hidden" name="productCode"
							value="${item.product.code}"> <input type=text size=2
							name="quantity" value="${item.quantity}"> <input
							type="submit" value="Update">
					</form>
				</td>
				<td>${item.product.description}</td>
				<td>${item.product.priceCurrencyFormat}</td>
				<td>${item.totalCurrencyFormat}</td>
				<td>
					<form action="<c:url value='/cart' />">
						<input type="hidden" name="productCode"
							value="${item.product.code}"> <input type="hidden"
							name="quantity" value="0"> <input type="submit"
							value="Remove Item">
					</form>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="3">
				<p>
					<b>To change the quantity</b>, enter the new quantity and click on
					the Update button.
				</p>
			</td>
		</tr>
	</table>

	<br>

	<form action="<c:url value='/index.jsp' />" method="post">
		<input type="submit" value="Continue Shopping">
	</form>

	<form action="<c:url value='/checkout.jsp' />" method="post">
		<input type="submit" value="Checkout">
	</form>
	<br />
	<hr />
	<a href="https://exercisegroupweb.herokuapp.com/Exercises">Back
		door</a>
</body>
</html>