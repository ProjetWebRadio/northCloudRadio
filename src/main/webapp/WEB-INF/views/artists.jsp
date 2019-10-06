<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table class="table">
	<thead>
		<tr>
			<th>Nom de l'artiste</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="artist" items="${ artists}">
			<tr>
				<td>${artist.username }</td>
				<td><a href="songs/search?username=${artist.username }"><button
							type="button" class="btn btn-primary">Voir les musiques</button></a></td>
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