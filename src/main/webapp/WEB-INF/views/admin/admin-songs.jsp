<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h1 class="h3 mb-3">Admin dashboard: liste des musiques</h1>

<table class="table">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nom</th>
			<th>Categorie</th>
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
				
				<td><a href="admin/songs/delete?id=${song.id }"><button type="button" class="btn btn-danger ">Supprimer
						la musique</button></a> <br/><br/> <a class="button primary text-white" href="admin/songs/play?id=${song.id }"><button type="button" class="btn btn-primary ">Ecouter la musique</button></a> </td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<div>
	
	
	
	<nav aria-label="...">
  <ul class="pagination">
    <li class="page-item">
	<c:if test="${page > 1 }"><a href="admin/songs?page=${ page -1 }">Page précédente</a></c:if>
	</li>
	  <li class="page-item">

	<c:if test="${page < maxPage }"><a class="page-link" href="admin/songs?page=${ page +1 }">Page suivante</a></c:if>
	</li>
  </ul>
</nav>
</div>