<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 1/23/2021
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <!-- Title -->
    <title>iRecipe | About US</title>

    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <style>
    .title-arch {
        text-align: center;
        margin: 50px 0;
        font-size: 22px;
        letter-spacing: 2px;
        text-transform: uppercase;
    }
    .project {
        width: 100%;
        height: 500px;
        background-image: url(https://i.pinimg.com/originals/80/78/e5/8078e5e843eacb0a6c87bbc83992207c.jpg);
        background-size: cover;
        background-position: center;
        padding: 0 !important;
        float:left;
    }

    .project-2 {
        background-image: url(https://i.pinimg.com/originals/80/78/e5/8078e5e843eacb0a6c87bbc83992207c.jpg);
    }

    .project-3 {
        background-image: url(https://i.pinimg.com/originals/80/78/e5/8078e5e843eacb0a6c87bbc83992207c.jpg);
    }

    .project-4 {
        background-image: url(https://i.pinimg.com/originals/80/78/e5/8078e5e843eacb0a6c87bbc83992207c.jpg);
    }

    .project-hover {
        width: 100%;
        height: 100%;
        color: #fff;
        opacity: 0;
        -webkit-transition: all 0.5s ease;
        -moz-transition: all 0.5s ease;
        -o-transition: all 0.5s ease;
        transition: all 0.5s ease;
        background-color: #f14444;
        padding: 40% 30px !important;
    }

    .project-hover hr {
        height: 30px;
        width: 0;
        -webkit-transition: all 0.5s ease;
        -moz-transition: all 0.5s ease;
        -o-transition: all 0.5s ease;
        transition: all 0.5s ease;
        background-color: rgba(255, 255, 255, 1);
        border: 0;
    }

    .project-hover a {
        color: rgba(255, 255, 255, 1);
        padding: 2px 22px;
        line-height: 40px;
        border: 2px solid rgba(255, 255, 255, 1);
        -webkit-transition: all 0.5s ease-in-out;
        -moz-transition: all 0.5s ease-in-out;
        -o-transition: all 0.5s ease-in-out;
        transition: all 0.5s ease-in-out;
    }

    .project-hover a:hover {
        border-color: rgba(51, 51, 51, 1);
        color: rgba(51, 51, 51, 1);
        background-color: #FFF;
    }

    .project:hover .project-hover {
        opacity: 1;
    }

    .project:hover .project-hover hr {
        width: 100%;
        height: 5px;
    }
    </style>

</head>
<body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<!-- Preloader -->
<div id="preloader">
    <i class="circle-preloader"></i>
    <img src="img/core-img/iRecipe_icon_original.png" alt="">
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
                                <li><a href="home">Welcome to iRecipe!</a></li>
                                <li><a href="#">A Perfect Tasty  Plate leads to a happy tummy!</a></li>
                                <li><a href="categories">Categories</a></li>
                                <li><a href="recipes">Recipes</a></li>
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

                    <a class="nav-brand" href="/home"><img src="img/core-img/irecipefinalcut200.png" alt="logo"></a>

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
                                <li><a>Categories</a>
                                    <ul class="dropdown">
                                        <li><a href="/categories/1">Main Courses</a></li>
                                        <li><a href="/categories/2">Desserts</a></li>
                                    </ul>
                                </li>
                                <li class="active"><a href="about">About</a></li>
                                <c:choose>
                                    <c:when test="${user.id==null }">
                                        <li><a href="/login">Login</a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <c:choose>
                                            <c:when test="${user.id!=null }">
                                                <form style="float:right;" id="logoutForm" method="POST" action="/logout">
                                                    <li><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></li>
                                                    <li><a><input type="submit" value="Logout!" class="btn btn-outline-success" style=" color: #f14444;background-color: transparent;background-image: none;border-color: #f14444;"/></a></li>
                                                </form>
                                            </c:when>
                                        </c:choose>
                                    </c:otherwise>
                                </c:choose>

                                <!-- Admin Only -->
                                <li>
                                    <c:choose>
                                        <c:when test="${user.roles.get(0).name == 'ROLE_ADMIN' }">
                                            <p><a href="admin">Admin</a></p>
                                        </c:when>
                                        <c:otherwise>
                                            <c:choose>
                                                <c:when test="${user.roles.get(0).name == 'ROLE_USER' }">
                                                    <p><a href="users/${user.id}">Favorites</a></p>
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
<div class="container-fluid">
    <div class="title-arch">IRecipe<p>A Perfect Tasty  Plate leads to a happy tummy . Get Ready To be creative with IRecipe!</p></div>

    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-2 wow animated animated3 fadeInLeft" style="margin-right: 30px; margin-left:130px">
        <div class="project-hover">
            <h2>iRecipe</h2>
            <hr />
            <p style="color: whitesmoke;"> Our team loves food and the way it helps us take care of our bodies. WE combine this with ideas that will help us rethink the idea of food in general giving you tools to be successful, healthy and happy.</p>
            <a href="/home">Home </a>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-3 wow animated animated2 fadeInLeft" style="margin-right:30px">
        <div class="project-hover">
            <h2>iRecipe</h2>
            <hr />
            <p style="color: whitesmoke;">Our team has a passion for the foods of different cultures, travel the world through our recipes</p>
            <a href="/home">Home </a>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-4 wow animated fadeInLeft">
        <div class="project-hover">
            <h2>iRecipe</h2>
            <hr />
            <p style="color: whitesmoke;"> Our Website brings professional recipes to your home for you to  prepare delicious, customized meals.</p>
            <a href="/home">Home</a>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
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
                    <a href="/home"><img src="img/core-img/irecipefinalcut200.png" alt="irecipe"></a>
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
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="js/bootstrap/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="js/bootstrap/bootstrap.min.js"></script>
<!-- All Plugins js -->
<script src="js/plugins/plugins.js"></script>
<!-- Active js -->
<script src="js/active.js"></script>
</body>
</html>
