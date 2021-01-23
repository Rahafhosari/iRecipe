<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script>
function getsource(id){
$.ajax({
url:"https://api.spoonacular.com/recipes/"+id+"/information?apiKey=db254b5cd61744d39a2deebd9c361444",
success: function(res) {

document.getElementById("sourceLink").innerHTML+=res.sourceUrl
document.getElementById("sourceLink").href+=res.sourceUrl
}
});
}
function getrecepe(q){
$.ajax({
url:"https://api.spoonacular.com/recipes/search?apiKey=db254b5cd61744d39a2deebd9c361444&number=5&query="+q,
success: function(res) {
for(var i=0; i<res.results.length;i++)
document.getElementById("output").innerHTML+="<h1>"+res.results[i].title+"</h1><br><img src='"+res.baseUri+res.results[i].image+"' width='400' /><br>Ready in "+res.results[i].readyInMinutes+" minutes"+"<br>"+"<a href='"+res.results[i].sourceUrl+"'>"+res.results[i].sourceUrl

}
});
}
</script>
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
                                <li><a href="/about">About</a></li>
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
<center>
    <input id="search" box-shadow: 2px 3px dimgrey;><button style="background: #f14444; color: whitesmoke;border-color: #f14444; box-shadow: 2px 3px dimgrey;" onclick="getrecepe(document.getElementById('search').value)">Search</button>
    <div id="output">
        <a href="" id="sourceLink"></a>
    </div>
</center>
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