<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags --><meta charset="ISO-8859-1">
<%--	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
	<!-- Title -->
	<title>iRecipe | User's Favorite Recipes</title>
	<!-- Favicon -->
	<link rel="icon" href="${pageContext.request.contextPath}/img/core-img/favicon.ico">
	<!-- Core Stylesheet -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<!-- Preloader -->
<div id="preloader">
	<i class="circle-preloader"></i>
	<img src="${pageContext.request.contextPath}/img/core-img/iRecipe_icon_original.png" alt="">
</div>
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
								<li><a href="/#">A Perfect Tasty  Plate leads to a happy tummy!</a></li>
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
					<p>Welcome <c:out value="${user.username}"></c:out></p>

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
								<li class="active"><a href="/home">Home</a></li>
								<li><a href="/api">Search</a></li>
								<li><a>Categories</a>
									<ul class="dropdown">
										<li><a href="/categories/1">Main Courses</a></li>
										<li><a href="/categories/2">Desserts</a></li>
									</ul>
								</li>
								<li><a href="/about">About</a></li>
								<c:choose>
									<c:when test="${user.id==null }">
										<li><a href="/login">Login</a></li>
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${user.id!=null }">
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
										<c:when test="${user.roles.get(0).name == 'ROLE_ADMIN' }">
											<p><a href="/admin">Admin</a></p>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${user.roles.get(0).name == 'ROLE_USER' }">
													<p><a href="/users/${user.id}">Favorites</a></p>
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
<!-- ##### Tabs START ##### -->
<div class="col-12" style="display: flex; justify-content: center;">
	<div class="delicious-tabs-content">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" id="tab--1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">Favorites</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="tab--2" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">Main Courses</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="tab--3" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="true">Desserts</a>
			</li>
		</ul>

		<div class="tab-content mb-80" id="myTabContent">
			<div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab--1">
				<div class="delicious-tab-content">
					<!-- Tab Text -->
					<p>List of All Favourites</p>
					<div class="delicious-tab-text" style="display:flex;">
						<c:forEach items="${ recipes }" var="rec">
							<div class="recipe" style="margin-right: 10px;">
								<div class="left">
									<a href="/recipes/${ rec.id }">${ rec.name }</a></li>
								</div>
								<div class=right">
									<img style="width:200px;height:200px;" alt="image"  src="${pageContext.request.contextPath}/img/${rec.image}.jpg">
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab--2">
				<div class="delicious-tab-content">
					<!-- Tab Text -->
					<p>List of Favourites Main Courses</p>
					<div class="delicious-tab-text"style="display:flex;">
						<c:forEach items="${ recipes }" var="rec">
							<c:choose>
							<c:when test="${rec.category.id == 1 }">
							<div class="recipe" style="margin-right: 10px;">
								<div class="left">
									<a href="/recipes/${ rec.id }">${ rec.name }</a></li>
								</div>
								<div class=right">
									<img style="width:200px;height:200px;" alt="image"  src="${pageContext.request.contextPath}/img/${rec.image}.jpg">
								</div>
							</div>
							</c:when>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab--3">
				<div class="delicious-tab-content">
					<!-- Tab Text -->
					<p>List of Favourites Desserts</p>
					<div class="delicious-tab-text" style="display:flex;">
						<c:forEach items="${ recipes }" var="rec">
							<c:choose>
							<c:when test="${rec.category.id == 2 }">
								<div class="recipe" style="margin-right: 10px;">
									<div class="left">
										<a href="/recipes/${ rec.id }">${ rec.name }</a></li>
									</div>
									<div class=right">
										<img style="width:200px;height:200px;" alt="image"  src="${pageContext.request.contextPath}/img/${rec.image}.jpg">
									</div>
								</div>
							</c:when>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ##### Tabs END ##### -->

<%--<div class="container">--%>
<%--	<div class="box0">--%>
<%--	<div class="imag"><img style="width:200px;height:200px;" src="/img/category2.jpg"></div>--%>
<%--	--%>
<%--	<div class="box">--%>
<%--		<h1>Welcome ${user.username}</h1>--%>

<%--		</div>--%>
<%--	</div>	--%>
<%--		<hr />--%>
<%--		<h2>Your favorite Recipes</h2>--%>
<%--		--%>
<%--		<c:forEach items="${ recipes }" var="rec">--%>
<%--		<div class="recipe">--%>
<%--		<div class="left">--%>
<%--			<a href="/recipes/${ rec.id }">${ rec.name }</a></li>--%>
<%--			</div>--%>
<%--			<div class=right">--%>
<%--			<img style="width:200px;height:200px;" alt="image"  src="/img/${rec.image}.jpg">--%>
<%--			</div>--%>
<%--			</div>--%>
<%--		</c:forEach>--%>
<%--	</div>--%>
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