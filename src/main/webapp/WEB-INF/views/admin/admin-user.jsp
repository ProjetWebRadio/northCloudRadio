<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1 class="h3 mb-3">Profil de ${user.username }</h1>


<div>
	<ul class="list-group">
		<li class="list-group">Pr�nom: ${user.name }</li>
		<li class="list-group">Nom: ${user.lastname }</li>
		<li class="list-group">Email: ${user.email }</li>
		<li class="list-group">Banni: <c:choose>
				<c:when test="${user.banned == true }">Oui ||<a
						href="admin/users/ban-unban?id=${user.id }">D�bannir
						l'utilisateur</a>
				</c:when>
				<c:otherwise>Non ||<a
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
			<th>Cat�gorie</th>
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
				<td><a href="admin/songs/delete?id=${song.id }"><button
							type="button" class="btn btn-danger ">Supprimer la
							musique</button></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
