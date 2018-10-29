<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
				<td><a href="songs/search?artistName=${artist.username }">Voir les musiques</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>