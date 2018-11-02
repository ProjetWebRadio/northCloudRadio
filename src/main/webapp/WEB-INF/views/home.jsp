<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main  -->

<div class="row" >

	<div class="col-lg-12 text-center" >
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
           Grâce à notre Webradio, découvrez les créations de nos artistes locaux.<br/> 
           Retrouvez vos animateurs radio préférés et la sélection des meilleurs tubes régionaux.</p>
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
            North Cloud Radio Awards 2018 : découvrez le palmarès.<br/>
Chaque année, North Cloud Radio récompense les meilleurs Artistes de la région grâce aux North Cloud Radio Awards, des prix attribués par les auditeurs de la station.</p>
            
          </div>
          <div class="col-4">
           <p>
            <h2>Playlists</h2>
            
         <ul class="list-group list-group-flush">
  <li class="list-group-item"><a href="artists/${user.id}">Rap</a></li>
  <li class="list-group-item"><a href="artists/${user.id}">Hip-hop</a></li>
  <li class="list-group-item"><a href="artists/${user.id}">Dance</a></li>

		<h2>Bienvenue sur notre radio</h2>

		<p>
			Gr�ce � notre Webradio, D�couvrez les cr�ations de nos artistes
			locaux.<br /> Retrouvez vos animateurs radio pr�f�r�s et la
			s�lection des meilleurs tubes r�gionaux
		</p>
	</div>
	<div class="col-4">
		<p>
		<h2>Ev�nements</h2>

		<ul class="list-group">
			<li class="list-group-item">Concerts</li>
			<li class="list-group-item">Festivals</li>
			<li class="list-group-item">Emissions</li>

		</ul>
	</div>

	<div class="col-8">

		<h2>North Cloud Radio Awards 2018</h2>
		<p>North Cloud Radio Awards 2018 : d�couvrez le palmar�s Chaque
			ann�e, North Cloud Radio r�compense les meilleurs Artistes de la
			r�gion gr�ce aux North Cloud Radio Awards, des prix attribu�s par les
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

<hr>
</div>

 <div class="container">
 <h1 class="display-4 text-center" >Les artistes NorthCloudRadio</h1>
        <!-- Example row of columns -->
        <div class="row">
          <div class="col-md-3" >
         <figure class="cap-bot">
         <a href="artists/${user.id}">${user.username}
   <img	src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8" alt="..." class="img-thumbnail"></a>
  <figcaption class="figcaption">Artistes Deep House</figcaption>
</figure>
          </div>
          <div class="col-md-3">
          <figure class="cap-bot">
          <a href="artists/${user.id}">${user.username}
   <img	src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8" alt="..." class="img-thumbnail"></a>
  <figcaption class="figcaption">Artistes House</figcaption>
</figure>
          </div>
          <div class="col-md-3">
          <figure class="cap-bot">
          <a href="artists/${user.id}">${user.username}
   <img	src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8" alt="..." class="img-thumbnail"></a>
  <figcaption class="figcaption">Artistes Hip-Hop</figcaption>
</figure>
          </div>
           <div class="col-md-3">
          <figure class="cap-bot">
          <a href="artists/${user.id}">${user.username}
   <img	src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8" alt="..." class="img-thumbnail"></a>
  <figcaption class="figcaption">Artistes Rap</figcaption>
</figure>
          </div>
          <div class="col-md-3">
          <figure class="cap-bot">
          <a href="artists/${user.id}">${user.username}
   <img	src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8" alt="..." class="img-thumbnail"></a>
  <figcaption class="figcaption">Artistes Dance</figcaption>
</figure>
          </div>
          <div class="col-md-3">
           <figure class="cap-bot">
           <a href="artists/${user.id}">${user.username}
   <img	src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8" alt="..." class="img-thumbnail"></a>
  <figcaption class="figcaption">Artistes Rap</figcaption>
</figure>
          </div>
          
              <div class="col-md-3">
                   <figure class="cap-bot">
                   <a href="artists/${user.id}">${user.username}
   <img	src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8" alt="..." class="img-thumbnail"></a>
  <figcaption class="figcaption">Artistes Hip-Hop</figcaption>
</figure>
             
          </div>
          <div class="col-md-3">
            
            <figure class="cap-bot">
            <a href="artists/${user.id}">${user.username}
   <img	src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/profil.jpg-8" alt="..." class="img-thumbnail"></a>
  <figcaption class="figcaption">Artistes House</figcaption>
</figure>
          </div>
        </div>

        <hr>
     
        
</div>

 