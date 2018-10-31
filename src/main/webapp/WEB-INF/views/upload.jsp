<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!-- Contact -->
<section id="contact">
		<div class="form-signin">
	<div class="col-lg-12 text-center">
				
				<h2 class="section-subheading text-muted">Postez votre morceau</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<c:if test="${not empty successMsg }">
					<div class="alert alert-success">
						<c:out value="${successMsg }" />
					</div>
				</c:if>
				<c:if test="${not empty errorMsg }">
					<div class="alert alert-danger">
						<c:out value="${errorMsg}" />
					</div>
				</c:if>

				<form:form method="post" action="upload"
					enctype="multipart/form-data" modelAttribute="upload-form">
					<form:label path="name">Nom du morceau :</form:label>
					<form:input class="form-control" path="name" />
					<br>
					<form:label path="category">Catégorie :</form:label>
					<form:input class="form-control" path="category" />
					<br />
					<form:label path="songFile">Choisir une musique :</form:label>
					<input class="btn btn-md btn-primary" type="file" id="songFile" name="songFile">

					<br /><br />
					<form:label path="coverFile">Choisir une cover :</form:label>
					<input class="btn btn-md btn-primary" type="file" id="coverFile" name="coverFile">
					<br />
					<input class="btn btn-md btn-primary" type="submit" value="Upload" />
				</form:form>
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
				<br>
			</div>
		</div>

</section>

