<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>
    <title>Part 8 Ex 1</title>
    <link href="CSS\bootstrap\bootstrap.min.css" rel="stylesheet" />
    <style>
    
    #message{
    color: white;}
    
    #recherche{
    text-align: center;}
    
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="Part08_ex01v0.html">FindFunEvent</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="Part08_ex01v0.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Part08_ex02v0.html">Carousel</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
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
            
            <div>
		<p id="message">Connectez-vous / <a href=inscription.jsp>Inscrivez-vous</a></p>


		<form action="PageAccueil" method="post" id="champConnexion">
			<label for="id"></label> 
			<input type="text" name="id"
				id="id" placeholder="username"/><br> <label for="mp"></label> 
				<input type="password" name="mp" placeholder="password"/><br> <label for="Envoyer"></label>
			<input type="submit" value="Connexion" id="Envoyer"></input>

		</form>
	</div>
        </div>
    </nav>

    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="image\Ccg9vdw.jpg" class="d-block w-100" alt="image\Ccg9vdw.jpg">
            <div class="carousel-caption d-none d-md-block">
              <h5>NBA legends</h5>
              <p>Le fameux tirage de langue de Mike</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="image\mike_scott_nba_playoffs_nba_101668_1920x1080.jpg" class="d-block w-100" alt="image\Lonely-island-the-island-s-three-palm-trees_1920x1080.jpg">
            <div class="carousel-caption d-none d-md-block">
              <h5>Gros tomar</h5>
              <p>Posterisation coming soon</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="image\jeremy_evans_basketball_player_nba_utah_jazz_98105_1920x1080.jpg" class="d-block w-100" alt="image\090727122545_76.jpg">
            <div class="carousel-caption d-none d-md-block">
              <h5>Dunk spectaculaires</h5>
              <p>Les basketteurs de la NBA assurent le spectacle !</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="image\videos-les-discours-dintronisati.jpg" class="d-block w-100" alt="image\depositphotos_56179963-stock-video-small-desert-island-with-palm.jpg">
            <div class="carousel-caption d-none d-md-block">
              <h5>Le grand Shaq</h5>
              <p>Attention chient très méchant</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    
    <div id="content">
        <p class="alert alert-danger">Here is the code</p>
    </div>
    <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="card" style="width: 18rem;">
                <img src="image\celtics.png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Boston Celtics</h5>
                  <p class="card-text">17 titres de champions sur 21 finales jouées.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            
          </div>
          <div class="col-sm-4">
            <div class="card" style="width: 18rem;">
                <img src="image\sans-titre.png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">San Antonio Spurs</h5>
                  <p class="card-text"></p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
          </div>
        </div>
          <div class="col-sm-4">
            <div class="card" style="width: 18rem;">
                <img src="image\thumb-1920-894722.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Los Angeles Lakers</h5>
                  <p class="card-text">16 titres de champions sur 31 finales jouées.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
          </div>
        </div>
      </div>
    </div>
      <!-- Footer -->
<footer class="page-footer font-small mdb-color darken-3 pt-4">

    <!-- Footer Elements -->
    <div class="container">
  
      <!--Grid row-->
      <div class="row d-flex justify-content-center">
  
        <!--Grid column-->
        <div class="col-md-6">
  
          <!-- Video -->
          <div class="embed-responsive embed-responsive-16by9 mb-4">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/ASGBDmZj6o0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>          </div>
  
        </div>
        <!--Grid column-->
  
      </div>
      <!--Grid row-->
  
    </div>
    <!-- Footer Elements -->
  
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2020 Copyright:
      <a href="https://mdbootstrap.com/education/bootstrap/"> MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
  
  </footer>
  <!-- Footer -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap\bootstrap.bundle.min.js"></script>
</body>

</html>