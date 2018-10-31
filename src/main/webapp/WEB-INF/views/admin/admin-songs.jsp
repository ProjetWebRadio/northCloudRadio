<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1 class="h3 mb-3">Admin dashboard: liste des musiques</h1>

<table class="table">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nom</th>
			<th>Catégorie</th>
			<th>Artiste</th>
			<th>Chemin de la musique</th>
			<th>Chemin de la couverture</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="song" items="${songs }">
			<tr>
				<td>${song.id }</td>
				<td>${song.name }</td>
				<td>${song.category}</td>
				<td><a>${song.user.username}</a></td>
				<td>${song.url}</td>
				<td><c:choose>
						<c:when test="${not empty song.cover }">${song.coverUrl }</c:when>
						<c:otherwise>Aucune couverture</c:otherwise>
					</c:choose></td>
				<td><button type="button" class="btn btn-danger "><a class="button-delete text-white" href="admin/songs/delete?id=${song.id }">Supprimer
						la musique</a></button></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<div>
	<c:if test="${page > 1 }"><a href="admin/songs?page=${ page -1 }">Page précédente</a></c:if>
	<c:if test="${page < maxPage }"><a href="admin/songs?page=${ page +1 }">Page suivante</a></c:if>
</div>