<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<div class="cover">
			<img src="<c:url value="${coverUrl}" />"alt="..." class="cover-size">
		</div>
		<div class="lecteur">
			<audio id="playlistLecteur" controls>
				<source src='<c:out value="${songUrl}"/>' type="audio/mp3">
			</audio>
		</div>
		<div class="boutons">
			<div class="play"></div>
			<div class="pause"></div>
            <div class="next" ></div>
            <div class ="previous"></div>

		
		</div>
		
	</div>
</div>