<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="CSS/pageAccueil.css" rel="stylesheet" type="text/css">

<meta charset="ISO-8859-1">
<title>FindFunEvent</title>
</head>
<body>

<div>Connectez-vous / <a href=inscription.jsp>Inscrivez-vous</a><br>
		
		
		<form action="pageAccueil" method="post" id="champConnexion">
		<label for="username">username : </label> 
		<input type="text" name="username" id="username"/><br> 
		<label for="Saisie">password : </label> 
		<input type="password" name="password" /><br> 
		<label for="Envoyer" ></label><br>
		<input type="submit" value="Connexion" id="Envoyer"></input>
		
	</form>

</div>


<br><h1>Bienvenue sur FindFunEvent</h1>
</body>
</html>