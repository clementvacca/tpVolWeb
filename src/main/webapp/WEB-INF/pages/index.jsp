<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<<<<<<< HEAD
<body class="container">
	<h1>Selection vol</h1>
	<form:form method="post" action="/client" modelAttribute="vol">
		<div class="form-group">
			<form:label path="nomAeroport">Départ :</form:label>
			<form:select path="nomAeroport" items="${aeroports}" itemLabel="nomAeroport" cssClass="form-control"/>
		</div>
		<%-- <div class="form-group">
			<form:label path="aeroportArrivee">Arrivee :</form:label>
			<form:input path="aeroportArrivee" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="dateDepart">Date de départ :</form:label>
			<form:input type="date" path="dateDepart" cssClass="form-control" />
			<form:errors path="dateDepart"></form:errors>
		</div> --%>
		<div>
			<form:button class="btn btn-success" type="submit">Réserver :</form:button>
		</div>
	</form:form>
=======
<body>
	<button href="client.jsp"></button>

>>>>>>> e595bcef1ea473c5ec05139eed01faad6c8b3ec7
</body>
</html>