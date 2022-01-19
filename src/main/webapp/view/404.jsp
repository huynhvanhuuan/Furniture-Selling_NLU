<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <c:import url="import/head.jsp"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/404.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/signup-signin.css" />
    <title>404 - Trang không tồn tại</title>
</head>
<body>
<c:import url="import/header.jsp" />
<section class="error">
    <div class="error-content">
        <h3>Oops! Đã có lỗi xảy ra.</h3>
        <span>Trang mà bạn đang truy cập có thể đã bị xóa hoặc không còn truy cập được nữa.</span>
        <div class="flex-center">
            <a href="<%=request.getContextPath()%>/home" class="btn-primary">Trở về trang chủ</a>
        </div>
    </div>
</section>

<c:import url="import/signin-signup.jsp"/>
<script src="../js/signup-signin.js"></script>
</body>
</html>
