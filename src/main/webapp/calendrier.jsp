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
                        <a class="dropdown-item" href="Pagejeu">En attendant la fin du match</a>
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
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
  <!-- inspired by http://colorhunt.co/c/8184 and 
    https://dribbble.com/shots/2407357-Calendar%60 -->

    <div class="container">
      <div class="calendar">
        <div class="front">
          <div class="current-date">
            <h1>Friday 15th</h1>
            <h1>January 2016</h1>	
          </div>

          <div class="current-month">
            <ul class="week-days">
              <li>MON</li>
              <li>TUE</li>
              <li>WED</li>
              <li>THU</li>
              <li>FRI</li>
              <li>SAT</li>
              <li>SUN</li>
            </ul>

            <div class="weeks">
              <div class="first">
                <span class="last-month">28</span>
                <span class="last-month">29</span>
                <span class="last-month">30</span>
                <span class="last-month">31</span>
                <span>01</span>
                <span>02</span>
                <span>03</span>
              </div>

              <div class="second">
                <span>04</span>
                <span>05</span>
                <span class="event">06</span>
                <span>07</span>
                <span>08</span>
                <span>09</span>
                <span>10</span>
              </div>

              <div class="third">
                <span>11</span>
                <span>12</span>
                <span>13</span>
                <span>14</span>
                <span class="active">15</span>
                <span>16</span>
                <span>17</span>
              </div>

              <div class="fourth">
                <span>18</span>
                <span>19</span>
                <span>20</span>
                <span>21</span>
                <span>22</span>
                <span>23</span>
                <span>24</span>
              </div>

              <div class="fifth">
                <span>25</span>
                <span>26</span>
                <span>27</span>
                <span>28</span>
                <span>29</span>
                <span>30</span>
                <span>31</span>
              </div>
            </div>
          </div>
        </div>

        <div class="back">
          <input placeholder="What's the event?">
          <div class="info">
            <div class="date">
              <p class="info-date">
              Date: <span>Jan 15th, 2016</span>
              </p>
              <p class="info-time">
                Time: <span>6:35 PM</span>
              </p>
            </div>
            <div class="address">
              <p>
                Address: <span>129 W 81st St, New York, NY</span>
              </p>
            </div>
            <div class="observations">
              <p>
                Observations: <span>Be there 15 minutes earlier</span>
              </p>
            </div>
          </div>

          <div class="actions">
            <button class="save">
              Save <i class="ion-checkmark"></i>
            </button>
            <button class="dismiss">
              Dismiss <i class="ion-android-close"></i>
            </button>
          </div>
        </div>

      </div>
    </div>
<br><script src="js/calendar.js"></script></br>
<footer class="page-footer font-small mdb-color darken-3 pt-4">
  </footer>
  <!-- Footer -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap\bootstrap.bundle.min.js"></script>
</body>
    </html>