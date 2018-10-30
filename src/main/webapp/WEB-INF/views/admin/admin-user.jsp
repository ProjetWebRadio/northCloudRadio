<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Profil de ${user.username }</h1>


<div>
	<ul>
		<li>Prénom: ${user.name }</li>
		<li>Nom: ${user.lastname }</li>
		<li>Email: ${user.email }</li>
		<li>Banni: <c:choose>
				<c:when test="${user.banned == true }">Oui: <a
						href="admin/users/ban-unban?id=${user.id }">Débannir l'utilisateur</a>
				</c:when>
				<c:otherwise>Non: <a
						href="admin/users/ban-unban?id=${user.id }">Bannir
						l'utilisateur</a>
				</c:otherwise>
			</c:choose></li>
	</ul>
</div>
<table class="table">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nom</th>
			<th>Catégorie</th>
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
				<td>${song.url}</td>
				<td><c:choose>
						<c:when test="${not empty song.cover }">${song.coverUrl }</c:when>
						<c:otherwise>Aucune couverture</c:otherwise>
					</c:choose></td>
				<td><a href="admin/songs/delete?id=${song.id }">Supprimer
						la musique</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
