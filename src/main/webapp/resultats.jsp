<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>

<title>FindFunEvent - Résultats</title>
<link href="CSS/pageAccueil.css" rel="stylesheet" />
<link href="CSS/resultats.css" rel="stylesheet" />



</head>

<body>
	<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
		<a class="navbar-brand" href="PageAccueil">FindFunEvent</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>



		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<%
				if (session.getAttribute("pseudoCompteActuel") != null) {
			%>
			<ul class="navbar-nav mr-auto">
				<a class="nav-link" href="Resultats">Résultats <span
					class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="News">News
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href=PageCalendrier>Calendrier</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Préférences </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="MonClub">Mon club</a> <a
							class="dropdown-item" href="MaSelection">Ma sélection
							Nationale</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="jeu">En attendant la fin du
							match</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Profil </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="AfficherProfil">Afficher Profil</a>
						<a class="dropdown-item" href="ModifierProfil">Modifier Profil</a>
						<div class="dropdown-divider"></div>
						
					</div></li>
			</ul>
			<div id="recherche">
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</div>

		<%
			}
		%>



		<c:choose>
			<c:when test="${sessionScope.pseudoCompteActuel ==null}">

				<div class="message">
					<p id="message">
						Connectez-vous / <a href=inscriptionBootstrap.jsp>Inscrivez-vous</a>
					</p>


					<form action="PageAccueil" method="post" id="champConnexion">
						<label for="id"></label> <input type="text" name="id" id="id"
							placeholder="username" /><br> <label for="mp"></label> <input
							type="password" name="mp" placeholder="password" /><br> <label
							for="Envoyer"></label> <input type="submit" value="Connexion"
							id="Envoyer"></input>

					</form>
				</div>

			</c:when>
		</c:choose>
		<div class="message">
			<br>

			<!-- L'attribut "connecte"=1 signifie que l'utilisateur est bien connecté : affichage de message de bienvenue (sinon, affiche Veuillez renseigner vos identifiants) -->
			<c:choose>
				<c:when test="${sessionScope.pseudoCompteActuel !=null}">Bonjour 
			<c:out value="${sessionScope.pseudoCompteActuel}" /> (connecté)
			</c:when>
			</c:choose>
			<script>
				/* var login = <c:out value="${sessionScope.connecte}"/>
				if (login == 1) {
					alert("Vous êtes connecté")
				} */
			</script>


			<!-- Apparition du bouton Deconnexion quand l'utilisateur est connecté : lorsque l'utulisateur appuie sur le bouton Déconnexion, jsp redirigée vers servlet Deconnexion qui détruit la session et renvoit à pageAccueil.jsp -->
			<c:choose>
				<c:when test="${sessionScope.pseudoCompteActuel!=null}">
					<form action="Deconnexion" method="post" id="champDeconnexion">
						<input type="submit" value="Deconnexion" id="Envoyer"></input>
					</form>
				</c:when>

			</c:choose>
		</div>
	</nav>

<div class='z' id="boutons" style="text-align: center;"><button id="bouton" value=0>Résultats Ligue des Champions</button><button id="bouton2" style="width: 240px;">Résultats Ligue
		1</button><button id="bouton3" style="width: 240px;">Résultats
		Première League</button><button id="bouton4" style="width: 240px;">Résultats Série
		A</button><button id="bouton5" style="width: 240px;">Résultats
		Bundesliga</button><button id="bouton6" style="width: 240px;">Résultats Liga</button></div>
	

	<% String format = "dd/MM/yy H:mm:ss"; 
java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat( format ); 
java.util.Date date = new java.util.Date(); 

int mois= date.getMonth();
int jour= date.getDay();

