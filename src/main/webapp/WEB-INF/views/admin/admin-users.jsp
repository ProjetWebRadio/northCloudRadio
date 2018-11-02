<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1 class="h3 mb-3">Admin dashboard: liste des utilisateurs</h1>

<table class="table">
	<thead>
		<tr>
			<th>Id</th>
			<th>Prénom</th>
			<th>Nom</th>
			<th>Email</th>
			<th>Username</th>
			<th>Banni</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="user" items="${users }">
			<tr>
				<td>${user.id }</td>
				<td>${user.name }</td>
				<td>${user.lastname}</td>
				<td>${user.email}</td>
				<td><a href="admin/users/${user.id}">${user.username}</a></td>
				<td><c:choose>
						<c:when test="${user.banned == true }">Oui ||  <a href="admin/users/ban-unban?id=${user.id }"><button type="button" class="btn btn-primary">Débannir l'utilisateur</button></a></c:when>
						<c:otherwise>Non ||  <a href="admin/users/ban-unban?id=${user.id }"><button type="button" class="btn btn-primary">Bannir l'utilisateur</button></a></c:otherwise>
					</c:choose></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<div>
	<c:if test="${page > 1 }"><a href="admin/users?page=${ page -1 }">Page précédente</a></c:if>
	<c:if test="${page < maxPage }"><a href="admin/users?page=${ page +1 }">Page suivante</a></c:if>
</div>