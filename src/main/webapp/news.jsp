<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />



<head>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="CSS/article.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,600,700|Ubuntu:400,700&display=swap"
	rel="stylesheet">



<title>FindFunEvent</title>
<link href="CSS/news.css" rel="stylesheet" />

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
						<a class="dropdown-item" href="Pagejeu">En attendant la fin du
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
						<a class="dropdown-item" href="Jeu">Préférences</a>
					</div></li>
<<<<<<< HEAD
=======

>>>>>>> 55ef8a4cb02a039789d2344ef8399b370d5fdf3e
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
				<c:when test="${sessionScope.pseudoCompteActuel !=null}">
					<form action="Deconnexion" method="post" id="champDeconnexion">
						<input type="submit" value="Deconnexion" id="Envoyer"></input>
					</form>
				</c:when>

			</c:choose>
		</div>


	</nav>



	<!-- START NEWS SECTION -->

<<<<<<< HEAD
=======

>>>>>>> 55ef8a4cb02a039789d2344ef8399b370d5fdf3e
	<section class="section-news">
		<div class="container">
			<div class="header-section">
				<h3 class="small-title">
<<<<<<< HEAD
					<span></span>Recent News
				</h3>
				<h2 class="title">News & Articles</h2>
=======
					<span></span> Ce qu'il y a de nouveau
				</h3>
				<h2 class="title">News toute fraiches</h2>
>>>>>>> 55ef8a4cb02a039789d2344ef8399b370d5fdf3e
			</div>
			<div class="row">
				<!-- start single news ARTICLE 1-->
				<div class="col-12 col-md-6">
					<div class="single-news">
<<<<<<< HEAD
						<a href="Article1">
							<div id="contenant2"></div>
						</a>
						<div class="content">
							<span class="date"> <script>
								document.write(new Date().toLocaleDateString());
							</script></span>
							<h3 class="title">
								<a href="Article1">
									<div id="contenant1"></div>
								</a>
							</h3>
							<p class="text">
								<div id="contenant3"></div>
							</p>
							<span class="author">By <span id="contenant6"></span><br>
								<span class="comments">0 Comments</span>
						
=======
						<a href="#"><img
							src="https://a.espncdn.com/photo/2020/0227/r672282_1296x729_16-9.jpg"
							alt=""></a>
						<div class="content">
							<span class="date">30 NOV 2019</span>
							<h3 class="title">
								<a href="#">Lorem Ipsum is simply dummy text of the printing</a>
							</h3>
							<p class="text">There are many variations of passages of
								Lorem Ipsum available, but the majority have suffered alteration
								in some form, by injected humour, or randomised words which
								don't look even slightly believable.</p>
							<span class="author">By Admin</span> <span class="comments">0
								Comments</span>
>>>>>>> 55ef8a4cb02a039789d2344ef8399b370d5fdf3e
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 1-->

				<!-- start single news ARTICLE 2-->
				<div class="col-12 col-md-6">
					<div class="single-news">
<<<<<<< HEAD
						<a href="Article2">
							<div id="contenant9"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article2">
									<div id="contenant8"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant10"></div>
							</p>
							<span class="author">By <span id="contenant13"></span><br>
								<span class="comments">0 Comments</span>
						
=======
						<a href="#"><img
							src="https://a.espncdn.com/media/motion/ESPNi/2020/0227/int_200227_inet_fc_declan_rice/int_200227_inet_fc_declan_rice.jpg"
							alt=""></a>
						<div class="content">
							<span class="date">30 NOV 2019</span>
							<h3 class="title">
								<a href="#">Lorem Ipsum is simply dummy text of the printing</a>
							</h3>
							<p class="text">There are many variations of passages of
								Lorem Ipsum available, but the majority have suffered alteration
								in some form, by injected humour, or randomised words which
								don't look even slightly believable.</p>
							<span class="author">By Admin</span> <span class="comments">0
								Comments</span>
>>>>>>> 55ef8a4cb02a039789d2344ef8399b370d5fdf3e
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 2-->

				<!-- start single news ARTICLE 3-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article3">
							<div id="contenant16"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article3">
									<div id="contenant15"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant17"></div>
							</p>
							<span class="author">By <span id="contenant20"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 3-->

				<!-- start single news ARTICLE 4-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article4">
							<div id="contenant23"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article4">
									<div id="contenant22"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant24"></div>
							</p>
							<span class="author">By <span id="contenant27"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 4-->
				
				<!-- start single news ARTICLE 5-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article5">
							<div id="contenant30"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article5">
									<div id="contenant29"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant31"></div>
							</p>
							<span class="author">By <span id="contenant34"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 5-->

				<!-- start single news ARTICLE 6-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article6">
							<div id="contenant37"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article6">
									<div id="contenant36"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant38"></div>
							</p>
							<span class="author">By <span id="contenant41"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 6-->
				<!-- start single news ARTICLE 7-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article6">
							<div id="contenant44"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article7">
									<div id="contenant43"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant45"></div>
							</p>
							<span class="author">By <span id="contenant48"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 7-->
				<!-- start single news ARTICLE 8-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article8">
							<div id="contenant51"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article8">
									<div id="contenant50"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant52"></div>
							</p>
							<span class="author">By <span id="contenant56"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 8-->
				<!-- start single news ARTICLE 9-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article9">
							<div id="contenant58"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article9">
									<div id="contenant57"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant59"></div>
							</p>
							<span class="author">By <span id="contenant63"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 9-->
				<!-- start single news ARTICLE 10-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article10">
							<div id="contenant65"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article10">
									<div id="contenant64"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant66"></div>
							</p>
							<span class="author">By <span id="contenant70"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 10-->
				<!-- start single news ARTICLE 11-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article11">
							<div id="contenant72"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article11">
									<div id="contenant71"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant73"></div>
							</p>
							<span class="author">By <span id="contenant77"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 11-->
				<!-- start single news ARTICLE 12-->
				<div class="col-12 col-md-6">
					<div class="single-news">
						<a href="Article12">
							<div id="contenant79"></div>
						</a>
						<div class="content">
							<span class="date">
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
							</span>
							<h3 class="title">
								<a href="Article12">
									<div id="contenant78"></div>
								</a>
							</h3>
							<p class="text">
								
							<div id="contenant80"></div>
							</p>
							<span class="author">By <span id="contenant84"></span><br>
								<span class="comments">0 Comments</span>
						
						</div>
					</div>
				</div>
				<!-- / end single news ARTICLE 12-->

				
			</div>
		</div>
	</section>

	<!-- / END NEWS SECTION -->








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
	<script src="js/articles.js"></script>
</body>

</html>