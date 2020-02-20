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
		<label for="id">username : </label> 
		<input type="text" name="id" id="id"/><br> 
		<label for="mp">password : </label> 
		<input type="password" name="mp" /><br> 
		<label for="Envoyer" ></label><br>
		<input type="submit" value="Connexion" id="Envoyer"></input>
		
	</form>

<%out.println("test"); %>
	<% String pseudo = session.getAttribute(pseudoCompteActuel);
				if(pseudo != null){
					out.println("Bonjour " + pseudo);
				}%>


</div>


<br><h1>Bienvenue sur FindFunEvent</h1>
<br>

	
</body>
</html>