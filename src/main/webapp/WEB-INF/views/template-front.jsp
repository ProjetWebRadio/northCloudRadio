<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
 	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
   	<meta charset="utf-8" />
   
    <title>Lille Culture Events</title>
    
    <base href="<%=request.getScheme()+"://"+request.getServerName()+":" + request.getServerPort()+request.getContextPath()+"/" %>" />
		
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
    
    <style>
		body {
		  padding-top: 54px;
		}
		
		@media (min-width: 992px) {
		  body {
		    padding-top: 56px;
		  }
		}
		
		.portfolio-item {
		  margin-bottom: 30px;
		}
		
		.pagination {
		  margin-bottom: 30px;
		}
    </style>
      
</head>

  
  <body>

    <!-- Navigation -->
	 <nav class="navbar navbar-expand-lg navbar-light bg-light">

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					</a></li>
					<li class="nav-item"><a class="nav-link" href="artiste">Artiste</a></li>
					<li class="nav-item"><a class="nav-link" href="upload">Upload</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Liste des morceaux</a></li>
				    <li class="nav-item"><a class="nav-link" href="inscription">Inscription</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0" method="get" action="songs/search">
					<input class="form-control mr-sm-2" type="search" placeholder="Search" name="artistName" />
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
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<span class="copyright">Copyright &copy; Your Website 2018</span>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>

  </body>

</html>