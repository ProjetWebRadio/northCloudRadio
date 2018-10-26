<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!-- Contact -->
<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading text-uppercase">Upload</h2>
				<h3 class="section-subheading text-muted">Postez votre morceau</h3>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<c:out value="${msg}" />
				<form:form method="post" action="upload"
					enctype="multipart/form-data" modelAttribute="upload-form">	
					<form:label path="name">Nom du morceau :</form:label>
					<form:input path="name" />
					<br>
					<form:label path="category">Catégorie :</form:label>
					<form:input path="category" />
					<br>
					<form:label path="songFile">Choisir une musique :</form:label>
					<input type="file" id="songFile" name="songFile">
					
						<br>
					<form:label path="coverFile">Choisir une cover :</form:label>
					<input type="file" id="coverFile" name="coverFile">
					<br>
					<input type="submit" value="Upload" />


				</form:form>
			</div>
		</div>
	</div>
		<c:if test="${ errors != null }">
	<div class="alert alert-danger">
		<spring:hasBindErrors name="upload-form">
			<c:forEach var="err" items="${errors.allErrors}">
				<c:out value="${err.field}" /> :
			<c:out value="${err.defaultMessage}" />
				<br />
			</c:forEach>
		</spring:hasBindErrors>
		
	</div>
	</c:if>
</section>

