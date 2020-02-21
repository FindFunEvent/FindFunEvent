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


<!-- Il manque encore la verif du mail, sinon niquel -->


	<h4>Pour vous inscrire, veuillez remplir le formulaire ci-joint :</h4>
	<form action="Inscription" method="post" id="champConnexion">
		<label for="identifiant"></label> <input type="text"
			name="identifiant" placeholder="username"/><br> <label for="mail"></label> <input
			type="text" name="mail" placeholder="mail"/><br> <label for="motdepasse"></label> <input type="password" name="motdepasse" placeholder="password"/><br> <label
			for="ville"></label> <input type="text" name="ville" placeholder="ville"/><br>
		<input type="submit" value="Inscription"></input>
	</form>


			<p>			Veuillez renseigner vos identifiants.
			</p>
		
			
	

	<br>

</body>
</html>