<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta charset="utf-8" />

<title>North Cloud Radio</title>

<base
	href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/"%>" />

<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="resources/css/style.css" rel="stylesheet" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>


<body>



	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active"><a class="nav-link" href="">Home
				</a></li>
				<li class="nav-item"><img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/logo.png"
					alt="..." class="logo-menu"></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Genre </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Rap</a> <a class="dropdown-item"
							href="#">House</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Autres Genres</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="upload">Upload</a></li>
				<li class="nav-item"><a class="nav-link" href="artists">Liste
						des artistes</a></li>
				<li class="nav-item"><a class="nav-link" href="songs">Liste
						des morceaux</a></li>

			</ul>
			<form class="form-inline my-2 my-lg-0" method="get"
				action="songs/search">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" name="artistName" />
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
			<ul class="navbar-nav mt-2 mt-lg-0">
				<c:if test="${empty sessionScope.user_name }">
					<li class="nav-item"><a class="nav-link" href="authenticate">Connexion</a></li>
					<li class="nav-item"><a class="nav-link" href="inscription">Inscription</a></li>
				</c:if>
				<c:if test="${not empty sessionScope.user_name }">
					<li class="nav-item"><a class="nav-link" href="profil">Mon
							profil</a></li>
					<li class="nav-item"><a class="nav-link" href="disconnect">Déconnexion</a></li>
				</c:if>
			</ul>
			<form class="form-inline my-2 my-lg-0" method="get"
				action="songs/search">
				<input id="artist-search" class="form-control mr-sm-2" type="text"
					placeholder="Cherchez un artiste" name="artistName"
					autocomplete="off" />
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<decorator:body />
	</div>

	<!-- Footer -->
	<footer>
		<hr />
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; North Cloud Radio
						2018</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-twitter"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-facebook"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-linkedin"></i>
						</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>

		</div>
		<!-- /container -->

	</footer>

	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script type="text/javascript"
		src="./resources/jquery-ui/jquery.parallax-1.1.3.js"></script>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
	<script src="resources/jquery-ui/jquery.parallax-1.1.3.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>

</html>