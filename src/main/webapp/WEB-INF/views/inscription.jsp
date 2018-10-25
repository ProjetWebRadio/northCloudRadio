<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<jsp:include page="header.jsp" />

<div class="container">
	<div class="row">
		<div class="col-lg-12 text-center">
			<h2 class="section-heading text-uppercase">Inscription</h2>
		</div>
	</div>
	<c:out value="${msg }"/>
	<form:form method="post" action="check-inscription"
		modelAttribute="inscription-form">
		<form:label path="name">Prénom :</form:label>
		<form:input path="name" />
		<br>
		<form:label path="lastname">Nom :</form:label>
		<form:input path="lastname" />
		<br>
		<form:label path="username">Username :</form:label>
		<form:input path="username" />
		<br>
		<form:label path="email">Email :</form:label>
		<form:input path="email" />
		<br>
		<form:label path="password">Password :</form:label>
		<form:password path="password" />
		<br>
		<input type="submit" value="S'inscrire" />
	</form:form>
</div>

<jsp:include page="footer.jsp" />