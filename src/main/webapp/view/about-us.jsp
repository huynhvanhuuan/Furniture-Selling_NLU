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
    <title>Về chúng tôi</title>
    <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
            integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/root.css" />
    <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/grid.css" />
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="../css/about-us.css" />
    <link rel="stylesheet" href="../css/footer.css" />
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
                    <li class="navigation-item active">
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
<section class="about-us">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="d-flex justify-content-center" id="image-1">
                    <img
                            class="w-100 h-100"
                            src="../images/about-us/about1.png"
                            alt="Image 1"
                    />
                </div>
            </div>
            <div class="col">
                <div class="content">
                    <span>VỀ CHÚNG TÔI</span>
                    <br />
                    <div class="title d-block m-0">
                        <span class="fw-bolder">Chỉ Cần Ở Nhà Và Tận Hưởng Thời Gian Mua Sắm Của Bạn</span>
                    </div>
                    <p class="fw-normal">
                        Amanda là một công ty toàn cầu về nội thất, nơi bạn có thể tìm thấy những vật dụng phù hợp với mọi xu thế, thời đại mà bạn mong muốn. Nhiệm vụ và mục tiêu cao nhất của chúng tôi là đưa các bạn đến với những khoảng không gian tự do, rộng rãi, thoát khỏi những áp lực từ cuộc sống thông qua những vật dụng quen thuộc - Đồ nội thất
                    </p>
                    <p class="fw-normal">
                        Chúng tôi luôn nắm bắt và dẫn đầu xu thế cũng như tạo ra xu thế toàn cầu về nội thất. Chúng tôi luôn sẵn sàng để giúp các bạn trở thành những khách hàng - những người dẫn đầu về sự thời thượng của cuộc sống nội thất.
                    </p>
                </div>
            </div>
        </div>
        <div class="row d-flex justify-content-center" style="padding-bottom: 20px;">
            <div class="col">
                <div class="d-flex title">
                    <span class="fw-bolder">Hãy khiến mọi thứ trở nên dễ dàng hơn nữa với Amanda</span>
                </div>
                <p class="m-auto fw-normal">
                    Chúng tôi tin rằng chúng tôi có thể chăm sóc mái ấm của bạn, góp phần chăm sóc bản thân bạn. Đó là lý do tại sao chúng tôi làm cho giường, tủ, bàn, ghế và tất cả
                    những thứ chất lượng cao trở nên mềm mại và tuyệt vời.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="d-flex justify-content-end" id="image-2">
                    <img src="../images/about-us/about2.png" alt="Image 2" />
                </div>
            </div>
            <div class="col">
                <div class="d-flex justify-content-start" id="image-3">
                    <img src="../images/about-us/about3.png" alt="Image 3" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="d-flex justify-content-between">
                    <img src="../images/about-us/about4.png" alt="Image 4" />
                    <img src="../images/about-us/about6.png" alt="Image 6" />
                    <img src="../images/about-us/about5.png" alt="Image 5" />
                    <img src="../images/about-us/about8.png" alt="Image 8" />
                    <img src="../images/about-us/about7.png" alt="Image 7" />
                    <img src="../images/about-us/about9.png" alt="Image 9" />
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="footer">
    <div class="container">
        <div class="box">
            <section class="col-1-3">
                <div class="info">
                    <div class="info-item">
                        <div class="logo">
                            <img
                                    class="logo-img"
                                    src="../images/logo.jpg"
                                    alt="footer-logo"
                            />
                        </div>
                    </div>
                    <div class="info-item">
                        <p class="text-info">
                            Amanda là thương hiệu đến từ Việt Nam với hơn 35 năm kinh
                            nghiệm trong việc sản xuất và xuất khẩu nội thất đạt chuẩn
                            quốc tế.
                        </p>
                    </div>
                    <div class="info-item">
                        <p class="text-info">
                            Địa chỉ: Khu phố 6, phường Linh Trung, Tp. Thủ Đức
                        </p>
                    </div>
                    <div class="info-item">
                        <p class="text-info">Điện thoại: 0123456789, 0987654321</p>
                    </div>
                    <div class="info-item">
                        <p class="text-info">Email: info@gmail.com</p>
                    </div>

                    <div class="info-item">
                        <a href="#">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-google"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </div>

                    <div class="info-item">
                        <p class="text-info">Copyright &copy; All rights reserved.</p>
                    </div>
                </div>
            </section>
            <section class="col-1-3">
                <div class="info service">
                    <div class="info-item">
                        <h2 class="footer-title">Về chúng tôi</h2>
                    </div>
                    <div class="flex-col">
                        <div class="col-item">
                            <div class="info-item">
                                <a class="text-info" href="index.jsp">Trang chủ</a>
                            </div>
                            <div class="info-item">
                                <a class="text-info" href="products.jsp">Sản phẩm</a>
                            </div>
                            <div class="info-item">
                                <a class="text-info" href="contact-us.jsp">Liên hệ</a>
                            </div>
                        </div>
                        <div class="col-item">
                            <div class="info-item">
                                <a class="text-info" href="faqs.jsp">FAQS</a>
                            </div>
                            <div class="info-item">
                                <a class="text-info" href="about-us.jsp">
                                    Về chúng tôi
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="col-1-3">
                <div class="info">
                    <div class="info-item">
                        <h2 class="footer-title">Tham gia ngay</h2>
                    </div>
                    <div class="info-item">
                        <p class="text-info">
                            Đăng ký ngay để nhận được nhiều thông tin, sự kiện và khuyến
                            mãi từ chúng tôi!
                        </p>
                    </div>
                    <div class="info-item footer-signup">
                        <form action="#" method="post">
                            <input
                                    class="input pos-abs"
                                    type="email"
                                    name="email"
                                    id="email"
                                    placeholder="Hãy nhập vào email"
                            />
                            <a href="#" class="btn-signup pos-abs">
                                <i class="fas fa-location-arrow"></i>
                            </a>
                        </form>
                    </div>
                </div>
            </section>
        </div>
    </div>
</footer>

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
                    Bạn mới biết đến Amanda?
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
                    Bằng việc đăng kí, bạn đã đồng ý với Amanda về
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
