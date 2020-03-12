<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="CSS/news.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,600,700|Ubuntu:400,700&display=swap"
	rel="stylesheet">



<title>FindFunEvent</title>
<link href="CSS/article.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,600,700|Ubuntu:400,700&display=swap"
	rel="stylesheet">


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
				if (session.getAttribute("connecte") != null) {
			%>
			<ul class="navbar-nav mr-auto">

				   	<a class="nav-link" href="Resultats">Résultats <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="News">News <span class="sr-only">(current)</span></a>
                </li>
				<li class="nav-item"><a class="nav-link" href=PageCalendrier>Calendrier</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Préférences </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">

						<a class="dropdown-item" href="MonClub">Mon club</a> <a
							class="dropdown-item" href="MaSelection">Ma sélection Nationale</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="Pagejeu">En attendant la fin du
							match</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Profil </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="AfficherProfil">Afficher Profil</a> <a
							class="dropdown-item" href="ModifierProfil">Modifier Profil</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="Pagejeu">Préférences</a>
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
			<c:when test="${sessionScope.connecte ==null}">

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
				<c:when test="${sessionScope.connecte ==1}">Bonjour 
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
				<c:when test="${sessionScope.connecte !=null}">
					<form action="Deconnexion" method="post" id="champDeconnexion">
						<input type="submit" value="Deconnexion" id="Envoyer"></input>
					</form>
				</c:when>

			</c:choose>
		</div>


	</nav>
	
	
	  <div class="center" id="contenant4"></div> <br>
  

    <body>
        <div class='nav'>
          <div class='text-options'>
            <i class='zmdi zmdi-font trigger'></i>
            <div class='dropdown'>
              <ul>
                <li>
                  <ul class='font'>
                    <li>
                      <div class='font-wrapper pt-serif'>
                        Aa
                      </div>
                    </li>
                    <li>
                      <div class='font-wrapper crimson-text'>
                        Aa
                      </div>
                    </li>
                    <li>
                      <div class='font-wrapper source-sans-pro'>
                        Aa
                      </div>
                    </li>
                    <li>
                      <div class='font-wrapper lato'>
                        Aa
                      </div>
                    </li>
                  </ul>
                  <hr>
                  <ul class='font-size'>
                    <li>
                      <div class='size-wrapper'>
                        <i class='zmdi zmdi-format-size size-big'></i>
                      </div>
                    </li>
                    <li>
                      <div class='size-wrapper'>
                        <i class='zmdi zmdi-format-size size-medium'></i>
                      </div>
                    </li>
                    <li>
                      <div class='size-wrapper'>
                        <i class='zmdi zmdi-format-size size-small'></i>
                      </div>
                    </li>
                    <li>
                      <div class='size-wrapper'>
                        <i class='zmdi zmdi-format-size size-smaller'></i>
                      </div>
                    </li>
                  </ul>
                  <hr>
                  <ul class='margin-size'>
                    <li>
                      <div class='margin-wrapper'>
                        <i class='zmdi zmdi-format-align-justify margin-smaller'></i>
                      </div>
                    </li>
                    <li>
                      <div class='margin-wrapper'>
                        <i class='zmdi zmdi-format-align-justify margin-small'></i>
                      </div>
                    </li>
                    <li>
                      <div class='margin-wrapper'>
                        <i class='zmdi zmdi-format-align-justify margin-medium'></i>
                      </div>
                    </li>
                    <li>
                      <div class='margin-wrapper'>
                        <i class='zmdi zmdi-format-align-justify margin-big'></i>
                      </div>
                    </li>
                  </ul>
                  <hr>
                  <ul class='font-color'>
                    <li>
                      <div class='circle-wrapper'>
                        <div class='circle white'></div>
                      </div>
                    </li>
                    <li>
                      <div class='circle-wrapper'>
                        <div class='circle dark'></div>
                      </div>
                    </li>
                    <li>
                      <div class='circle-wrapper'>
                        <div class='circle sepia'></div>
                      </div>
                    </li>
                    <li>
                      <div class='circle-wrapper'>
                        <div class='circle blue'></div>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class='margin margin-small'></div>
            <div class='margin margin-medium'></div>
            <div class='margin margin-big'></div>
          </div>
        </div>
        <div class='text'>
          <div class='text-wrapper'>
            <p>
                <div id="contenant5"></div>
            </p>
          </div>
        </div>
      </body>
      
    <!-- <a id="affichage1">texte</a> -->
    

	
	
	

	

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
	
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="js/articles.js"></script>
	
</body>

</html>