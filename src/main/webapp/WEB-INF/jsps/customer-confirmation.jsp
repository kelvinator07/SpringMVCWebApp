<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
    <title>Customer Confirmation</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />
</head>

<body>

The Customer is confirmed: ${customer.firstName} ${customer.lastName}

<br><br>

Freepasses is ${customer.freePasses}

<br><br>

Postal Code is ${customer.postalCode}

<br><br>

Course Code is ${customer.courseCode}


<br><br>

</body>

</html>







