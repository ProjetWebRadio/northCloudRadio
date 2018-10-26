<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${not empty param.artistName }">
	Artiste : ${param.artistName}
</c:if>

<c:forEach var="morceau" items="${songs}">
	<div>${morceau.name}
		<c:if test="${empty param.artistName }">
			${morceau.user.name }
		</c:if>
	</div>
</c:forEach>





