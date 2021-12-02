<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<header class="header">
    <div class="container">
        <div class="box">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/images/logo.jpg" alt="Logo" class="logo-img" />
            </div>
            <nav class="navigation">
                <ul class="navigation-list">
                    <li class="navigation-item"><a href="<%=request.getContextPath()%>/home">Trang chủ</a></li>
                    <li class="navigation-item"><a href="<%=request.getContextPath()%>/product">Sản phẩm</a></li>
                    <li class="navigation-item"><a href="<%=request.getContextPath()%>/contact">Liên hệ</a></li>
                    <li class="navigation-item"><a href="#">Mới</a></li>
                    <li class="navigation-item"><a href="#">Khuyến mãi</a></li>
                    <li class="navigation-item"><a href="#">Blog</a></li>
                </ul>
            </nav>
            <div class="header-btn">
                <ul class="header-list">
                    <li class="header-item">
                        <a href="#"><ion-icon name="search-outline"></ion-icon></a>
                    </li>
                    <li class="header-item">
                        <a href="#"><ion-icon name="heart-outline"></ion-icon></a>
                    </li>
                    <li class="header-item">
                        <a href="#" ><ion-icon name="cart-outline"></ion-icon><span class="cart-count">0</span></a>
                    </li>
                    <li class="header-item"><a href="<%=request.getContextPath()%>/signin">Đăng nhập</a></li>
                    <li class="header-item"><a href="<%=request.getContextPath()%>/signup">Đăng ký</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>