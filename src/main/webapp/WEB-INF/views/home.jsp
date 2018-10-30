<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Main  -->

<div class="row">
	<div class="col-lg-12 text-center">
	<c:out value="${user.name}"/>
		<div class="cover">
			<img id="cover" src="" alt="..." class="img-thumbnail">
		</div>
		<div class="lecteur">
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
            <div class="next" ></div>
            <div class ="previous"></div>
			<hr />
		</div>
		<hr />
	</div>
</div>