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

		<!-- Affichage de Connexion/inscrivez vous uniquement lorsque l'utilisateur n'est pas connecté = tant que l'attribut "connecte" n'est set à la valeur 1 -->
		
<c:choose>		
<c:when test="${sessionScope.connecte ==null}">
	<div>
		<p id="message">Connectez-vous / </p><a href=inscription.jsp>Inscrivez-vous</a><br>


		<form action="PageAccueil" method="post" id="champConnexion">
			<label for="id"></label> 
			<input type="text" name="id"
				id="id" placeholder="username"/><br> <label for="mp"></label> 
				<input type="password" name="mp" placeholder="password"/><br> <label for="Envoyer"></label><br>
			<input type="submit" value="Connexion" id="Envoyer"></input>

		</form>
	</div>
	</c:when>
		</c:choose>
	<div>
		<br>
		
		<!-- L'attribut "connecte"=1 signifie que l'utilisateur est bien connecté : affichage de message de bienvenue (sinon, affiche Veuillez renseigner vos identifiants) -->
		<c:choose>
			<c:when test="${sessionScope.connecte ==1}">Bonjour 
			<c:out value="${sessionScope.pseudoCompteActuel}"/> (connecté)</c:when>
			<c:when test="${sessionScope.connecte!=1}">Veuillez renseigner vos identifiants.</c:when>
		</c:choose>
	</div>

<div>
		
		<!-- Apparition du bouton Deconnexion quand l'utilisateur est connecté : lorsque l'utulisateur appuie sur le bouton Déconnexion, jsp redirigée vers servlet Deconnexion qui détruit la session et renvoit à pageAccueil.jsp -->
<c:choose>
			<c:when test="${sessionScope.connecte !=null}">
		<form action="Deconnexion" method="post" id="champDeconnexion">
			
			<input type="submit" value="Deconnexion" id="Envoyer"></input>
		</form>
			</c:when>
			
		</c:choose>

	</div>

	<div>
		<br>
	
	</div>








	<br>
	<h1>Bienvenue sur FindFunEvent</h1>
	<br>


</body>
</html>