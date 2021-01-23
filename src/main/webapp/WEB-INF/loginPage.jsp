<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <link href="img/iRecipe_Logo_icon.png" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="css/loginRegi.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
</head>
<body>
<section class="login-block">
    <div class="container">
        <div class="row">
            <div class="col-md-4 login-sec">
                <h2 class="text-center">Login</h2>
                <form class="login-form" method="POST" action="/login" >
                    <div class="form-group">
                        <label for="username" class="text-uppercase">Username</label>
                        <input type="text" class="form-control" placeholder="username" id="username" name="username">
                    </div>
                    <div class="form-group">
                        <label for="password" class="text-uppercase">Password</label>
                        <input type="password" class="form-control" placeholder="enter password" id="password" name="password">
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input">
                            <small>Remember Me</small>
                        </label>
                        <div class="form-check">
                            <c:if test="${errorMessage != null}">
                                <c:out value="${errorMessage}"></c:out>
                            </c:if>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </div>
                    <div><button type="submit" class="btn btn-login float-right">Login</button></div>
                </form>
                <div class="form-check">
                    <c:if test="${logoutMessage != null}">
                        <c:out value="${logoutMessage}"></c:out>
                    </c:if>
                </div>
                <div class="copy-text">
                <p>Not Registered Yet?<a href="/registration"> Register Now! </a></p>
                </div>
            </div>
            <div class="col-md-8 banner-sec">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid" src="https://images.pexels.com/photos/3740196/pexels-photo-3740196.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="First slide" class="responsive" >
                            <div class="carousel-caption d-none d-md-block">
                                <div class="banner-text">
                                    <h2>iRecipe</h2>
                                    <p>A Perfect Tasty  Plate leads to a happy tummy.</p>
                                    <p>Get Ready To be creative with IRecipe!</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="https://images.pexels.com/photos/5638836/pexels-photo-5638836.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="banner-text">
                                    <h2>iRecipe</h2>
                                    <p>Our Website brings professional recipes to your home for you to  prepare delicious, customized meals.</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="https://images.pexels.com/photos/2741458/pexels-photo-2741458.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="banner-text">
                                    <h2>iRecipe</h2>
                                    <p>It's a fresh, clean site that feels honest and dependable by incorporating bright backgrounds and friendly imagery.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>