<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


	<!-- Title -->
	<title>iRecipe | Admin</title>

	<!-- Favicon -->
	<link rel="icon" href="${pageContext.request.contextPath}/img/core-img/favicon.ico">

	<!-- Core Stylesheet -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">

<style>
	#logoutForm{
	text-align:center;
	}
</style>
</head>
<body>
<!-- ##### Header Area Start ##### -->
<header class="header-area">
	<!-- Top Header Area -->
	<div class="top-header-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center justify-content-between">
				<!-- Breaking News -->
				<div class="col-12 col-sm-6">
					<div class="breaking-news">
						<div id="breakingNewsTicker" class="ticker">
							<ul>
								<li><a href="/home">Welcome to iRecipe!</a></li>
								<li><a href="#">A Perfect Tasty  Plate leads to a happy tummy!</a></li>
								<li><a href="/categories">Categories</a></li>
								<li><a href="/recipes">Recipes</a></li>
							</ul>
						</div>
					</div>
				</div>

				<!-- Top Social Info -->
				<div class="col-12 col-sm-6">
					<div class="top-social-info text-right">
						<a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
						<a href="https://www.facebook.com/AXSOSAcademy"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						<a href="https://github.com/Rahafhosari/iRecipe"><i class="fa fa-github" aria-hidden="true"></i></a>
						<a href="https://www.linkedin.com/school/axsos-academy/"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Navbar Area -->
	<div class="delicious-main-menu">
		<div class="classy-nav-container breakpoint-off">
			<div class="container">
				<!-- Menu -->
				<nav class="classy-navbar justify-content-between" id="deliciousNav">

					<!-- Logo -->
					<p>Welcome <c:out value="${currentUser.username}"></c:out></p>

					<a class="nav-brand" href="/home"><img src="${pageContext.request.contextPath}/img/core-img/irecipefinalcut200.png" alt="logo"></a>

					<!-- Navbar Toggler -->
					<div class="classy-navbar-toggler">
						<span class="navbarToggler"><span></span><span></span><span></span></span>
					</div>

					<!-- Menu -->
					<div class="classy-menu">

						<!-- close btn -->
						<div class="classycloseIcon">
							<div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
						</div>

						<!-- Nav Start -->
						<div class="classynav">
							<ul>
								<li><a href="/home">Home</a></li>
								<li><a href="/api">Search</a></li>
								<li class="active"><a>Categories</a>
									<ul class="dropdown">
										<li><a href="/categories/1">Main Courses</a></li>
										<li><a href="/categories/2">Desserts</a></li>
									</ul>
								</li>
								<li><a href="/about">About</a></li>
								<c:choose>
									<c:when test="${currentUser.id==null }">
										<li><a href="/login">Login</a></li>
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${currentUser.id!=null }">
												<form style="float:right;" id="logoutForm" method="POST" action="/logout">
													<li><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></li>
													<li><a><input type="submit" value="Logout!" class="btn btn-outline-success" /></a></li>
												</form>
											</c:when>
										</c:choose>
									</c:otherwise>
								</c:choose>

								<!-- Admin Only -->
								<li>
									<c:choose>
										<c:when test="${currentUser.roles.get(0).name == 'ROLE_ADMIN' }">
											<p><a href="admin">Admin</a></p>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${currentUser.roles.get(0).name == 'ROLE_USER' }">
													<p><a href="users/${currentUser.id}">Favorites</a></p>
												</c:when>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</li>
							</ul>
							<!-- Newsletter Form -->
							<div class="search-btn">
								<i class="fa fa-search" aria-hidden="true"></i>
							</div>
						</div>
						<!-- Nav End -->
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>
<!-- ##### Header Area End ##### -->
    <center><h2>Welcome to the Admin Page <c:out value="${currentUser.username}"></c:out></h2></center>

	<div class="container">
		<center><h4>Admin Control Panel</h4></center><br>
		<center><a href="/recipes/create"><b>Create New Recipe</b></a></center><br><br>
		
		<table class="table">
		  <thead style="background-color:#f14444;" >
		    <tr>
		      <th scope="col">Recipe name</th>
		      <th scope="col">Category</th>
		      <th scope="col">Update</th>
		      <th scope="col">Delete</th>
		      
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach var="recipe" items="${recipes}">
			    <tr>
			      <th><a href="/recipes/${recipe.id}"><c:out value="${recipe.name}"/></a></th>
			      <td>${recipe.category.name}</td>
			      <td><a href="/recipes/update/${recipe.id}">Update</a></td>
			      <td><a href="/recipes/${recipe.id}/delete">Delete</a></td>
			    </tr>
	    	  </c:forEach>
		  </tbody>
		</table>
<!-- ##### Footer Area Start ##### -->
<footer class="footer-area">
	<div class="container h-100">
		<div class="row h-100">
			<div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
				<!-- Footer Social Info -->
				<div class="footer-social-info text-right">
					<a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					<a href="https://www.facebook.com/AXSOSAcademy"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					<a href="https://github.com/Rahafhosari/iRecipe"><i class="fa fa-github" aria-hidden="true"></i></a>
					<a href="https://www.linkedin.com/school/axsos-academy/"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
				</div>
				<!-- Footer Logo -->
				<div class="footer-logo">
					<a href="/home"><img src="${pageContext.request.contextPath}/img/core-img/irecipefinalcut200.png" alt="irecipe"></a>
				</div>
				<!-- Copywrite -->
				<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Axsos Academy <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="contact" target="_blank">iRecipe Team</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
			</div>
		</div>
	</div>
</footer>
<!-- ##### Footer Area End ##### -->

<!-- ##### All Javascript Files ##### -->
<!-- jQuery-2.2.4 js -->
<script src="${pageContext.request.contextPath}/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="${pageContext.request.contextPath}/js/bootstrap/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
<!-- All Plugins js -->
<script src="${pageContext.request.contextPath}/js/plugins/plugins.js"></script>
<!-- Active js -->
<script src="${pageContext.request.contextPath}/js/active.js"></script>

</body>
</html>