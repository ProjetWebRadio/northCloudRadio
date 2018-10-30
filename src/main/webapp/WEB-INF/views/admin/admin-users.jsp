<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Admin dashboard: liste des utilisateurs</h1>

<table class="table">
	<thead>
		<tr>
			<th>Id</th>
			<th>Pr�nom</th>
			<th>Nom</th>
			<th>Email</th>
			<th>Username</th>
			<th>Artiste</th>
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
						<c:when test="${user.artiste == true }">Oui</c:when>
						<c:otherwise>Non</c:otherwise>
					</c:choose></td>
				<td><c:choose>
						<c:when test="${user.banned == true }">Oui: <a href="admin/users/ban-unban?id=${user.id }">D�bannir l'utilisateur</a></c:when>
						<c:otherwise>Non: <a href="admin/users/ban-unban?id=${user.id }">Bannir l'utilisateur</a></c:otherwise>
					</c:choose></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<div>
	<c:if test="${page > 1 }"><a href="admin/users?page=${ page -1 }">Page pr�c�dente</a></c:if>
	<c:if test="${page < maxPage }"><a href="admin/users?page=${ page +1 }">Page suivante</a></c:if>
</div>