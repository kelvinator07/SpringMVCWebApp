<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <title>Spring MVC - Welcome Home Page</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />
</head>

<body>

<h2 align="center">Spring MVC - Welcome Home Page </h2>

    <div class="maindiv" align="center" >

        <hr>

        <a href="hello/showForm">Hello World form</a>

        <br><br>

        <a href="student/showForm">Student form</a>

        <br><br>

        <a href="customer/showForm">Customer form</a>

        <br><br>

    </div>


</body>

</html>







