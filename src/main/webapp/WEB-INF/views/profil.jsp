<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Gestion du compte artiste </h1>
<c:out value="${sessionScope.user_name}" />
<%-- <c:out value="${sessionScope.user_id}" /> --%>

<table class="table">
	<thead>
	<tr>
	<td>Titre du morceau</td>
	<td>Effaçer le morceau</td>
	</tr>
	</thead>
	<tbody>
		<c:forEach var="song" items="${songs}">
			<tr>
				<td>${song.name}</td>
<!-- 				<td><input type="submit" value="Effacer le morceau" /></td> -->
			    <td><a href="/profil/${song.delete}">Effaçer le morceau></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>






