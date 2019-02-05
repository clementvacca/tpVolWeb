<%@page import="formationJpaSpring.entity.Personne"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="container">
	<h1>liste des personnes</h1>
	<div>
		<a href="addFormateur" class="btn btn-link">creation
			formateur</a><a href="addEleve" class="btn btn-link">creation
			eleve</a>
	</div>
	<table class="table">
		<tr>
			<th>numero</th>
			<th>civilite</th>
			<th>prenom</th>
			<th>nom</th>
			<th>adresse</th>
			<th>code postal</th>
			<th>ville</th>
			<th>date de naissance</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="p" items="${personnes}">
			<tr>
				<td>${p.numero}</td>
				<td>${p.civilite}
				<td>${p.prenom}</td>
				<td>${p.nom}</td>
				<td>${p.adresse.numero},${p.adresse.rue}</td>
				<td>${p.adresse.codePostal}</td>
				<td>${p.adresse.ville}</td>
				<td><fmt:formatDate value="${p.dateNaissance}"
						pattern="dd/MM/yyyy" /></td>
				<td><a class="btn btn-info" href="edit?id=${p.numero}">modifier</a></td>
				<td><a class="btn btn-danger" href="delete?id=${p.numero}">supprimer</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>