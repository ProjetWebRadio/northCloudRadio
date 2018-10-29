<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h2 class="section-heading text-uppercase">Inscription</h2>
	</div>
</div>
<c:out value="${msg }" />
<form:form method="post" action="inscription"
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

<div style="color: red;">
	<spring:hasBindErrors name="inscription-form">
		<c:forEach var="err" items="${errors.allErrors}">
			<c:out value="${err.field}" /> :
			<c:out value="${err.defaultMessage}" />
			<br />
		</c:forEach>
	</spring:hasBindErrors>
</div>

