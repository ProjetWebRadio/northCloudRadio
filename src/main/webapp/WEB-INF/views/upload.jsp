<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<jsp:include page="header.jsp" />

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
				<form:form method="post" action="upload"
					enctype="multipart/form-data" modelAttribute="upload-form">
					<form:label path="name">Nom du morceau :</form:label>
					<form:input path="name" />
					<br>
					<form:label path="category">Catégorie :</form:label>
					<form:input path="category" />
					<br>
					<form:label path="file">Choisir un fichier :</form:label>
					<input type="file" id="file" name="file">
					<br>
					<input type="submit" value="Upload" />

				</form:form>
			</div>
		</div>
	</div>
	<div style="color: red;">
		<spring:hasBindErrors name="upload-form">
			<c:forEach var="err" items="${errors.allErrors}">
				<c:out value="${err.field}" /> :
			<c:out value="${err.defaultMessage}" />
				<br />
			</c:forEach>
		</spring:hasBindErrors>
	</div>
</section>


<jsp:include page="footer.jsp" />