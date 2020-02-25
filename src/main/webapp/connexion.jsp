<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil2</title>
</head>
<body>
	<form action="Connexion">

		<label for="name">Nom d'utilisateur :</label><br> <input
			type="text" id="user" name="user"><br> <label for="name">Mot
			de passe :</label><br> <input type="text" id="mdp" name="mdp"> <br>
		<br> <input type="submit" name="connexion" value="Connexion" />
	</form>
	<%
		out.println(request.getAttribute("message"));
	%>
	<br>
	<br>
	<h1>Bienvenue sur FindFunEvent</h1>
	<br>

	<a href="index.jsp"> Accueil</a>
	<br>
	<a href="AfficherProfil"> Profil</a>
	<br>
	<a href="Deconnexion"> Deconnexion </a>

</body>
</html>