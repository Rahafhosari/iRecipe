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
    <link rel="stylesheet" href="css/main.css" />
    <title>Category Recipes</title>
</head>
<body>
<div class="container">
    <h1>Recipes</h1>
    <hr />
    <h2>${ category.name }</h2>
    <ul>
        <c:forEach items="${ category.recipe }" var="rec">
            <li><a href="/recipes/${ rec.id }">${ rec.name }</a></li>
            <img alt="image"  src="/img/${rec.image}.jpg">
        </c:forEach>

    </ul>
</div>
</body>
</html>
