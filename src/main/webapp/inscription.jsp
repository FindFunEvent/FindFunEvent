<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>


<head>
<head>

<link href="CSS/inscription.css" rel="stylesheet" type="text/css">



<!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Inscription FindFunEvent</title>
</head>

<body>
	<a class="dropdown-item" href="PageAccueil">retour à l'accueil</a>

	<div id="login">
		<h3 class="text-center text-white pt-5"></h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">

					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="Inscription"
							method="post">
							<h3 id="inscription">
								<b>Inscription</b>
							</h3>
							<div class="form-group">
								<label for="username" class="text-info"></label><br> <input
									type="text" placeholder="username" name="identifiant"
									id="username" class="form-control">
							</div>
							<div class="form-group">
								<label for="password" class="text-info"></label><br> <input
									type="password" name="motdepasse" id="password"
									placeholder="password" class="form-control">
							</div>
							<div class="form-group">
								<label for="mail" class="text-info"></label><br> <input
									type="text" name="mail" id="mail" placeholder="mail"
									class="form-control">
							</div>
							<div class="form-group">
								<label for="selection" class="text-info"></label> <select
									type="text" name="selection" id="selection"
									placeholder="sélection nationale" class="form-control">
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
									<optgroup label="BundesLiga">
										<option value="1899 Hoffenheim">1899 Hoffenheim</option>
										<option value="Bayern Munich">Bayern Munich</option>
										<option value="Bayer Leverkusen">Bayer Leverkusen</option>
										<option value="Borussia Dortmund">Borussia Dortmund</option>
										<option value="Borussia Mönchengladbach">Borussia
											Mönchengladbach</option>
										<option value="Eintracht Francfort">Eintracht
											Francfort</option>
										<option value="FC Augsbourg">FC Augsbourg</option>
										<option value="FC Cologne">FC Cologne</option>
										<option value="Fortuna Düsseldorf">Fortuna Düsseldorf</option>
										<option value="FSV Mayence 05">FSV Mayence 05</option>
										<option value="Hertha BSC Berlin ">Hertha BSC Berlin
										</option>
										<option value="RB Leipzig">RB Leipzig</option>
										<option value="SC Fribourg">SC Fribourg</option>
										<option value="SC Paderborn 07">SC Paderborn 07</option>
										<option value="Schalke 04">Schalke 04</option>
										<option value="Union Berlin">Union Berlin</option>
										<option value="VfL Wolfsbourg">VfL Wolfsbourg</option>
										<option value="Werder Brême">Werder Brême</option>
									</optgroup>
									<optgroup label="Serie A">
										<option value="As Rome"> As Rome</option>
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
								<label for="selection" class="text-info"></label> <select
									type="text" name="selection" id="selection"
									placeholder="sélection nationale" class="form-control">
									<optgroup label="sélection nationale">
										<option value="Afghanistan">Afghanistan</option>
										<option value="Afrique_du_Sud">Afrique du Sud</option>
										<option value="Albanie">Albanie</option>
										<option value="Algerie">Algérie</option>
										<option value="Allemagne">Allemagne</option>
										<option value="Andorre">Andorre</option>
										<option value="Angola">Angola</option>
										<option value="Antigua-et-Barbuda">Antigua-et-Barbuda</option>
										<option value="Arabie_saoudite">Arabie saoudite</option>
										<option value="Argentine">Argentine</option>
										<option value="Armenie">Arménie</option>
										<option value="Australie">Australie</option>
										<option value="Autriche">Autriche</option>
										<option value="Azerbaidjan">Azerbaïdjan</option>
										<option value="Bahamas">Bahamas</option>
										<option value="Bahrein">Bahreïn</option>
										<option value="Bangladesh">Bangladesh</option>
										<option value="Barbade">Barbade</option>
										<option value="Belau">Belau</option>
										<option value="Belgique">Belgique</option>
										<option value="Belize">Belize</option>
										<option value="Benin">Bénin</option>
										<option value="Bhoutan">Bhoutan</option>
										<option value="Bielorussie">Biélorussie</option>
										<option value="Birmanie">Birmanie</option>
										<option value="Bolivie">Bolivie</option>
										<option value="Bosnie-Herzégovine">Bosnie-Herzégovine</option>
										<option value="Botswana">Botswana</option>
										<option value="Bresil">Brésil</option>
										<option value="Brunei">Brunei</option>
										<option value="Bulgarie">Bulgarie</option>
										<option value="Burkina">Burkina</option>
										<option value="Burundi">Burundi</option>
										<option value="Cambodge">Cambodge</option>
										<option value="Cameroun">Cameroun</option>
										<option value="Canada">Canada</option>
										<option value="Cap-Vert">Cap-Vert</option>
										<option value="Chili">Chili</option>
										<option value="Chine">Chine</option>
										<option value="Chypre">Chypre</option>
										<option value="Colombie">Colombie</option>
										<option value="Comores">Comores</option>
										<option value="Congo">Congo</option>
										<option value="Cook">Cook</option>
										<option value="Coree_du_Nord">Corée du Nord</option>
										<option value="Coree_du_Sud">Corée du Sud</option>
										<option value="Costa_Rica">Costa Rica</option>
										<option value="Cote_Ivoire">Côte d'Ivoire</option>
										<option value="Croatie">Croatie</option>
										<option value="Cuba">Cuba</option>
										<option value="Danemark">Danemark</option>
										<option value="Djibouti">Djibouti</option>
										<option value="Dominique">Dominique</option>
										<option value="Egypte">Égypte</option>
										<option value="Emirats_arabes_unis">Émirats arabes
											unis</option>
										<option value="Equateur">Équateur</option>
										<option value="Erythree">Érythrée</option>
										<option value="Espagne">Espagne</option>
										<option value="Estonie">Estonie</option>
										<option value="Etats-Unis">États-Unis</option>
										<option value="Ethiopie">Éthiopie</option>
										<option value="Fidji">Fidji</option>
										<option value="Finlande">Finlande</option>
										<option selected="yes" value="France">France</option>
										<option value="Gabon">Gabon</option>
										<option value="Gambie">Gambie</option>
										<option value="Georgie">Géorgie</option>
										<option value="Ghana">Ghana</option>
										<option value="Grèce">Grèce</option>
										<option value="Grenade">Grenade</option>
										<option value="Guatemala">Guatemala</option>
										<option value="Guinee">Guinée</option>
										<option value="Guinee-Bissao">Guinée-Bissao</option>
										<option value="Guinee_equatoriale">Guinée équatoriale</option>
										<option value="Guyana">Guyana</option>
										<option value="Haiti">Haïti</option>
										<option value="Honduras">Honduras</option>
										<option value="Hongrie">Hongrie</option>
										<option value="Inde">Inde</option>
										<option value="Indonesie">Indonésie</option>
										<option value="Iran">Iran</option>
										<option value="Iraq">Iraq</option>
										<option value="Irlande">Irlande</option>
										<option value="Islande">Islande</option>
										<option value="Israël">Israël</option>
										<option value="Italie">Italie</option>
										<option value="Jamaique">Jamaïque</option>
										<option value="Japon">Japon</option>
										<option value="Jordanie">Jordanie</option>
										<option value="Kazakhstan">Kazakhstan</option>
										<option value="Kenya">Kenya</option>
										<option value="Kirghizistan">Kirghizistan</option>
										<option value="Kiribati">Kiribati</option>
										<option value="Koweit">Koweït</option>
										<option value="Laos">Laos</option>
										<option value="Lesotho">Lesotho</option>
										<option value="Lettonie">Lettonie</option>
										<option value="Liban">Liban</option>
										<option value="Liberia">Liberia</option>
										<option value="Libye">Libye</option>
										<option value="Liechtenstein">Liechtenstein</option>
										<option value="Lituanie">Lituanie</option>
										<option value="Luxembourg">Luxembourg</option>
										<option value="Macedoine">Macédoine</option>
										<option value="Madagascar">Madagascar</option>
										<option value="Malaisie">Malaisie</option>
										<option value="Malawi">Malawi</option>
										<option value="Maldives">Maldives</option>
										<option value="Mali">Mali</option>
										<option value="Malte">Malte</option>
										<option value="Maroc">Maroc</option>
										<option value="Marshall">Marshall</option>
										<option value="Maurice">Maurice</option>
										<option value="Mauritanie">Mauritanie</option>
										<option value="Mexique">Mexique</option>
										<option value="Micronesie">Micronésie</option>
										<option value="Moldavie">Moldavie</option>
										<option value="Monaco">Monaco</option>
										<option value="Mongolie">Mongolie</option>
										<option value="Mozambique">Mozambique</option>
										<option value="Namibie">Namibie</option>
										<option value="Nauru">Nauru</option>
										<option value="Nepal">Népal</option>
										<option value="Nicaragua">Nicaragua</option>
										<option value="Niger">Niger</option>
										<option value="Nigeria">Nigeria</option>
										<option value="Niue">Niue</option>
										<option value="Norvège">Norvège</option>
										<option value="Nouvelle-Zelande">Nouvelle-Zélande</option>
										<option value="Oman">Oman</option>
										<option value="Ouganda">Ouganda</option>
										<option value="Ouzbekistan">Ouzbékistan</option>
										<option value="Pakistan">Pakistan</option>
										<option value="Panama">Panama</option>
										<option value="Papouasie-Nouvelle_Guinee">Papouasie -
											Nouvelle Guinée</option>
										<option value="Paraguay">Paraguay</option>
										<option value="Pays-Bas">Pays-Bas</option>
										<option value="Perou">Pérou</option>
										<option value="Philippines">Philippines</option>
										<option value="Pologne">Pologne</option>
										<option value="Portugal">Portugal</option>
										<option value="Qatar">Qatar</option>
										<option value="Republique_centrafricaine">République
											centrafricaine</option>
										<option value="Republique_dominicaine">République
											dominicaine</option>
										<option value="Republique_tcheque">République tchèque</option>
										<option value="Roumanie">Roumanie</option>
										<option value="Royaume-Uni">Royaume-Uni</option>
										<option value="Russie">Russie</option>
										<option value="Rwanda">Rwanda</option>
										<option value="Saint-Christophe-et-Nieves">Saint-Christophe-et-Niévès</option>
										<option value="Sainte-Lucie">Sainte-Lucie</option>
										<option value="Saint-Marin">Saint-Marin</option>
										<option value="Saint-Siège">Saint-Siège, ou leVatican</option>
										<option value="Saint-Vincent-et-les_Grenadines">Saint-Vincent-et-les
											Grenadines</option>
										<option value="Salomon">Salomon</option>
										<option value="Salvador">Salvador</option>
										<option value="Samoa_occidentales">Samoa occidentales</option>
										<option value="Sao_Tome-et-Principe">Sao
											Tomé-et-Principe</option>
										<option value="Senegal">Sénégal</option>
										<option value="Seychelles">Seychelles</option>
										<option value="Sierra_Leone">Sierra Leone</option>
										<option value="Singapour">Singapour</option>
										<option value="Slovaquie">Slovaquie</option>
										<option value="Slovenie">Slovénie</option>
										<option value="Somalie">Somalie</option>
										<option value="Soudan">Soudan</option>
										<option value="Sri_Lanka">Sri Lanka</option>
										<option value="Sued">Suède</option>
										<option value="Suisse">Suisse</option>
										<option value="Suriname">Suriname</option>
										<option value="Swaziland">Swaziland</option>
										<option value="Syrie">Syrie</option>
										<option value="Tadjikistan">Tadjikistan</option>
										<option value="Tanzanie">Tanzanie</option>
										<option value="Tchad">Tchad</option>
										<option value="Thailande">Thaïlande</option>
										<option value="Togo">Togo</option>
										<option value="Tonga">Tonga</option>
										<option value="Trinite-et-Tobago">Trinité-et-Tobago</option>
										<option value="Tunisie">Tunisie</option>
										<option value="Turkmenistan">Turkménistan</option>
										<option value="Turquie">Turquie</option>
										<option value="Tuvalu">Tuvalu</option>
										<option value="Ukraine">Ukraine</option>
										<option value="Uruguay">Uruguay</option>
										<option value="Vanuatu">Vanuatu</option>
										<option value="Venezuela">Venezuela</option>
										<option value="Viet_Nam">Viêt Nam</option>
										<option value="Yemen">Yémen</option>
										<option value="Yougoslavie">Yougoslavie</option>
										<option value="Zaire">Zaïre</option>
										<option value="Zambie">Zambie</option>
										<option value="Zimbabwe">Zimbabwe</option>
									</optgroup>
								</select>
							</div>
							<div class="form-group">
								<label for="remember-me" class="text-info"></label><br> <input
									type="submit" name="submit" class="btn btn-info btn-md"
									value="Prends ta license champion">
							</div>

						</form>
					</div>


				</div>
			</div>
		</div>
	</div>
	<script>
		var verification = <c:out value="${sessionScope.verif}"/>
		if (verification == 1) {
			alert("Informations manquantes !")
		} else if (verification == 2) {
			alert("Trop tard, Identifiant déjà utilisé!! Limace")
		}
	</script>

	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>