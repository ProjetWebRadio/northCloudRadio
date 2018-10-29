<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Admin dashboard: liste des utilisateurs</h1>

<table class="table">
	<thead>
		<tr>
			<th>Id</th>
			<th>Prénom</th>
			<th>Nom</th>
			<th>Email</th>
			<th>Username</th>
			<th>Artiste</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="user" items="${users }">
			<tr>
				<td>${user.id }</td>
				<td>${user.name }</td>
				<td>${user.lastname}</td>
				<td>${user.email}</td>
				<td>${user.username}</td>
				<td><c:choose>
						<c:when test="${user.artiste == true }">Oui</c:when>
						<c:otherwise>Non</c:otherwise>
					</c:choose></td>
				<td><a href="admin/block-user?id=${user.id }">Bloquer l'utilisateur</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>