for (int i=1;i<jour;i++){
	
out.println("<div id=\""+i+"\"><div id=\"ldc0"+i+"\"></div>"+
		"<div  id=\"ldc1"+i+"\"></div>"+
		"<div  id=\"ldc2"+i+"\"></div>"+
		"<div  id=\"ldc3"+i+"\"></div>"+
		"<div  id=\"ldc4"+i+"\"></div>"+
		"<div   id=\"ldc5"+i+"\"></div>"+
		"<div  id=\"ldc6"+i+"\"></div>"+
		"<div  id=\"ldc7"+i+"\"></div>"+
		"<div  id=\"ldc8"+i+"\"></div></div>");
} 
%>

	
		<% 
for (int i=1;i<jour;i++){
	
out.println(
		"<div  id=\"ligue11"+i+"\"></div>"+
		"<div  id=\"ligue12"+i+"\"></div>"+
		"<div  id=\"ligue13"+i+"\"></div>"+
		"<div  id=\"ligue14"+i+"\"></div>"+
		"<div  id=\"ligue15"+i+"\"></div>"+
		"<div  id=\"ligue16"+i+"\"></div>"+
		"<div  id=\"ligue17"+i+"\"></div>"+
		"<div  id=\"ligue18"+i+"\"></div>");
} %>


		<% 
for (int i=1;i<jour;i++){
	
out.println("<div id=\"league0"+i+"\"></div>"+
		"<div  id=\"league1"+i+"\"></div>"+
		"<div  id=\"league2"+i+"\"></div>"+
		"<div  id=\"league3"+i+"\"></div>"+
		"<div  id=\"league4"+i+"\"></div>"+
		"<div  id=\"league5"+i+"\"></div>"+
		"<div  id=\"league6"+i+"\"></div>"+
		"<div  id=\"league7"+i+"\"></div>"+
		"<div  id=\"league8"+i+"\"></div>");
} %>

	
		<% 
for (int i=1;i<jour;i++){
	
out.println("<div id=\"serie0"+i+"\"></div>"+
		"<div  id=\"serie1"+i+"\"></div>"+
		"<div  id=\"serie2"+i+"\"></div>"+
		"<div  id=\"serie3"+i+"\"></div>"+
		"<div  id=\"serie4"+i+"\"></div>"+
		"<div  id=\"serie5"+i+"\"></div>"+
		"<div  id=\"serie6"+i+"\"></div>"+
		"<div  id=\"serie7"+i+"\"></div>"+
		"<div  id=\"serie8"+i+"\"></div>");
} %>


		<% 
for (int i=1;i<jour;i++){
	
out.println("<div id=\"bundesliga0"+i+"\"></div>"+
		"<div  id=\"bundesliga1"+i+"\"></div>"+
		"<div  id=\"bundesliga2"+i+"\"></div>"+
		"<div  id=\"bundesliga3"+i+"\"></div>"+
		"<div  id=\"bundesliga4"+i+"\"></div>"+
		"<div  id=\"bundesliga5"+i+"\"></div>"+
		"<div  id=\"bundesliga6"+i+"\"></div>"+
		"<div  id=\"bundesliga7"+i+"\"></div>"+
		"<div  id=\"bundesliga8"+i+"\"></div>");
} %>


		<% 
for (int i=1;i<jour;i++){
	
out.println("<div id=\"liga0"+i+"\"></div>"+
		"<div  id=\"liga1"+i+"\"></div>"+
		"<div  id=\"liga2"+i+"\"></div>"+
		"<div  id=\"liga3"+i+"\"></div>"+
		"<div  id=\"liga4"+i+"\"></div>"+
		"<div  id=\"liga5"+i+"\"></div>"+
		"<div  id=\"liga6"+i+"\"></div>"+
		"<div  id=\"liga7"+i+"\"></div>"+
		"<div  id=\"liga8"+i+"\"></div>");
} %>






	<!-- Footer Elements -->

	<!-- Copyright -->
	<div class="footer-copyright text-center py-3">
		© 2020 Copyright: <a
			href="https://mdbootstrap.com/education/bootstrap/">
			MDBootstrap.com</a>
	</div>
	<!-- Copyright -->

	<!-- Footer -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>

	<script src="js/bootstrap\bootstrap.bundle.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="js/resultats.js"></script>
</body>

</html>