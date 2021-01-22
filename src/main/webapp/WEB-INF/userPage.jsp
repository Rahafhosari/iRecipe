<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/category.css" />
<title>User favorite Recipes</title>
</head>
<body>
<div class="container">
	<div class="box0">
	<div class="imag"><img style="width:200px;height:200px;" src="/img/category2.jpg"></div>
	
	<div class="box">
		<h1>Welcome ${user.username}</h1>

		</div>
	</div>	
		<hr />
		<h2>Your favorite Recipes</h2>
		
		<c:forEach items="${ recipes }" var="rec">
		<div class="recipe">
		<div class="left">
			<a href="/recipes/${ rec.id }">${ rec.name }</a></li>
			</div>
			<div class=right">
			<img style="width:200px;height:200px;" alt="image"  src="/img/${rec.image}.jpg">
			</div>
			</div>
		</c:forEach>
		
	</div>
</body>
</html>