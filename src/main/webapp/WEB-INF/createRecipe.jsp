<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Title -->
    <title>iRecipe | Create Recipe</title>
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/img/core-img/favicon.ico">
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<center>
    <h2><a href="/admin">Back</a></h2>
    <div class="container">
        <div class="createEvent">
            <h3>Edit Your Recipe</h3>
    <form:form action="/recipes" method="post" modelAttribute="recipe">

        <div class="form-group">
            <form:label path="name">Name</form:label>
            <form:errors path="name"/>
            <form:input class="form-control" path="name"/>
        </div>
        <div class="form-group">
            <form:label path="description">Description</form:label>
            <form:errors path="description"/>
            <form:input type="text" class="form-control" path="description"/>

        </div>

        <div class="form-group">
            <form:label path="image">image</form:label>
            <form:errors path="image"/>
            <form:input type="text" class="form-control" path="image"/>
        </div>


        <div class="form-group">
            <form:label path="category">Category</form:label>
            <form:errors path="category"/>

            <form:select class="form-control" path="category">

                <c:forEach items="${ categories }" var="c">
                    <form:option value="${ c.id }">${ c.name }</form:option>
                </c:forEach>
            </form:select>
        </div>

        <input type="submit" style="background: #f14444;border-color: #f14444; color: whitesmoke" value="Create" class="btn btn-primary"/>
    </form:form>
        </div>
    </div>
</center>
</body>
</html>

