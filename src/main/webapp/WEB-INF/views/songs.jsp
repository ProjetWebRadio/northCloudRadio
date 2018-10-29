<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${not empty param.artistName }">
	Artiste : ${param.artistName}
</c:if>
<table class="table">
	<thead>
		<tr>
			<th>Nom du morceau</th>
			<c:if test="${empty param.artistName }">
				<th>Nom de l'artiste</th>
			</c:if>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="song" items="${songs}">
			<tr>
				<td>${song.name}</td>
				<c:if test="${empty param.artistName }">
					<td>${song.user.username }<td>
				</c:if>
				<td>
					<a href="songs/play/${song.id }">Ecouter le morceau</a>
				</td>
			</tr>
		</c:forEach>

	</tbody>

</table>





