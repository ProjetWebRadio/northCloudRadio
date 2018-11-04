<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<div class="cover">
			<img src="<c:url value="${song.coverUrl}" />" alt="..." class="cover-size">
		</div>
		<div class="lecteur">
			<p id="song-title">${song.user.username} - ${song.name }</p>
			<audio id="playlistLecteur" controls>
				<source src='<c:out value="${song.url}"/>' type="audio/mp3">
			</audio>
		</div>
		<div class="boutons">
			<div class="play"></div>
			<div class="pause"></div>
			<div class="next"></div>
			<div class="previous"></div>


		</div>

	</div>
	
	<div class="container">
	<br/>
 <h1 class="display-4 text-center" >Découvrez les autres artistes de NorthCloudRadio</h1>
        <!-- Example row of columns -->
        <div class="row">
          <div class="col-md-3">
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
          
        </div>

        <hr>
     
        
</div>
	
</div>