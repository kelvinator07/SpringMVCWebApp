<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
    <title>Customer Registration Form</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="/css/main.css" rel="stylesheet" />
</head>

<body>

    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Flight Reservation Application Using Spring Boot</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">User Login</a></li>
                </ul>
            </div>
        </div>
    </nav>


    <i>Fill out the form. Asterisk * means required</i>

    <br><br>

    <div class="maindiv" align="center" >

        <form:form action="processForm" modelAttribute="customer">

            First Name: <form:input path="firstName"/>

            <br> <br>

            Last Name (*): <form:input path="lastName"/>
            <form:errors path="lastName" cssClass="error"/>

            <br><br>

            Free Passes: <form:input path="freePasses"/>
            <form:errors path="freePasses" cssClass="error"/>

            <br><br>

            Postal Code: <form:input path="postalCode"/>
            <form:errors path="postalCode" cssClass="error"/>

            <br><br>

            Course Code: <form:input path="courseCode"/>
            <form:errors path="courseCode" cssClass="error"/>

            <br><br>

            <input type="submit" value="Submit"/>

        </form:form>

    </div>


</body>

</html>