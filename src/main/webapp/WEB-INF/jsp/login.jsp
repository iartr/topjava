<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Health App | Home</title>
    <!--meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <link rel="shortcut icon" href="resources/images/icon-meal.png">
    <script type="text/javascript" src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
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
                    <a href="login">Главная</a>
                </li>
                <li>
                    <a href="register">Регистрация</a>
                </li>
                <li>
                    <a href="#app">Приложение</a>
                </li>
                <!-- todo add login href -->
                <!-- _______________________________________________________________________________________________________________ -->
                <li>
                    <form:form id="login_form" action="spring_security_check" method="post" class="form-inline">
                        <input type="text" placeholder="Email" name="username">
                        <input type="password" placeholder="Password" name="password">
                        <div class="view-buttn2">
                            <button class="submit">Войти</button>
                        </div>
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
            <div class="banner-right-txt">
                <h5 class="mb-sm-3 mb-2">Health App</h5>
            </div>
            <div class="slide-info-txt">
                <div class="view-buttn3">
                    <button type="submit" onclick="login('user@yandex.ru', 'password')">
                        Попробовать!
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //banner -->
<!-- about -->
<section class="about py-lg-4 py-md-4 py-sm-3 py-3" id="about">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-2">Приложение</h3>
        <div class="row">
            <div class="col-lg-5 video-info-img text-center position-relative">
                <div class="abut-img-w3l">
                    <img src="https://camo.githubusercontent.com/e2d0b2348305cc5b50b2cc2b32b3c65cb6dc10be/68747470733a2f2f646f776e6c6f616465722e6469736b2e79616e6465782e72752f707265766965772f633066346663353639336436356662336636323931383932633534353138663831313336353931636165356361346435626630623666303730343939303635612f35636433336634622f6e492d426253345444685933626d32375666776d546c7261706c5778616d5145723337484f7038357a6238474d354b6f6b79706d4f6337434e6661364c6a55326943724641776c36787863537078466542746e6b4e412533442533443f7569643d302666696c656e616d653d53637265656e73686f745f342e706e6726646973706f736974696f6e3d696e6c696e6526686173683d266c696d69743d3026636f6e74656e745f747970653d696d616765253246706e6726746b6e763d76322673697a653d3135353278373634" alt="" class="img-fluid">
                </div>
                <div class="abut-img-two">
                    <img src="resources/images/second_about.png" alt="" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-7 left-abut-txt ">
                <div class="about-right-grid">
                    <h2 class="mb-3">Чтобы организм работал как часы, нужно питаться по часам</h2>
                    <p>Следите за приемами воды и пищи, станьте здоровее вместе с Health App</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--//about -->
<!— store-info —>
<section class="store-info py-lg-4 py-md-4 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <div class="row">
            <div class="col-lg-7 store-details">
                <br>
                <h4 class="mb-3">Скачать приложение</h4>
                <h6 class="mb-2">Эксклюзивно для Android</h6>
                <p>Следите за исполнением приемов пищи и воды, а все остальное приложение сделает за вас</p>
                <div class="view-buttn mt-md-4 mt-3">
                    <a href="https://github.com/32xlevel/FoodTracker" id="app">Скачать</a>
                </div>
            </div>
            <div class="col-lg-5 store-image-right">
                <img src="resources/images/googleplay.png" alt="" class="img-fluid">
            </div>
        </div>
    </div>
</section>
<!--//store-info —>
< footer -->
<footer id="footer" class="bottem-wthree-footer text-center py-md-4 py-3">
    <p>
        © 2019 HealthApp | Разработчики
        <a href="https://vk.com/32xlevel" target="_blank">Илькаев Артур</a>,
        <a href="https://vk.com/karanarqq" target="_blank">Шуваев Артем</a>,
        <a href="https://vk.com/selina_ad" target="_blank">Селина Анна</a>,
        <a href="https://vk.com/evk59" target="_blank">Костылев Иван</a>
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