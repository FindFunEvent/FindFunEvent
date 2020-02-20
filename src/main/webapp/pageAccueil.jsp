<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link href="CSS/pageAccueil.css" rel="stylesheet" type="text/css">

<meta charset="ISO-8859-1">
<title>FindFunEvent</title>
</head>
<body>

	<div>
		Connectez-vous / <a href=inscription.jsp>Inscrivez-vous</a><br>


		<form action="PageAccueil" method="post" id="champConnexion">
			<label for="id">username : </label> <input type="text" name="id"
				id="id" /><br> <label for="mp">password : </label> <input
				type="password" name="mp" /><br> <label for="Envoyer"></label><br>
			<input type="submit" value="Connexion" id="Envoyer"></input>

		</form>
	</div>
	<div>
		<br>
		<c:choose>
			<c:when test="${sessionScope.pseudoCompteActuel !=null}">bonjour 
			<c:out value="${sessionScope.pseudoCompteActuel}"/></c:when>
			<c:when test="${sessionScope.pseudoCompteActuel ==null}">Veuillez renseigner vos identifiants.</c:when>
		</c:choose>
	</div>


	<br>
	<h1>Bienvenue sur FindFunEvent</h1>
	<br>


</body>
</html>