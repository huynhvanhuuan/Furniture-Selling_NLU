<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>500 - Lỗi kết nối máy chủ</title>
</head>
<body>
<c:import url="import/header.jsp" />
<section class="error">
    <div class="error-content">
        <h3>Oops! Đã có lỗi xảy ra.</h3>
        <span>Kết nối đến máy chủ đang có vấn đề. Vui lòng quay lại sau</span>
    </div>
</section>
<c:import url="import/signin-signup.jsp"/>
<script src="../js/signup-signin.js"></script>
</body>
</html>
