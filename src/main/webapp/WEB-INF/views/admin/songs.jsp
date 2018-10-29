<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Admin dashboard: liste des musiques</h1>

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
				<td><a href="admin/delete-song?id=${song.id }">Supprimer la musique</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>