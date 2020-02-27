<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>



<title>FindFunEvent</title>
<link href="CSS/pageAccueil.css" rel="stylesheet" />


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
					aria-expanded="false"> Pr�f�rences </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Mon club</a> <a
							class="dropdown-item" href="#">Ma s�lection Nationale</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="Pagejeu">En attendant la fin du
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

			<!-- L'attribut "connecte"=1 signifie que l'utilisateur est bien connect� : affichage de message de bienvenue (sinon, affiche Veuillez renseigner vos identifiants) -->
			<c:choose>
				<c:when test="${sessionScope.connecte ==1}">Bonjour 
			<c:out value="${sessionScope.pseudoCompteActuel}" /> (connect�)
			</c:when>
			</c:choose>
			<script>
				var login = <c:out value="${sessionScope.connecte}"/>
				if (login == 1) {
					alert("Vous �tes connect�")
				}
			</script>


			<!-- Apparition du bouton Deconnexion quand l'utilisateur est connect� : lorsque l'utulisateur appuie sur le bouton D�connexion, jsp redirig�e vers servlet Deconnexion qui d�truit la session et renvoit � pageAccueil.jsp -->
			<c:choose>
				<c:when test="${sessionScope.connecte !=null}">
					<form action="Deconnexion" method="post" id="champDeconnexion">
						<input type="submit" value="Deconnexion" id="Envoyer"></input>
					</form>
				</c:when>

			</c:choose>
		</div>


	</nav>




	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="image\francecroatie.jpg" class="d-block w-100"
					alt="image\Ccg9vdw.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Champion 2018</h5>
					<p>Le fameux tirage de langue de Mike</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="image\cr7.jpg" class="d-block w-100"
					alt="image\Lonely-island-the-island-s-three-palm-trees_1920x1080.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Champion 1998</h5>
					<p>Posterisation coming soon</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="image\haaland.jpg" class="d-block w-100"
					alt="image\090727122545_76.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>CR7</h5>
					<p>Les basketteurs de la NBA assurent le spectacle !</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="image\Ccg9vdw.jpg" class="d-block w-100"
					alt="image\depositphotos_56179963-stock-video-small-desert-island-with-palm.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5>Le grand Shaq</h5>
					<p>Attention chient tr�s m�chant</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div id="content">
		<p class="alert alert-danger"></p>
	</div>

	<!-- Footer Elements -->

	<!-- Copyright -->
	<div class="footer-copyright text-center py-3">
		� 2020 Copyright: <a
			href="https://mdbootstrap.com/education/bootstrap/">
			MDBootstrap.com</a>
	</div>
	<!-- Copyright -->

	<div class="container">
		<!--Grid row-->
		<div class="row d-flex justify-content-center">
			<!--Grid column-->
			<div class="col-md-6">
				<!-- Video -->
				<div class="embed-responsive embed-responsive-16by9 mb-4">
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/l8VurW-_na0" frameborder="0"
						allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
			</div>
		</div>
	</div>

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