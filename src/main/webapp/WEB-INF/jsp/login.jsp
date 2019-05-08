<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>Health App | Home</title>
    <!--meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Health App"/>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--booststrap-->
    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--stylesheets-->
    <link href="resources/css/style-login.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->
    <link href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Patrick+Hand" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
</head>

<body>
<!-- banner -->
<div class="banner-left-side" id="home">
    <!-- header -->
    <div class="headder-top">
        <!-- nav -->
        <nav>
            <div id="logo">
                <h1>
                    <a href="index.html">Health App</a>
                </h1>
            </div>
            <label for="drop" class="toggle">Menu</label>
            <input type="checkbox" id="drop">
            <ul class="menu mt-2">
                <li class="active">
                    <a href="index.html">Home</a>
                </li>
                <li>
                    <a href="register">Registration</a>
                </li>
                <li>
                    <a href="#app">App</a>
                </li>
                <!-- todo add login href -->
                <!-- _______________________________________________________________________________________________________________ -->
                <li>
                    <form:form class="form-inline my-2" id="login_form" action="spring_security_check" method="post">
                        <input class="form-control mr-1" type="text" placeholder="Email" name="username">
                        <input class="form-control mr-1" type="password" placeholder="Password" name="password">
                        <button class="btn btn-success" type="submit">
                            <span class="fa fa-sign-in"></span>
                        </button>
                    </form:form>
                </li>
                <!-- _______________________________________________________________________________________________________________ -->
            </ul>
        </nav>
        <!-- //nav -->
    </div>
    <!-- //header -->
    <!-- banner -->
    <div class="main-banner text-center">
        <div class="container">
<%--            <button type="submit" class="btn btn-lg btn-primary" onclick="login('user@yandex.ru', 'password')">
                    <spring:message code="app.login"/> User
                </button>
                <button type="submit" class="btn btn-lg btn-primary" onclick="login('admin@gmail.com', 'admin')">
                    <spring:message code="app.login"/> Admin
                </button>--%>
            <div class="banner-right-txt">
                <h5 class="mb-sm-3 mb-2">Health App</h5>
            </div>
            <div class="slide-info-txt">
                <p>Beautiful tagline</p>
            </div>
        </div>
    </div>
</div>
<!-- //banner -->
<!-- about -->
<section class="about py-lg-4 py-md-4 py-sm-3 py-3" id="about">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-2">About</h3>
        <div class="row">
            <div class="col-lg-5 video-info-img text-center position-relative">
                <div class="abut-img-w3l">
                    <img src="resources/images/screen_about.png" alt="" class="img-fluid">
                </div>
                <div class="abut-img-two">
                    <img src="resources/images/second_about.png" alt="" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-7 left-abut-txt ">
                <div class="about-right-grid">
                    <h2 class="mb-3">Tagline may be</h2>
                    <p>Some text about app</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--//about -->
<!-- store-info -->
<section class="store-info py-lg-4 py-md-4 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <div class="row">
            <div class="col-lg-7 store-details">
                <h4 class="mb-3">Download app</h4>
                <h6 class="mb-2">Only for Google Play available!</h6>
                <p>Text for our app</p>
                <div class="view-buttn mt-md-4 mt-3">
                    <a href="https://play.google.com/store?hl=en_US" id="app">Download</a>
                </div>
            </div>

            <div class="col-lg-5 store-image-right">
                <img src="resources/images/googleplay.png" alt="" class="img-fluid">
            </div>
        </div>
    </div>
</section>
<!--//store-info -->
<!--footer -->
<footer id="footer" class="bottem-wthree-footer text-center py-md-4 py-3">
    <p>
        © 2019 HealthApp | Created by
        <a href="https://vk.com/32xlevel" target="_blank">Ilkaev Artour</a>,
        <a href="https://vk.com/karanarqq" target="_blank">Shuvaev Artem</a>,
        <a href="https://vk.com/selina_ad" target="_blank">Selina Anna</a>,
        <a href="https://vk.com/evk59" target="_blank">Kostilyev Ivan</a>
    </p>
</footer>
<script type="text/javascript">
    <c:if test="${not empty param.username}">
    setCredentials("${param.username}", "");
    </c:if>
    function login(username, password) {
        setCredentials(username, password);
        $("#login_form").submit();
    }
    function setCredentials(username, password) {
        $('input[name="username"]').val(username);
        $('input[name="password"]').val(password);
    }
</script>
</body>
</html>