<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<jsp:include page="fragments/headTag.jsp"/>
<jsp:include page="fragments/bodyHeader.jsp"/>
<body>
<main role="main">
    <div class="jumbotron pt-0">
        <div class="container">
            <c:if test="${param.error}">
                <div class="error">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
            </c:if>
            <c:if test="${not empty param.message}">
                <div class="message"><spring:message code="${param.message}"/></div>
            </c:if>
            <br/>
            <p>
                <a class="btn btn-lg btn-success" href="register"><spring:message code="app.register"/> &raquo;</a>
                <button type="submit" class="btn btn-lg btn-primary" onclick="login('user@yandex.ru', 'password')">
                    <spring:message code="app.login"/> User
                </button>
                <button type="submit" class="btn btn-lg btn-primary" onclick="login('admin@gmail.com', 'admin')">
                    <spring:message code="app.login"/> Admin
                </button>
            </p>
            <p class="h1" style="text-align: center">Описание проекта</p>

            <div>
                <p>&nbsp;&nbsp;&nbsp;Java Enterprise проект с
                    регистрацией/авторизацией и интерфейсом на основе ролей (USER, ADMIN).
                    Администратор может создавать/редактировать/удалять пользователей, а пользователи - управлять своим
                    профилем и данными (день, еда, калории) через UI (по AJAX) и по REST интерфейсу с базовой
                    авторизацией.
                    Возможна фильтрация данных по датам и времени, при этом цвет записи таблицы еды зависит от того,
                    превышает ли
                    сумма
                    калорий за день норму (редактируемый параметр в профиле пользователя).
                    Весь REST интерфейс покрывается JUnit тестами, используя Spring MVC Test и Spring Security Test.</p>
            </div>

            <%-- <p>Стек технологий: <a href="http://projects.spring.io/spring-security/">Spring Security</a>,
                 <a href="https://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html">Spring MVC</a>,
                 <a href="http://projects.spring.io/spring-data-jpa/">Spring Data JPA</a>,
                 <a href="http://spring.io/blog/2014/05/07/preview-spring-security-test-method-security">Spring Security
                     Test</a>,
                 <a href="http://hibernate.org/orm/">Hibernate ORM</a>,
                 <a href="http://hibernate.org/validator/">Hibernate Validator</a>,
                 <a href="http://www.slf4j.org/">SLF4J</a>,
                 <a href="https://github.com/FasterXML/jackson">Json Jackson</a>,
                 <a href="http://ru.wikipedia.org/wiki/JSP">JSP</a>,
                 <a href="http://en.wikipedia.org/wiki/JavaServer_Pages_Standard_Tag_Library">JSTL</a>,
                 <a href="http://tomcat.apache.org/">Apache Tomcat</a>,
                 <a href="http://www.webjars.org/">WebJars</a>,
                 <a href="http://datatables.net/">DataTables plugin</a>,
                 <a href="http://ehcache.org">EHCACHE</a>,
                 <a href="http://www.postgresql.org/">PostgreSQL</a>,
                 <a href="http://junit.org/">JUnit</a>,
                 <a href="http://hamcrest.org/JavaHamcrest/">Hamcrest</a>,
                 <a href="http://jquery.com/">jQuery</a>,
                 <a href="http://ned.im/noty/">jQuery notification</a>,
                 <a href="http://getbootstrap.com/">Bootstrap</a>.</p>--%>
        </div>
    </div>
    <div class="container">
        <p class="h1" style="text-align: center">Стек технологий</p>
        <div class="row">
            <div class="col-md-3">
                <h2 title="Внедряет зависимости (DI), облегчает работу с БД, обрабатывает приходящие запросы от пользователей (MVC), обеспечивает авторизацию, аутентификацию и безопасность приложения, подключает кэширование">Spring Framework</h2>
                <p>Каркас приложения.</p>
            </div>
            <div class="col-md-3">
                <h2 title="ORM (Object Relation Mapping) технология, связывающая Java объекты с БД. Больше не придется писать SQL запросы к базе, а напрямую работать с объекты и писать запросы к ним">Hibernate</h2>
                <p>Верный помощник при работе с базой данных.</p>
            </div>
            <div class="col-md-3">
                <h2>Logging (SLF4J)</h2>
                <p>Следит за всеми действиями в приложении. Без него было бы очень сложно находить ошибки.</p>
            </div>
            <%--<div class="col-md-3">
                <h2>Jackson</h2>
                <p>Обрабатывает JSON данные, приходящие от клиента.</p>
            </div>--%>
        </div>

        <div class="row">
            <%--<div class="col-md-3">
                <h2>EHCACHE</h2>
                <p>Кэширует данные и ускоряет работу.</p>
            </div>--%>
            <div class="col-md-3">
                <h2>PostgreSQL</h2>
                <p>База данных. Хранит данные о пользователях и еде.</p>
            </div>
            <div class="col-md-3">
                <h2>JUnit</h2>
                <p>Позволяет проводить тестирование приложения.</p>
            </div>
            <div class="col-md-3">
                <h2 title="Веб-приложение, как ни странно, требует собственное адресное пространство для запуска">Apache Tomcat</h2>
                <p>Веб-сервер.</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                <h2>Maven</h2>
                <p>Осуществляет всю сборку и управление по проекту.</p>
            </div>
            <div class="col-md-3">
                <h2>DataTables</h2>
                <p>Помогает рисовать красивые и динамические таблицы, как у нас.</p>
            </div>
            <div class="col-md-3">
                <h2 title="Например, позволяет получать любые объекты со страницы и проводить над ними различные манипуляции">jQuery</h2>
                <p>Библиотека, облегчающая работу с JavaScript.</p>
            </div>
            <div class="col-md-3">
                <h2>Bootstrap</h2>
                <p>Полностью отвечает за дизайн сайта.</p>
            </div>
        </div>
    </div>
</main>
<br>
<br>
<br>
<jsp:include page="fragments/footer.jsp"/>
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