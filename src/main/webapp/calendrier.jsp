<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>
    <title>FindFunEvent - Calendrier</title>
    <link href="CSS\bootstrap\bootstrapCalendrier.css" rel="stylesheet" />
    <style>
    
    #message{
    color: white;}
    
    #recherche{
    margin : 10px 120px 20px 0;}
    
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="PageAccueil">FindFunEvent</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded=
            "false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="PageAccueil">Accueil <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=PageCalendrier>Calendrier</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Préférences
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Mon club</a>
                        <a class="dropdown-item" href="#">Ma sélection Nationale</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="PageJeu">En attendant la fin du match</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <div id="recherche">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
            </div>
            
            
            
            
            
            
            
<c:choose>		
<c:when test="${sessionScope.connecte ==null}">

            <div>
		<p id="message">Connectez-vous / <a href=inscriptionBootstrap.jsp>Inscrivez-vous</a></p>


		<form action="PageAccueil" method="post" id="champConnexion">
			<label for="id"></label> 
			<input type="text" name="id"
				id="id" placeholder="username"/><br> <label for="mp"></label> 
				<input type="password" name="mp" placeholder="password"/><br> 
				<label for="Envoyer"></label>
			<input type="submit" value="Connexion" id="Envoyer"></input>

		</form>
	</div>
	
	</c:when>
		</c:choose>
	<div id="message">
		<br>
		
		<!-- L'attribut "connecte"=1 signifie que l'utilisateur est bien connecté : affichage de message de bienvenue (sinon, affiche Veuillez renseigner vos identifiants) -->
		<c:choose>
			<c:when test="${sessionScope.connecte ==1}">Bonjour 
			<c:out value="${sessionScope.pseudoCompteActuel}"/> (connecté)
			</c:when>
		</c:choose>
		
		
				<!-- Apparition du bouton Deconnexion quand l'utilisateur est connecté : lorsque l'utulisateur appuie sur le bouton Déconnexion, jsp redirigée vers servlet Deconnexion qui détruit la session et renvoit à pageAccueil.jsp -->
<c:choose>
			<c:when test="${sessionScope.connecte !=null}">
		<form action="Deconnexion" method="post" id="champDeconnexion">
			<input type="submit" value="Deconnexion" id="Envoyer"></input>
		</form>
			</c:when>
			
		</c:choose>
	</div>

	
        </div>
    </nav>
	

	
	
	
	

  <div id="calendar"></div>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>
<br><script src="js/calendar.js"></script>






<footer class="page-footer font-small mdb-color darken-3 pt-4">
  </footer>
  <!-- Footer -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap\bootstrap.bundle.min.js"></script>
</body>
    </html>