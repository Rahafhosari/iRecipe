<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Events</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="/css/style.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
</head>
<body>
    <h1>Welcome to the Admin Page <c:out value="${currentUser.username}"></c:out></h1>
    
    <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
    </form>
    


	<div class="container">

		<h4>Admin Control Panel</h4>
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">Recipe name</th>
		      <th scope="col">Update</th>
		      <th scope="col">Delete</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach var="recipe" items="${recipes}">
			    <tr>
			      <th><a href="/recipes/${recipe.id}"><c:out value="${recipe.name}"/></a></th>
			      <td><a href="/recipes/update/${recipe.id}">Update</a></td>
			      <td><a href="/recipes/${recipe.id}/delete">Delete</a></td>
			   
			    </tr>
	    	  </c:forEach>
		  </tbody>
		</table>

		
    
</body>
</html>