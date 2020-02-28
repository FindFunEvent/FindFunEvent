<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>



<title>FindFunEvent</title>
<link href="CSS/news.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700|Ubuntu:400,700&display=swap" rel="stylesheet">

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
				<li class="nav-item active"><a class="nav-link"
					href="PageAccueil">Accueil <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link" href=PageCalendrier>Calendrier</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Préférences </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Mon club</a> <a
							class="dropdown-item" href="#">Ma sélection Nationale</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="PageJeu">En attendant la fin du
							match</a>
					</div></li>
				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">Disabled</a></li>
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
				var login = <c:out value="${sessionScope.connecte}"/>
				if (login == 1) {
					alert("Vous êtes connecté")
				}
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




<section class="section-news">
		<div class="container">
			<div class="header-section">
				<h3 class="small-title"><span></span> Ce qu'il y a de nouveau</h3>
				<h2 class="title">News toute fraiches</h2>
			</div>
			<div class="row">
				<!-- start single news -->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="#"><img src="https://a.espncdn.com/photo/2020/0227/r672282_1296x729_16-9.jpg" alt=""></a>
						<div class="content">
							<span class="date">30 NOV 2019</span>
							<h3 class="title"><a href="#">Lorem Ipsum is simply dummy text of the printing</a></h3>
							<p class="text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
							<span class="author">By Admin</span>
							<span class="comments">0 Comments</span>
						</div>
					</div>
				</div>
				<!-- / end single news -->
				<!-- start single news -->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="#"><img src="https://a.espncdn.com/media/motion/ESPNi/2020/0227/int_200227_inet_fc_declan_rice/int_200227_inet_fc_declan_rice.jpg" alt=""></a>
						<div class="content">
							<span class="date">30 NOV 2019</span>
							<h3 class="title"><a href="#">Lorem Ipsum is simply dummy text of the printing</a></h3>
							<p class="text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
							<span class="author">By Admin</span>
							<span class="comments">0 Comments</span>
						</div>
					</div>
				</div>
				<!-- / end single news -->
			</div>
		</div>
	</section>

	<!-- / END NEWS SECTION -->



















	<!-- Footer -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script src="js/bootstrap\bootstrap.bundle.min.js"></script>
</body>

</html>