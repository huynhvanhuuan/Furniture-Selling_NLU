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
                    <li class="navigation-item"><a href="<%=request.getContextPath()%>/">Trang chủ</a></li>
                    <li class="navigation-item"><a href="<%=request.getContextPath()%>/product">Sản phẩm</a></li>
                    <li class="navigation-item"><a href="<%=request.getContextPath()%>/contact">Liên hệ</a></li>
                    <li class="navigation-item"><a href="<%=request.getContextPath()%>/about-us">Về chúng tôi</a></li>
                    <li class="navigation-item"><a href="<%=request.getContextPath()%>/faqs">FAQS</a></li>
                </ul>
            </nav>
            <div class="header-btn">
                <ul class="header-list">
                    <li class="header-item header-search">
                        <form role="search" action="" method="get">
                            <input type="search" name="search" class="search-input" placeholder="Tìm sản phẩm" autocomplete="off"/>
                            <button type="submit" class="header-search-btn"><ion-icon name="search-outline"></ion-icon></button>
                        </form>
                    </li>
                    <li class="header-item">
                        <a href="#"><ion-icon name="heart-outline"></ion-icon></a>
                    </li>
                    <li class="header-item">
                        <a href="#" ><ion-icon name="cart-outline"></ion-icon></a>
                    </li>
                    <li class="header-item"><a role="button" class="sign-in">Đăng nhập</a></li>
                    <li class="header-item"><a role="button" class="sign-up">Đăng ký</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
