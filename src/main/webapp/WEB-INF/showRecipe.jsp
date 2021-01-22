<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 1/21/2021
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<img src="/img/${recipe.image}.jpg">
<h3> ${recipe.name}</h3>
<h4> ${recipe.description}</h4>
<hr>

<c:forEach items="${comments}" var="com">
		<div class="comment">
		<div class="left">
			${com.user.username} Says:--- ${com.comment}
			</div>
			</div>
		</c:forEach>
		
		
<a href="/recipes/${recipe.id}/fav"> ADD to Favourite</a>
<form:form action="/addComment" method="POST" modelAttribute="comm">
    <div class="form-group">
        <form:input cssClass="txtbox" type="textarea" path="comment"/>
        <form:label path="comment">Add Comment</form:label>
       
        <form:hidden path="user" value="${user.id}"/>
        <form:hidden path="recipe" value="${recipe.id}"/>
        
        <input class="btn" type="submit" value="Submit">
        <form:errors cssClass="red" path="comment.*"/>
    </div>
</form:form>
</body>
</html>

