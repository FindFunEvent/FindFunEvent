<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
</head>
<body>
	<h4>Pour vous inscrire, veuillez remplir le formulaire ci-joint :</h4>
	<form action="Inscription" method="post" id="champConnexion">
		<label for="identifiant">Identifiant : </label> <input type="text"
			name="identifiant" /><br> <label for="mail">Mail : </label> <input
			type="text" name="mail" /><br> <label for="motdepasse">Mot
			de passe : </label> <input type="password" name="motdepasse" /><br> <label
			for="ville">Ville : </label> <input type="text" name="ville" /><br>
		<input type="submit" value="Inscription"></input>
	</form>

	<a href="PageAccueil" target="_blank">Aller à l'accueil</a>
	<br>

</body>
</html>