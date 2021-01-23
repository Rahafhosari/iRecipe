<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 1/22/2021
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<%--    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>--%>
<%--    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>--%>
<%--    <link rel="icon" href="img/favicon.ico">--%>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
<%--    <style>--%>

<%--        .cta-section {--%>
<%--            background: rgba(0, 0, 0, 0) url("https://res.cloudinary.com/sanitarium/image/fetch/q_auto/https://www.sanitarium.com.au/getmedia%2Fae51f174-984f-4a70-ad3d-3f6b517b6da1%2Ffruits-vegetables-healthy-fats.jpg%3Fwidth%3D1180%26height%3D524%26ext%3D.jpg") no-repeat scroll left top / cover;--%>
<%--            padding: 55px 0;--%>
<%--        }--%>
<%--        .black-trans-bg {--%>
<%--            position: relative;--%>
<%--        }--%>
<%--        .black-trans-bg::before {--%>
<%--            background: #000 none repeat scroll 0 0;--%>
<%--            content: "";--%>
<%--            height: 100%;--%>
<%--            left: 0;--%>
<%--            opacity: 0.3;--%>
<%--            position: absolute;--%>
<%--            top: 0;--%>
<%--            width: 100%;--%>
<%--            z-index: 0;--%>
<%--        }--%>
<%--        .cta-title h2 {--%>
<%--            color: #fff;--%>
<%--            display: inline-block;--%>
<%--            font-size: 26px;--%>
<%--            line-height: 30px;--%>
<%--            padding: 16px 0;--%>
<%--            text-transform: uppercase;--%>
<%--        }--%>
<%--        .cta-title a {--%>
<%--            margin-top:26px;--%>
<%--            border: 1px solid #fff;--%>
<%--            color: #fff;--%>
<%--            display: inline-block;--%>
<%--            float: right;--%>
<%--            font-size: 16px;--%>
<%--            font-weight: 700;--%>
<%--            letter-spacing: 0;--%>
<%--            padding: 9px 18px;--%>
<%--            text-transform: uppercase;--%>
<%--        }--%>
<%--        @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900,900italic);--%>

