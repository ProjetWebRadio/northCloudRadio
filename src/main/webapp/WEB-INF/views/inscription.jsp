<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

	
	<div class="form-signin">
	<div class="col-lg-12 text-center">
		<h2 class="section-heading text-uppercase">Inscription</h2>
	
<c:out value="${msg }" />
<form:form method="post" action="inscription"
	modelAttribute="inscription-form">
	

	<form:input class="form-control" path="name" placeholder="Prenom"/>
	<br>
	<form:input class="form-control" path="lastname" placeholder="Nom"/>
	<br>

	<form:input class="form-control" path="username" placeholder="Pseudo"/>
	<br>
	<form:input class="form-control" path="email" placeholder="Email"/>
	<br>
	<form:password class="form-control" path="password" placeholder="Mot de passe"/>
	<br>
	<input class="btn btn-lg btn-primary" type="submit" value="S'inscrire" />
</form:form>

<div class="error-log">
	<spring:hasBindErrors name="inscription-form">
		<c:forEach var="err" items="${errors.allErrors}">
			<c:out value="${err.field}" /> :
			<c:out value="${err.defaultMessage}" />
			<br />
		</c:forEach>
	</spring:hasBindErrors>
</div>
</div>
</div>
