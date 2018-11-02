<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Gestion du compte artiste </h1>
<c:out value="${sessionScope.user_name}" />
<%-- <c:out value="${sessionScope.user_id}" /> --%>

<table class="table">
	<thead>
	<tr>
	<td>Titre du morceau</td>
	<td>Action</td>
	</tr>
	</thead>
	<tbody>
		<c:forEach var="song" items="${songs}">
			<tr>
				<td>${song.name}</td>
			    <td><a href="profil/songs/delete?id=${song.id}"><button type="button" class="btn btn-danger ">Effacer le morceau</button></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>






