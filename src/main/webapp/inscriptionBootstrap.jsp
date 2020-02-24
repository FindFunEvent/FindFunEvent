<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<link href="CSS/bootstrap/bootstrap.min.css" rel="stylesheet">


<head>





<!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Inscription FindFunEvent</title>
</head>

<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                   
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="Inscription" method="post">
                            <h3 class="text-center text-info">Inscription</h3>
                            <div class="form-group">
                                <label for="username" class="text-info" ></label><br>
                                <input type="text" placeholder="username"name="identifiant" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info" ></label><br>
                                <input type="password" name="motdepasse" id="password" placeholder="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="mail" class="text-info" ></label><br>
                                <input type="text" name="mail" id="mail" placeholder="mail" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="ville" class="text-info" ></label><br>
                                <input type="text" name="ville" id="ville" placeholder="ville" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                          
                        </form>
                     </div>
                     
                     
                </div>
            </div>
        </div>
    </div>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>