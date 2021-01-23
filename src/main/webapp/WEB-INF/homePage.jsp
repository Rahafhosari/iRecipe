<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>iRecipe - Food Blog | Home</title>

    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/iRecipe_icon_original.png" alt="">
    </div>

    <!-- Search Wrapper -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <input type="search" name="search" placeholder="Type any keywords...">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
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
                                    <li class="active"><a href="home">Home</a></li>
                                    <li><a href="/api">Search</a></li>
                                    <li><a>Categories</a>
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

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/cupcake.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">iRecipe Website!</h2>
<p data-animation="fadeInUp" data-delay="700ms">A Perfect Tasty  Plate leads to a happy tummy . Our Website brings professional recipes to your home for you to  prepare delicious, customized meals. It's a fresh, clean site that feels honest and dependable by incorporating bright backgrounds and friendly imagery.  Get Ready To be creative with IRecipe!</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/asianfood.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">Welcome!!</h2>
<p data-animation="fadeInUp" data-delay="700ms">Our team loves food and the way it helps us take care of our bodies. WE combine this with ideas that will help us rethink the idea of food in general giving you tools to be successful, healthy and happy.</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/bg7.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">iRecipe Welcome</h2>
<p data-animation="fadeInUp" data-delay="700ms">A Perfect Tasty  Plate leads to a happy tummy . Our Website brings professional recipes to your home for you to  prepare delicious, customized meals. It's a fresh, clean site that feels honest and dependable by incorporating bright backgrounds and friendly imagery.  Get Ready To be creative with IRecipe!</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Top Category Area Start ##### -->
    <section class="top-catagory-area section-padding-80-0">
        <div class="container">
            <div class="row">
                <!-- Top Catagory Area -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-catagory">
                        <img src="img/bg-img/bg3.jpg" alt="">
                        <!-- Content -->
                        <div class="top-cta-content">
                            <h3>Main Courses</h3>
                            <h6>Simple &amp; Delicious</h6>
                            <a href="/categories/1" class="btn delicious-btn">Main Course Recipes</a>
                        </div>
                    </div>
                </div>
                <!-- Top Catagory Area -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-catagory">
                        <img src="img/bg-img/bg2.jpg" alt="">
                        <!-- Content -->
                        <div class="top-cta-content">
                            <h3>Desserts</h3>
                            <h6>Simple &amp; Delicious</h6>
                            <a href="/categories/2" class="btn delicious-btn">Desserts Recipes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Top Category Area End ##### -->
    <!-- ##### CTA Area Start ##### -->
    <section class="cta-area bg-img bg-overlay" style="background-image: url(img/bg-img/bg4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <!-- Cta Content -->
                    <div class="cta-content text-center">
                        <h2>iRecipe</h2>
                        <p>Your online directory for all recipes. From salty to sweet, we got you covered with hundreds of recipes to try out with your loved ones.</p>
                        <a href="api" class="btn delicious-btn">Discover more recipes</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### CTA Area End ##### -->
    <!-- ##### Quote Subscribe Area Start ##### -->
    <section class="quote-subscribe-adds section-padding-80-0">
        <div class="container">
            <div class="row align-items-end">
                <!-- Quote -->
                <div class="col-12 col-lg-4">
                    <div class="quote-area text-center">
                        <span>"</span>
                        <h4>We bring you professional recipes to your home for you to try & prepare delicious, customized meals.</h4>
                        <p>iRecipe Team</p>
                        <div class="date-comments d-flex justify-content-between">
                            <div class="date"></div>
                            <div class="comments">January 23, 2021</div>
                        </div>
                    </div>
                </div>

                <!-- Newsletter -->
                <div class="col-12 col-lg-4">
                    <div class="newsletter-area">
                        <h4>Subscribe to our newsletter</h4>
                        <!-- Form -->
                        <div class="newsletter-form bg-img bg-overlay" style="background-image: url(img/bg-img/bg1.jpg);">
                            <form action="#" method="post">
                                <input type="email" name="email" placeholder="enter your email address">
                                <button type="submit" class="btn delicious-btn w-100">Subscribe</button>
                            </form>
                            <p>We provide you with hundreds of delicious recipes to share with your loved ones. From salty to sweet we got you covered! Subscribe now</p>
                        </div>
                    </div>
                </div>
                <!-- Quote -->
                <div class="col-12 col-lg-4">
                    <div class="quote-area text-center">
                        <span>"</span>
                        <h4> It's a fresh, clean site that feels honest and dependable. Get Ready To be creative with IRecipe!</h4>
                        <p>iRecipe Team</p>
                        <div class="date-comments d-flex justify-content-between">
                            <div class="date">January 20, 2021</div>
                            <div class="comments"></div>
                        </div>
                    </div>
                </div>
        </div>
    </section>
    <!-- ##### Quote Subscribe Area End ##### -->
    <!-- ##### Follow Us Instagram Area Start ##### -->
    <div class="follow-us-instagram">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h5>Follow Us on Instagram</h5>
                </div>
            </div>
        </div>
        <!-- Instagram Feeds -->
        <div class="insta-feeds d-flex flex-wrap">
            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/instasian.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/instabrownie.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/instasushi.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/instasoup.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/instacookie.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/instachicken.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/instaacaibowel.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/axsosacademy/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Follow Us Instagram Area End ##### -->
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