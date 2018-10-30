<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Main  -->

<div class="row">
	<div class="col-lg-12 text-center">
		<div class="cover">
		<img id="cover" src="" alt="..." class="cover-size">
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
		
		</div>
		
	</div>
</div>