<%--        body {--%>
<%--            font-family: 'Source Sans Pro', sans-serif;--%>
<%--            line-height: 1.5;--%>
<%--            color: #323232;--%>
<%--            font-size: 15px;--%>
<%--            font-weight: 400;--%>
<%--            text-rendering: optimizeLegibility;--%>
<%--            -webkit-font-smoothing: antialiased;--%>
<%--            -moz-font-smoothing: antialiased;--%>
<%--        }--%>
<%--        .heading-title {--%>
<%--            margin-bottom: 100px;--%>
<%--        }--%>
<%--        .text-center {--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        .heading-title h3 {--%>
<%--            margin-bottom: 0;--%>
<%--            letter-spacing: 2px;--%>
<%--            font-weight: normal;--%>
<%--        }--%>
<%--        .p-top-30 {--%>
<%--            padding-top: 30px;--%>
<%--        }--%>
<%--        .half-txt {--%>
<%--            width: 60%;--%>
<%--            margin: 0 auto;--%>
<%--            display: inline-block;--%>
<%--            line-height: 25px;--%>
<%--            color: #7e7e7e;--%>
<%--        }--%>
<%--        .text-uppercase {--%>
<%--            text-transform: uppercase;--%>
<%--        }--%>

<%--        .team-member, .team-member .team-img {--%>
<%--            position: relative;--%>
<%--        }--%>
<%--        .team-member {--%>
<%--            overflow: hidden;--%>
<%--        }--%>
<%--        .team-member, .team-member .team-img {--%>
<%--            position: relative;--%>
<%--        }--%>

<%--        .team-hover {--%>
<%--            position: absolute;--%>
<%--            top: 0;--%>
<%--            left: 0;--%>
<%--            bottom: 0;--%>
<%--            right: 0;--%>
<%--            margin: 0;--%>
<%--            border: 20px solid rgba(0, 0, 0, 0.1);--%>
<%--            background-color: rgba(255, 255, 255, 0.90);--%>
<%--            opacity: 0;--%>
<%--            -webkit-transition: all 0.3s;--%>
<%--            transition: all 0.3s;--%>
<%--        }--%>
<%--        .team-member:hover .team-hover .desk {--%>
<%--            top: 35%;--%>
<%--        }--%>
<%--        .team-member:hover .team-hover, .team-member:hover .team-hover .desk, .team-member:hover .team-hover .s-link {--%>
<%--            opacity: 1;--%>
<%--        }--%>
<%--        .team-hover .desk {--%>
<%--            position: absolute;--%>
<%--            top: 0%;--%>
<%--            width: 100%;--%>
<%--            opacity: 0;--%>
<%--            -webkit-transform: translateY(-55%);--%>
<%--            -ms-transform: translateY(-55%);--%>
<%--            transform: translateY(-55%);--%>
<%--            -webkit-transition: all 0.3s 0.2s;--%>
<%--            transition: all 0.3s 0.2s;--%>
<%--            padding: 0 20px;--%>
<%--        }--%>
<%--        .desk, .desk h4, .team-hover .s-link a {--%>
<%--            text-align: center;--%>
<%--            color: #222;--%>
<%--        }--%>
<%--        .team-member:hover .team-hover .s-link {--%>
<%--            bottom: 10%;--%>
<%--        }--%>
<%--        .team-member:hover .team-hover, .team-member:hover .team-hover .desk, .team-member:hover .team-hover .s-link {--%>
<%--            opacity: 1;--%>
<%--        }--%>
<%--        .team-hover .s-link {--%>
<%--            position: absolute;--%>
<%--            bottom: 0;--%>
<%--            width: 100%;--%>
<%--            opacity: 0;--%>
<%--            text-align: center;--%>
<%--            -webkit-transform: translateY(45%);--%>
<%--            -ms-transform: translateY(45%);--%>
<%--            transform: translateY(45%);--%>
<%--            -webkit-transition: all 0.3s 0.2s;--%>
<%--            transition: all 0.3s 0.2s;--%>
<%--            font-size: 35px;--%>
<%--        }--%>
<%--        .desk, .desk h4, .team-hover .s-link a {--%>
<%--            text-align: center;--%>
<%--            color: #222;--%>
<%--        }--%>
<%--        .team-member .s-link a {--%>
<%--            margin: 0 10px;--%>
<%--            color: #333;--%>
<%--            font-size: 16px;--%>
<%--        }--%>
<%--        .team-title {--%>
<%--            position: static;--%>
<%--            padding: 20px 0;--%>
<%--            display: inline-block;--%>
<%--            letter-spacing: 2px;--%>
<%--            width: 100%;--%>
<%--        }--%>
<%--        .team-title h5 {--%>
<%--            margin-bottom: 0px;--%>
<%--            display: block;--%>
<%--            text-transform: uppercase;--%>
<%--        }--%>
<%--        .team-title span {--%>
<%--            font-size: 12px;--%>
<%--            text-transform: uppercase;--%>
<%--            color: #a5a5a5;--%>
<%--            letter-spacing: 1px;--%>
<%--        }--%>
<%--    </style>--%>

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
                                <li><a href="#">Welcome to iRecipe!</a></li>
                                <li><a href="#">A Perfect Tasty  Plate leads to a happy tummy!</a></li>
                                <li><a href="categories">Categories</a></li>
                                <li><a href="recipiesS">Recipes</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Top Social Info -->
                <div class="col-12 col-sm-6">
                    <div class="top-social-info text-right">
                        <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
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
                                <li><a href="index.html">Home</a></li>
                                <li class="active"><a href="test">Recipes</a></li>
                                <li><a>Categories</a>
                                    <ul class="dropdown">
                                        <li><a href="categories/1">Main Courses</a></li>
                                        <li><a href="categories/2">Desserts</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
                                <%--                                    <form style="float:right;" id="logoutForm" method="POST" action="/logout">--%>
                                <%--                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                                <%--                                            <input type="submit" value="Logout!" />--%>
                                <%--                                    </form>--%>
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

<%--<div class="cta-section black-trans-bg">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">--%>
<%--                <div class="cta-title">--%>
<%--                    <h2>iRecipe,A Perfect Tasty  Plate leads to a happy tummy</h2>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<div class="container">--%>
<%--    <div class="row">--%>
<%--        <div class="heading-title text-center">--%>
<%--            <h3 class="text-uppercase">${category.name}</h3>--%>
<%--            <p class="p-top-30 half-txt">${category.description} </p>--%>
<%--        </div>--%>
<%--    <c:forEach items="${ category.recipe }" var="rec">--%>
<%--        <div class="col-md-4 col-sm-4">--%>
<%--            <div class="team-member">--%>
<%--                <div class="team-img">--%>
<%--                    <img style="height: 301px"width="390px" src="/img/${rec.image}.jpg" class="img-responsive">--%>
<%--                </div>--%>
<%--                <div class="team-hover">--%>
<%--                    <div class="desk">--%>
<%--                        <a href="/recipes/${ rec.id }">${ rec.name }</a></li>--%>
<%--                    </div>--%>
<%--                    <div class="s-link">--%>
<%--                        <a href="#"><i class="fa fa-facebook"></i></a>--%>
<%--                        <a href="#"><i class="fa fa-twitter"></i></a>--%>
<%--                        <a href="#"><i class="fa fa-google-plus"></i></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="team-title">--%>
<%--                <a href="/recipes/${ rec.id }">${ rec.name }</a></li>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>
<%--    </div>--%>
<%--</div>--%>

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
