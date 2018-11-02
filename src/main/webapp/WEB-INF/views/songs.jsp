<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${not empty param.artistName }">
	Artiste : ${param.artistName}
</c:if>
<c:if test="${not empty msg }">
	<p>${msg }</p>
</c:if>
<table class="table">
	<thead>
		<tr>
			<th>Nom du morceau</th>
			<th>Catégorie</th>
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
				<td>${song.category }</td>
				<c:if test="${empty param.artistName }">
					<td>${song.user.username }
					</td>
				</c:if>
				<td><a class="button-primary text-white"
					href="songs/play/${song.id }">
						<button type="button" class="btn btn-primary">Ecouter le
							morceau</button>
				</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<div>
	<c:if test="${page > 1 }">
		<a href="songs?page=${ page -1 }">Page précédente</a>
	</c:if>
	<c:if test="${page < maxPage }">
		<a href="songs?page=${ page +1 }">Page suivante</a>
	</c:if>
</div>



