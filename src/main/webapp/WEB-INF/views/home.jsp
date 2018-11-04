<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main  -->

<div class="row">

	<div class="col-lg-12 text-center">
		<div class="jumbotron jumbotron-fluid">
			<div class="cover">
				<img id="cover"
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/music-note.png"
					alt="..." class="cover-size">
			</div>
			<div class="lecteur">
				<p id="song-title"></p>
				<audio id="myAudioPlayer" controls>
					<source src='<c:out value=""/>' type="">
					<!-- <source src="http://demo.dawan.biz/mohamed/song.ogg"
					type="audio/ogg" />
 -->
				</audio>
			</div>

			<div class="boutons">
				<div class="play"></div>
				<div class="pause"></div>
				<div class="next"></div>
				<div class="previous"></div>
			</div>
		</div>
		<hr>
	</div>



	<div class="col-8">

		<h2>Bienvenue sur North Cloud Radio</h2>
		<p>
			Grâce à notre Webradio, découvrez les créations de nos artistes
			locaux.<br /> Retrouvez vos animateurs radio préférés et la
			sélection des meilleurs tubes régionaux.
		</p>
	</div>
	<div class="col-4">
		<p>
		<h2>Évènements</h2>

		<ul class="list-group">
			<li class="list-group-item">Concerts</li>
			<li class="list-group-item">Festivals</li>
			<li class="list-group-item">Emissions</li>

		</ul>
	</div>

	<div class="col-8">

		<h2>North Cloud Radio Awards 2018</h2>
		<p>
			North Cloud Radio Awards 2018 : découvrez le palmarès.<br /> Chaque
			année, North Cloud Radio récompense les meilleurs Artistes de la
			région grâce aux North Cloud Radio Awards, des prix attribués par les
			auditeurs de la station.
		</p>

	</div>
	<div class="col-4">
		<p>
		<h2>Playlists</h2>

		<ul class="list-group list-group-flush">
			<li class="list-group-item"><a href="songs/category/Hip-Hop/${user.id}">Hip-Hop</a></li>
			<li class="list-group-item"><a href="songs/category/Instrumental/${user.id}">Instrumental</a></li>
			<li class="list-group-item"><a href="songs/category/Electro/${user.id}">Electro</a></li>
		</ul>
	</div>
</div>
<hr>


<div class="container">
	<h1 class="display-4 text-center">Les artistes NorthCloudRadio</h1>
	<!-- Example row of columns -->
	<div class="row">
		<div class="col-md-3">
			<figure class="cap-bot">
				<a href="songs/category/Hip-Hop/${user.id}">${user.username} <img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8"
					alt="..." class="img-thumbnail"></a>
				<figcaption class="figcaption">Artistes Hip-Hop</figcaption>
			</figure>
		</div>
		<div class="col-md-3">
			<figure class="cap-bot">
				<a href="songs/category/Instrumental/${user.id}">${user.username} <img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8"
					alt="..." class="img-thumbnail"></a>
				<figcaption class="figcaption">Artistes Instrumental</figcaption>
			</figure>
		</div>
		<div class="col-md-3">
			<figure class="cap-bot">
				<a href="songs/category/Chill/${user.id}">${user.username} <img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8"
					alt="..." class="img-thumbnail"></a>
				<figcaption class="figcaption">Artistes Chill</figcaption>
			</figure>
		</div>
		<div class="col-md-3">
			<figure class="cap-bot">
				<a href="songs/category/Trap/${user.id}">${user.username} <img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8"
					alt="..." class="img-thumbnail"></a>
				<figcaption class="figcaption">Artistes Trap</figcaption>
			</figure>
		</div>
		
		<div class="col-md-3">
			<figure class="cap-bot">
				<a href="songs/category/Dub/${user.id}">${user.username} <img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8"
					alt="..." class="img-thumbnail"></a>
				<figcaption class="figcaption">Artistes Dub</figcaption>
			</figure>

		</div>
		<div class="col-md-3">

			<figure class="cap-bot">
				<a href="songs/category/Electro/${user.id}">${user.username} <img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8"
					alt="..." class="img-thumbnail"></a>
				<figcaption class="figcaption">Artistes Electro</figcaption>
			</figure>
		</div>
	<div class="col-md-3">

			<figure class="cap-bot">
				<a href="songs/category/HybridStyle/${user.id}">${user.username} <img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8"
					alt="..." class="img-thumbnail"></a>
				<figcaption class="figcaption">Artistes Hybrid Style</figcaption>
			</figure>
		</div>
	<div class="col-md-3">

			<figure class="cap-bot">
				<a href="songs/category/AutreGenre/${user.id}">${user.username} <img
					src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8"
					alt="..." class="img-thumbnail"></a>
				<figcaption class="figcaption">Artistes Autre Genre</figcaption>
			</figure>
		</div>
	
	</div>

	<hr>


</div>

