<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Main  -->

<div class="row">
	<div class="col-lg-12 text-center">
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
	<!-- 	<div class="col-lg-12 text-center"> -->
	<!-- 	<div data-slick='{"slidesToShow": 4, "slidesToScroll": 4}'> -->
	<!--   <div><h3>1</h3></div> -->
	<!--   <div><h3>2</h3></div> -->
	<!--   <div><h3>3</h3></div> -->
	<!--   <div><h3>4</h3></div> -->
	<!--   <div><h3>5</h3></div> -->
	<!--   <div><h3>6</h3></div> -->
	<!-- </div> -->
	<!-- </div> -->


	<div class="col-8">

		<h2>Bienvenue sur notre radio</h2>

		<p>
			Grâce à notre Webradio, Découvrez les créations de nos artistes
			locaux.<br /> Retrouvez vos animateurs radio préférés et la
			sélection des meilleurs tubes régionaux
		</p>
	</div>
	<div class="col-4">
		<p>
		<h2>Evénements</h2>

		<ul class="list-group">
			<li class="list-group-item">Concerts</li>
			<li class="list-group-item">Festivals</li>
			<li class="list-group-item">Emissions</li>

		</ul>
	</div>

	<div class="col-8">

		<h2>North Cloud Radio Awards 2018</h2>
		<p>North Cloud Radio Awards 2018 : découvrez le palmarès Chaque
			année, North Cloud Radio récompense les meilleurs Artistes de la
			région grâce aux North Cloud Radio Awards, des prix attribués par les
			auditeurs de la station.</p>

	</div>
	<div class="col-4">
		<h2>Playlists</h2>

		<ul class="list-group">
			<li>Rap</li>
			<li>Hip-hop</li>
			<li>Dance</li>

		</ul>
		<p>
	</div>
</div>