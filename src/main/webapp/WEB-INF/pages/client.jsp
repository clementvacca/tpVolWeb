<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<h1>Liste des clients</h1>
	<table class="table">
		<tr>
			<th>Numéro de réservation</th>
			<th>Date</th>
			<th>Passager</th>
			<th>Vol</th>
		</tr>
		<c:forEach var="r" items="${reservations}">
			<tr>
				<td>${numeroReservation}</td>
				<td>${dateReservation}</td>
				<td>${passager}</td>
				<td>${vol}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>