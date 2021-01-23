<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Event</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<!-- Title -->
		<title>iRecipe | Update Recipe</title>
		<!-- Favicon -->
		<link rel="icon" href="${pageContext.request.contextPath}/img/core-img/favicon.ico">
		<!-- Core Stylesheet -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<center>
	<h2><a href="/admin">Back</a></h2>
	<div class="container">
		<h3 class="display-2"><c:out value="${recipe.name}"/></h3>
		<div class="createEvent">
			<h3>Edit Your Recipe</h3>
			<p><form:errors path="recipe.*"/></p>
			<form:form method="POST" action="/recipes/${recipe.id}/update" modelAttribute="recipe">
			<input type="hidden" name="_method" value="put">
			<form:hidden path="id"/>
			
			<p>
	            <form:label class="col-sm-2 col-form-label" path="name">Recipe Name:</form:label>
	            <form:input class="form-control col-sm-6" type="text" path="name"/>
	        </p>
	        <p>
	        	<form:label class="col-sm-2 col-form-label" path="description">Description</form:label>
	        	<form:input class="form-control col-sm-6" type="text" path="description"/>
	        <p>
	            <form:label class="col-sm-2 col-form-label" path="image">Image</form:label>
	            <form:input class="form-control col-sm-6" type="text" path="image"/>
	        </p>

	        <input class="btn btn-warning" style="background: #f14444;border-color: #f14444; color: whitesmoke" type="submit" value="Edit" />
	        </form:form>
		</div>
	</div>
</center>
</body>
</html>