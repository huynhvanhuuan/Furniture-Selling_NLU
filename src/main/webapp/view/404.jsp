<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Huỳnh Văn Hữu Ân
  Date: 11/29/2021
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/404.css">
    <title>404 Not Found</title>
</head>
<body>
<c:import url="import/header.jsp"/>
<section class="error">
    <div class="error-content">
        <h3>Oops! Something went wrong.</h3>
        <span>The page are looking for has been moved or doesn’t exist anymore.</span>
        <button onclick="location.href='<%=request.getContextPath()%>/home'">Back to Homepage</button>
    </div>
</section>
<c:import url="import/script.jsp"/>
</body>
</html>
