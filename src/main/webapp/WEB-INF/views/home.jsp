<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Main  -->
<div class="row">
	<div class="col-lg-12 text-center">
		<div class="cover">
			<img src="<c:url value="${cover}" />"alt="..." class="img-thumbnail">
		</div>
		<div class="lecteur">
			<audio id="myAudioPlayer" controls>
				<%-- <source src='<c:out value="${morceau}"/>' type="audio/mp3"> --%>
				<source src="http://demo.dawan.biz/mohamed/song.ogg"
					type="audio/ogg" />

			</audio>
		</div>
		<div class="boutons">
			<div class="play"></div>
			<div class="pause"></div>

			<hr />
		</div>
		<hr />
	</div>
</div>