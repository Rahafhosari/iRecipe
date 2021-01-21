<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <link href="/img/iRecipe_Logo_icon.ico" rel="icon" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="css/loginRegi.css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
    <style>
        .d-block{
            height: -webkit-fill-available;
        }
    </style>
</head>
<body>
<section class="login-block">
    <div class="container">
        <div class="row">
            <div class="col-md-8 banner-sec">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid" src="https://images.pexels.com/photos/4033636/pexels-photo-4033636.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="banner-text">
                                    <h2>iRecipe</h2>
                                    <p>A Perfect Tasty  Plate leads to a happy tummy.</p>
                                    <p>Get Ready To be creative with IRecipe!</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="https://images.pexels.com/photos/5876/food-salad-healthy-vegetables.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="banner-text">
                                    <h2>iRecipe</h2>
                                    <p>Our Website brings professional recipes to your home for you to  prepare delicious, customized meals.</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid" src="https://images.pexels.com/photos/1339516/pexels-photo-1339516.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="banner-text">
                                    <h2>iRecipe</h2>
                                    <p>It's a fresh, clean site that feels honest and dependable by incorporating bright backgrounds and friendly imagery.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="copy-text">
                        <p>Already Have an account?<a href="/login"> Login Now! </a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 login-sec">
                <h2 class="text-center">Register</h2>
                <p><form:errors path="user.*"/></p>
                <form:form class="login-form" method="POST" action="/registration" modelAttribute="user" >
                    <div class="form-group">
                        <form:label path="username" for="username" class="text-uppercase">Username</form:label>
                        <form:input path="username" type="text" class="form-control" placeholder="username" id="username" name="username"/>
                    </div>
                    <div class="form-group">
                        <form:label path="email" for="email" class="text-uppercase">Email</form:label>
                        <form:input path="email" type="email" class="form-control" placeholder="email@example.com" id="email" name="email"/>
                    </div>
                    <div class="form-group">
                        <form:label path="password" for="password" class="text-uppercase">Password</form:label>
                        <form:password path="password" class="form-control" placeholder="enter password" id="password" name="password"/>
                    </div>
                    <div class="form-group">
                        <form:label path="passwordConfirmation" for="passwordConfirmation" class="text-uppercase">Password Confirmation</form:label>
                        <form:password path="passwordConfirmation" class="form-control" placeholder="confirm password" id="passwordConfirmation" name="passwordConfirmation"/>
                    </div>
                    <div><button type="submit" class="btn btn-login float-right">Register</button></div>
                </form:form>
            </div>
        </div>
    </div>
    <div class="copy-text">Created by AxsosAcademyStudents Copyright©2021 All rights reserved</div>
</section>
</body>
</html>

