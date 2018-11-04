<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8"%>


	<div class="form-signin">
	<div class="col-lg-12 text-center">
	<img src="https://s3.eu-west-3.amazonaws.com/mp3webradio-benjixxx/logo.png" alt="...">
<h1 class="h3 mb-3">Authentification</h1>



<form:form method="post" action="authenticate"
	modelAttribute="login-form">
	
	<form:input path="username" class="form-control" placeholder="email"/>

	<br />


	<form:password path="password" class="form-control" placeholder="password" />
	<br />
	<input class="btn btn-lg btn-primary" type="submit" value="Se connecter" />
</form:form>


<div>${msg}</div>

<div class="error-log">
	<spring:hasBindErrors name="login-form">
		<c:forEach var="err" items="${errors.allErrors}">
			<c:out value="${err.field}" /> :
			<c:out value="${err.defaultMessage}" />
			<br />
		</c:forEach>
	</spring:hasBindErrors>
</div>
</div>
</div>