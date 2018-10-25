<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp">
	<jsp:param value="Accueil" name="title" />
</jsp:include>

<!-- Main  -->

<div class="container">
	<div class="row">
		<div class="col-lg-12 text-center">
			<c:if test="${not empty morceau }">
				<div class="cover">
					<img
						src="http://rdironworks.com/wp-content/uploads/2017/12/dummy-200x200.png"
						alt="..." class="img-thumbnail">
				</div>
				<div class="lecteur">
					<audio controls>
						<source src='<c:out value="${morceau }"/>' type="audio/mp3">
					</audio>
					<div class="boutons">
						<div class="play"></div>
						<div class="pause"></div>
					</div>
				</div>
			</c:if>
			<hr>
		</div>
		<hr>
	</div>
</div>
<jsp:include page="footer.jsp" />