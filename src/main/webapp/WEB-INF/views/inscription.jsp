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
	
	<form:label class="form-label" path="name">Prenom</form:label>
	<form:input class="form-control" path="name"/>
	<br>
	<form:label class="form-label" path="lastname" >Nom :</form:label>
	<form:input class="form-control" path="lastname"/>
	<br>
	<form:label class="form-label" path="username" >Username : </form:label>
	<form:input class="form-control" path="username"/>
	<br>
	<form:label class="form-label" path="email" >Email : </form:label>
	<form:input class="form-control" path="email"/>
	<br>
	<form:label class="form-label" path="password" >Password : </form:label>
	<form:password class="form-control" path="password"/>
	<br>
	<input class="btn btn-lg btn-primary btn-block" type="submit" value="S'inscrire" />
</form:form>
</div>
</div>
<div style="color: red;">
	<spring:hasBindErrors name="inscription-form">
		<c:forEach var="err" items="${errors.allErrors}">
			<c:out value="${err.field}" /> :
			<c:out value="${err.defaultMessage}" />
			<br />
		</c:forEach>
	</spring:hasBindErrors>
</div>

