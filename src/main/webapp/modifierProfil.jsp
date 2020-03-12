<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>
<title>FindFunEvent - News</title>
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
						<a class="dropdown-item" href="PageJeu">En attendant la fin du
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
				<c:when test="${sessionScope.pseudoCompteActuel != null}">Bonjour 
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

	<div>
		<h1>Côté club :</h1>
		<div class="container">
			<div class="form-group">
				<label for="club" class="text-info"></label> <select type="text"
					name="club" id="club" placeholder="Club" class="form-control">
					<optgroup label="Ligue 1">
						<option value="Amiens">Amiens</option>
						<option value="Angers">Angers</option>
						<option value="Bordeaux">Bordeaux</option>
						<option value="Brest">Brest</option>
						<option value="Dijon">Dijon</option>
						<option value="Lille">Lille</option>
						<option value="Lyon">Lyon</option>
						<option value="Marseille">Marseille</option>
						<option value="Metz">Metz</option>
						<option value="Monaco">Monaco</option>
						<option value="Montpellier">Montpellier</option>
						<option value="Nantes">Nantes</option>
						<option value="Nice">Nice</option>
						<option value="Nîmes">Nîmes</option>
						<option value="Paris-SG">Paris-SG</option>
						<option value="Reims">Reims</option>
						<option value="Rennes">Rennes</option>
						<option value="Saint-Étienne">Saint-Étienne</option>
						<option value="Strasbourg">Strasbourg</option>
						<option value="Toulouse">Toulouse</option>
					</optgroup>
					<optgroup label="Premier league">
						<option value="Arsenal">Arsenal</option>
						<option value="Aston Villa">Aston Villa</option>
						<option value="Bournemouth">Bournemouth</option>
						<option value="Brighton">Brighton</option>
						<option value="Burnley">Burnley</option>
						<option value="Chelsea">Chelsea</option>
						<option value="Crystal Palace">Crystal Palace</option>
						<option value="Everton">Everton</option>
						<option value="Leicester">Leicester</option>
						<option value="Liverpool">Liverpool</option>
						<option value="Manchester City">Manchester City</option>
						<option value="Manchester United">Manchester United</option>
						<option value="Newcastle">Newcastle</option>
						<option value="Norwich">Norwich</option>
						<option value="Sheffield">Sheffield</option>
						<option value="Southampton">Southampton</option>
						<option value="Tottenham">Tottenham</option>
						<option value="Watford">Watford</option>
						<option value="West Ham">West Ham</option>
						<option value="Wolverhampton">Wolverhampton</option>
					</optgroup>
					<optgroup label="Liga">
						<option value="Athletic Bilbao">Athletic Bilbao</option>
						<option value="Atlético Madrid">Atlético Madrid</option>
						<option value="Betis Séville">Betis Séville</option>
						<option value="CD Leganés">CD Leganés</option>
						<option value="Celta Vigo">Celta Vigo</option>
						<option value="Deportivo Alavés">Deportivo Alavés</option>
						<option value="Espanyol Barcelone">Espanyol Barcelone</option>
						<option value="FC Barcelone">FC Barcelone</option>
						<option value="FC Séville">FC Séville</option>
						<option value="Getafe CF">Getafe CF</option>
						<option value="Granada CF">Granada CF</option>
						<option value="Levante UD">Levante UD</option>
						<option value="Osasuna Pampelune">Osasuna Pampelune</option>
						<option value="RCD Majorque">RCD Majorque</option>
						<option value="Real Madrid">Real Madrid</option>
						<option value="Real Sociedad">Real Sociedad</option>
						<option value="Real Valladolid">Real Valladolid</option>
						<option value="SD Eibar">SD Eibar</option>
						<option value="Villarreal CF">Villarreal CF</option>
						<option value="Valence CF">Valence CF</option>
					</optgroup>
					<optgroup label="Bundesliga">
						<option value="1899 Hoffenheim">1899 Hoffenheim</option>
						<option value="Bayern Munich">Bayern Munich</option>
						<option value="Bayer Leverkusen">Bayer Leverkusen</option>
						<option value="Borussia Dortmund">Borussia Dortmund</option>
						<option value="Borussia Mönchengladbach">Borussia
							Mönchengladbach</option>
						<option value="Eintracht Francfort">Eintracht Francfort</option>
						<option value="FC Augsbourg">FC Augsbourg</option>
						<option value="FC Cologne">FC Cologne</option>
						<option value="Fortuna Düsseldorf">Fortuna Düsseldorf</option>
						<option value="FSV Mayence 05">FSV Mayence 05</option>
						<option value="Hertha BSC Berlin ">Hertha BSC Berlin</option>
						<option value="RB Leipzig">RB Leipzig</option>
						<option value="SC Fribourg">SC Fribourg</option>
						<option value="SC Paderborn 07">SC Paderborn 07</option>
						<option value="Schalke 04">Schalke 04</option>
						<option value="Union Berlin">Union Berlin</option>
						<option value="VfL Wolfsbourg">VfL Wolfsbourg</option>
						<option value="Werder Brême">Werder Brême</option>
					</optgroup>
					<optgroup label="Serie A">
						<option value="As Rome">As Rome</option>
						<option value="Bergame">Bergame</option>
						<option value="Bologne">Bologne</option>
						<option value="Brescia">Brescia</option>
						<option value="Cagliari">Cagliari</option>
						<option value="Fiorentina">Fiorentina</option>
						<option value="Genoa">Genoa</option>
						<option value="Hellas Verone">Hellas Verone</option>
						<option value="Inter Milan">Inter Milan</option>
						<option value="Juventus Turin">Juventus Turin</option>
						<option value="Lazio Rome">Lazio Rome</option>
						<option value="Lecce">Lecce</option>
						<option value="Milan AC">Milan AC</option>
						<option value="Naples">Naples</option>
						<option value="Parme">Parme</option>
						<option value="Sampdoria Gênes">Sampdoria Gênes</option>
						<option value="Sassuolo">Sassuolo</option>
						<option value="Spal 2013">Spal 2013</option>
						<option value="Torino">Torino</option>
						<option value="Udinese">Udinese</option>
					</optgroup>
				</select>
			</div>
			<div class="form-group">
				<label for="remember-me" class="text-info"></label><br> <input
					type="submit" name="submit" class="btn btn-info btn-md"
					value="ajouter le club">
			</div>
			
		</div>
	</div>





	

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
</body>

</html>