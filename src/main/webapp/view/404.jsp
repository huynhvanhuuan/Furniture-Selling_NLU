<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Huỳnh Văn Hữu Ân
  Date: 11/29/2021
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>404 - Trang không tồn tại</title>
    <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
            integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="../css/404.css" />
    <link rel="stylesheet" href="../css/signup-signin.css" />
</head>
<body>
<header class="header">
    <div class="container">
        <div class="box">
            <div class="logo">
                <img src="../images/logo.jpg" alt="Logo" class="logo-img" />
            </div>
            <nav class="navigation">
                <ul class="navigation-list">
                    <li class="navigation-item"><a href="index.jsp">Trang chủ</a></li>
                    <li class="navigation-item">
                        <a href="products.jsp">Sản phẩm</a>
                    </li>
                    <li class="navigation-item">
                        <a href="contact-us.jsp">Liên hệ</a>
                    </li>
                    <li class="navigation-item">
                        <a href="about-us.jsp">Về chúng tôi</a>
                    </li>
                    <li class="navigation-item">
                        <a href="faqs.jsp">FAQS</a>
                    </li>
                </ul>
            </nav>
            <div class="header-btn">
                <ul class="header-list">
                    <li class="header-item sign-in"><a>Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<section class="error">
    <div class="error-content">
        <h3>Oops! Đã có lỗi xảy ra.</h3>
        <span>Trang mà bạn đang truy cập có thể đã bị xóa hoặc không còn truy cập được nữa.</span>
        <div class="flex-center">
            <a href="index.jsp" class="btn-primary">Trở về trang chủ</a>
        </div>
    </div>
</section>

<div class="box-signup-signin">
    <div class="signup-signin">
        <span class="popup-close">&times;</span>
        <div class="signin">
            <div class="left"></div>
            <div class="right">
                <div class="popup-header">
                    <img
                            src="../images/logo.jpg"
                            alt="popup logo"
                            class="popup-header__img"
                    />
                    <span class="popup-header__title">Đăng Nhập</span>
                </div>
                <form action="" method="post" class="popup-form">
                    <div class="form-group">
                        <input
                                type="text"
                                name="email"
                                class="form-input"
                                placeholder=" "
                        />
                        <label class="form-label">Email hoặc số điện thoại</label>
                    </div>
                    <div class="form-group">
                        <input
                                type="password"
                                name="password"
                                class="form-input signin-password"
                                placeholder=" "
                        />
                        <label class="form-label">Nhập mật khẩu của bạn</label>
                        <i class="hide-password fas fa-eye-slash"></i>
                    </div>
                    <div class="form-group">
                        <input
                                type="submit"
                                class="form-btn signin-submit"
                                value="Đăng Nhập"
                        />
                    </div>
                </form>

                <div class="forgot-password">
                    <a href="?forgot=true" class="text-link">Quên mật khẩu ?</a>
                </div>

                <p class="text-way">Hoặc</p>
                <div class="other-way-signin">
                    <a href="?fb" class="btn-signin signin-fb">
                        <img
                                src="../images/fb.png"
                                alt="facebook sign in"
                                class="signin-img"
                        />
                        <span class="signin-title">Facebook</span>
                    </a>
                    <a href="?gg" class="btn-signin signin-gg">
                        <img
                                src="../images/gg.png"
                                alt="facebook sign in"
                                class="signin-img img-gg"
                        />
                        <span class="signin-title">Google</span>
                    </a>
                </div>
                <div class="show-signup">
                    Bạn mới biết đến Amada?
                    <span class="swipe-to-signup">Đăng ký ngay &rarr;</span>
                </div>
            </div>
        </div>
        <div class="signup">
            <div class="left">
                <div class="popup-header">
                    <img
                            src="../images/logo.jpg"
                            alt="popup logo"
                            class="popup-header__img"
                    />
                    <span class="popup-header__title">Đăng Ký Ngay</span>
                </div>
                <form action="" method="post" class="popup-form">
                    <div class="form-group box-flex">
                        <div class="box-left">
                            <input
                                    type="text"
                                    name="lastname"
                                    class="form-input"
                                    placeholder=" "
                            />
                            <label class="form-label">Họ của bạn</label>
                        </div>
                        <div class="box-right">
                            <input
                                    type="text"
                                    name="firstname"
                                    class="form-input"
                                    placeholder=" "
                            />
                            <label class="form-label">Tên của bạn</label>
                        </div>
                    </div>
                    <div class="form-group box-flex">
                        <div class="box-left">
                            <input
                                    type="text"
                                    name="phone-number"
                                    class="form-input"
                                    placeholder=" "
                            />
                            <label class="form-label">Số điện thoại của bạn</label>
                        </div>
                        <div class="box-right">
                            <span>Tôi là: </span>
                            <input type="radio" name="gender" value="male" id="male" />
                            <label for="male">Nam</label>
                            <input
                                    type="radio"
                                    name="gender"
                                    value="female"
                                    id="female"
                            />
                            <label for="female">Nữ</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <input
                                type="text"
                                name="email"
                                class="form-input"
                                placeholder=" "
                        />
                        <label class="form-label">Email của bạn</label>
                    </div>
                    <div class="form-group">
                        <input
                                type="password"
                                name="password"
                                class="form-input signup-password"
                                placeholder=" "
                        />
                        <label class="form-label">Nhập mật khẩu của bạn</label>
                        <i class="hide-password fas fa-eye-slash"></i>
                    </div>
                    <div class="form-group">
                        <input
                                type="password"
                                name="password"
                                class="form-input comfirm-password"
                                placeholder=" "
                        />
                        <label class="form-label">Nhập lại mật khẩu của bạn</label>
                        <i class="hide-password fas fa-eye-slash"></i>
                    </div>
                    <div class="form-group">
                        <input
                                type="submit"
                                class="form-btn signin-submit"
                                value="Đăng Ký"
                        />
                    </div>
                </form>
                <p class="text-way">Hoặc</p>
                <div class="other-way-signin">
                    <a href="?fb" class="btn-signin signin-fb">
                        <img
                                src="../images/fb.png"
                                alt="facebook sign in"
                                class="signin-img"
                        />
                        <span class="signin-title">Facebook</span>
                    </a>
                    <a href="?gg" class="btn-signin signin-gg">
                        <img
                                src="../images/gg.png"
                                alt="facebook sign in"
                                class="signin-img img-gg"
                        />
                        <span class="signin-title">Google</span>
                    </a>
                </div>
                <div class="policy">
                    Bằng việc đăng kí, bạn đã đồng ý với Amada về
                    <a href="?dieukhoan" class="policy-link">Điều khoản dịch vụ</a>
                    &
                    <a href="?chinhsach" class="policy-link">Chính sách bảo mật</a>
                </div>

                <div class="show-signup">
                    Bạn đã có tài khoản?
                    <span class="swipe-to-signin">Đăng nhập ngay</span>
                </div>
            </div>
            <div class="right"></div>
        </div>
    </div>
</div>
<script src="../js/signup-signin.js"></script>
</body>
</html>
