<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 03/01/2022
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="../css/fontawesome.css" />
    <link rel="stylesheet" href="../css/brands.css" />
    <link rel="stylesheet" href="../css/solid.css" />

    <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="../css/footer.css" />
    <link rel="stylesheet" href="../css/wishlist.css" />
    <title>Danh sách yêu thích</title>
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
                    <li class="navigation-item"><a href="index.html">Trang chủ</a></li>
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
                    <li class="header-item header-search">
                        <form role="search" action="" method="get">
                            <input
                                    type="search"
                                    name="search"
                                    class="search-input"
                                    placeholder="Tìm sản phẩm"
                                    autocomplete="off"
                            />
                            <button type="submit" class="header-search-btn">
                                <ion-icon name="search-outline"></ion-icon>
                            </button>
                        </form>
                    </li>
                    <li class="header-item box-user">
                        <a class="header-user" href="?user=id4">
                            <img
                                    src="../images/user/user-4.jpg"
                                    alt="User avatar"
                                    class="user-avt"
                            />
                            <span class="user-name">Nguyen Van A</span>
                        </a>

                        <div class="user-dropdown">
                            <div class="user-dropdown-list">
                                <a href="profile.jsp" class="user-dropdown__item">
                                    Tài khoản của tôi
                                </a>
                                <!-- <a href="?don-mua" class="user-dropdown__item"
                                    >Đơn mua</a
                                > -->
                                <a href="index.jsp" class="user-dropdown__item">
                                    Đăng xuất
                                </a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>

<main class="content">
    <div class="container">
        <div class="content-title">Danh sách yêu thích</div>
        <div class="box-control box-header">
            <div class="box-control__item">
                <input
                        class="c-checkbox"
                        type="checkbox"
                        id="check-all"
                        name="check-all"
                        value="check-all"
                />
                <label class="c-label" for="check-all"></label>
            </div>

            <div class="box-control__item box-name">Đã chọn 0 sản phẩm</div>
            <div class="box-control__item box-cart">
                <a href="?remove-product-id=#" class="box-icon-cart">
                    Thêm vào giỏ hàng
                    <i class="fas fa-cart-plus"></i>
                </a>
            </div>
            <div class="box-control__item box-remove">
                <a href="?remove-product-id=#" class="box-icon-remove">
                    Xóa đã chọn
                    <ion-icon name="trash-outline"></ion-icon>
                </a>
            </div>
        </div>

        <div class="box-list-product">
            <div class="box-control box-product">
                <div class="box-control__item">
                    <input
                            class="c-checkbox"
                            type="checkbox"
                            id="select-1"
                            name="check-1"
                            value="product-id-1"
                    />
                    <label class="c-label" for="select-1"></label>
                </div>
                <div class="box-control__item box-name">
                    <img
                            src="../images/ngan_ghep_ke_sach/ke_sach.png"
                            alt="box product card 1"
                            class="box__product-img"
                    />
                    <div class="box__product-info">
                                <span class="box__product-name">
                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách Ngăn Trang Trí - Ngăn
                                    Ghép Kệ Sách
                                </span>
                        <div class="box-control__item box-remove">
                            <a href="?remove-product-id=#" class="box-icon-remove">
                                <ion-icon name="trash-outline"></ion-icon>
                                <span class="remove-text">Xóa</span>
                            </a>
                        </div>
                    </div>
                </div>
                <button class="btn-primary btn-move-to-cart">
                    <span class="text-move-to-cart">Thêm vào giỏ hàng</span>
                    <i class="fas fa-cart-plus"></i>
                </button>
            </div>

            <div class="box-control box-product">
                <div class="box-control__item">
                    <input
                            class="c-checkbox"
                            type="checkbox"
                            id="select-2"
                            name="check-2"
                            value="product-id-2"
                    />
                    <label class="c-label" for="select-2"></label>
                </div>
                <div class="box-control__item box-name">
                    <img
                            src="../images/ngan_ghep_ke_sach/ke_sach.png"
                            alt="box product card 2"
                            class="box__product-img"
                    />
                    <div class="box__product-info">
                                <span class="box__product-name">
                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách Ngăn Trang Trí - Ngăn
                                    Ghép Kệ Sách
                                </span>
                        <div class="box-control__item box-remove">
                            <a href="?remove-product-id=#" class="box-icon-remove">
                                <ion-icon name="trash-outline"></ion-icon>
                                <span class="remove-text">Xóa</span>
                            </a>
                        </div>
                    </div>
                </div>
                <button class="btn-primary btn-move-to-cart">
                    <span class="text-move-to-cart">Thêm vào giỏ hàng</span>
                    <i class="fas fa-cart-plus"></i>
                </button>
            </div>

            <div class="box-control box-product">
                <div class="box-control__item">
                    <input
                            class="c-checkbox"
                            type="checkbox"
                            id="select-3"
                            name="check-3"
                            value="product-id-3"
                    />
                    <label class="c-label" for="select-3"></label>
                </div>
                <div class="box-control__item box-name">
                    <img
                            src="../images/ngan_ghep_ke_sach/ke_sach.png"
                            alt="box product card 3"
                            class="box__product-img"
                    />
                    <div class="box__product-info">
                                <span class="box__product-name">
                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách Ngăn Trang Trí - Ngăn
                                    Ghép Kệ Sách
                                </span>
                        <div class="box-control__item box-remove">
                            <a href="?remove-product-id=#" class="box-icon-remove">
                                <ion-icon name="trash-outline"></ion-icon>
                                <span class="remove-text">Xóa</span>
                            </a>
                        </div>
                    </div>
                </div>
                <button class="btn-primary btn-move-to-cart">
                    <span class="text-move-to-cart">Thêm vào giỏ hàng</span>
                    <i class="fas fa-cart-plus"></i>
                </button>
            </div>
        </div>
    </div>
</main>

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
                            Amada là thương hiệu đến từ Việt Nam với hơn 35 năm kinh
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
                    <div class="form-group">
                        <input
                                type="text"
                                name="fullname"
                                class="form-input"
                                placeholder=" "
                        />
                        <label class="form-label">Tên của bạn</label>
                    </div>
                    <div class="form-group">
                        <input
                                type="text"
                                name="phone-number"
                                class="form-input"
                                placeholder=" "
                        />
                        <label class="form-label">Số điện thoại của bạn</label>
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

<script src="../js/products.js"></script>
<script
        type="module"
        src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
></script>
<script
        nomodule
        src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
></script>
</body>
</html>

