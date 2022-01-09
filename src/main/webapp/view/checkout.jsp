<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 03/01/2022
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/x-icon" href="../images/favicon.ico" />
    <script
            type="module"
            src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
            nomodule
            src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    <script
            src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="../css/fontawesome.css" />
    <link rel="stylesheet" href="../css/brands.css" />
    <link rel="stylesheet" href="../css/solid.css" />

    <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="../css/footer.css" />
    <link rel="stylesheet" href="../css/checkout.css" />
    <title>Thanh Toán</title>
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

<!-- popup add address -->
<div class="popup-add-address">
    <div class="box-add-address">
        <h3 class="popup-title">Địa chỉ mới</h3>
        <form action="/addresses/add" method="post">
            <div class="form-control">
                <select class="form-user-input" name="province_city"></select>
                <label>Tỉnh/ Thành Phố</label>
                <i class="fas fa-sort-down"></i>
            </div>
            <div class="form-control">
                <select class="form-user-input" name="district" disabled></select>
                <label>Quận/ Huyện</label>
                <i class="fas fa-sort-down"></i>
            </div>
            <div class="form-control">
                <select class="form-user-input" name="ward_commune" disabled></select>
                <label>Phường/ Xã</label>
                <i class="fas fa-sort-down"></i>
            </div>
            <div class="form-control">
                <input
                        type="text"
                        class="form-user-input"
                        placeholder="Đường. VD: Đường số 1 (tùy chọn)"
                        name="street"
                />
                <label>Đường</label>
            </div>
            <div class="form-control">
                <input
                        type="text"
                        class="form-user-input"
                        placeholder="Số nhà, lô, kios (tùy chọn)"
                        name="number-house_lot"
                />
                <label>Số nhà</label>
            </div>

            <div class="form-control form-action-btn">
                <span class="btn-primary close-add-address">Hủy</span>
                <button type="submit" class="btn-primary">Lưu</button>
            </div>
        </form>
    </div>
</div>

<main class="content">
    <div class="container">
        <div class="content-title">Thanh Toán</div>
    </div>
    <div class="content-checkout">
        <div class="container">
            <section class="section-control comfirm-address">
                <div class="address-title">
                    <i class="fas fa-map-marker-alt"></i> Địa Chỉ Nhận Hàng
                </div>
                <div class="address-user">
                    <div class="address-user-content">
                        <span class="text-bold user-name">Nguyen Van A</span>
                        <span class="text-bold user-phone">(0312345678)</span>
                        <span class="user-address">
                                    Khu phố 6, Linh Trung, Thủ Đức, Tp. Hồ Chí Minh
                                </span>
                    </div>
                    <span class="text-primary change-address">Thay đổi</span>
                </div>

                <div class="box-change-address">
                    <div class="address-action">
                        <button class="btn-primary add-new-address">
                            &plus; Thêm địa chỉ mới
                        </button>
                        <a
                                href="?goto-setting-address"
                                class="btn-primary setting-address"
                        >
                            Thiết lập địa chỉ
                        </a>
                    </div>
                    <div class="list-address">
                        <div class="address-item">
                            <input
                                    type="radio"
                                    class="user__check-address"
                                    id="check-address__1"
                                    name="check-address"
                                    checked
                            />
                            <label for="check-address__1">
                                <div class="address__user-info">
                                    <span class="address__user-name">Nguyen Van A</span>
                                    <span class="address__user-phone">
                                                (0312345678)
                                            </span>
                                </div>
                                <div class="address__user-address">
                                    Khu phố 6, Linh Trung, Thủ Đức, Tp. Hồ Chí Minh
                                </div>
                            </label>
                        </div>
                        <div class="address-item">
                            <input
                                    type="radio"
                                    class="user__check-address"
                                    id="check-address__2"
                                    name="check-address"
                            />
                            <label for="check-address__2">
                                <div class="address__user-info">
                                    <span class="address__user-name">Le Thi B</span>
                                    <span class="address__user-phone">
                                                (0323456232)
                                            </span>
                                </div>
                                <div class="address__user-address">
                                    Đường D1, Linh Tây, Thủ Đức, Tp. Hồ Chí Minh
                                </div>
                            </label>
                        </div>
                        <div class="address-item">
                            <input
                                    type="radio"
                                    class="user__check-address"
                                    id="check-address__3"
                                    name="check-address"
                            />
                            <label for="check-address__3">
                                <div class="address__user-info">
                                    <span class="address__user-name">Nguyen Van A</span>
                                    <span class="address__user-phone">
                                                (0323459678)
                                            </span>
                                </div>
                                <div class="address__user-address">
                                    1 Đường B KDC Him Lam Phú Đông Bình, Đường 3, An
                                    Bình, Dĩ An, Bình Dương 75307, Việt Nam
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="action__check-address">
                        <button class="btn-primary checked-option-address">
                            Hoàn thành
                        </button>
                        <button class="btn-primary back-to-previous-address">
                            Trở lại
                        </button>
                    </div>
                </div>
            </section>

            <section class="section-control">
                <div class="list-product-title">
                    <div class="box-name">Sản phẩm</div>
                    <div class="box-price">Đơn giá</div>
                    <div class="box-quantity">Số lượng</div>
                    <div class="box-final-price">Thành tiền</div>
                </div>

                <div class="list-product-checkout">
                    <div class="product-checkout">
                        <img
                                src="../images/ban-tra-tron-cao-go/ban-sofa-ban-cafe-ban-tra-tron-cao-go.png"
                                alt="image product 1"
                                class="product-checkout-img"
                        />
                        <div class="product-checkout-name">
                            <p>Bàn Sofa - Bàn Cafe - Bàn Trà Tròn Cao Gỗ</p>
                        </div>
                        <div class="product-checkout-type">Màu: Gỗ tự nhiên</div>
                        <div class="product-checkout-price">799.000 &#8363;</div>
                        <div class="product-checkout-quantity">2</div>
                        <div class="product-checkout-final-price">
                            1.598.000 &#8363;
                        </div>
                    </div>
                    <div class="product-checkout">
                        <img
                                src="../images/tu-ke-tivi-go/tu_ke_tu_tivi_go_1.jpg"
                                alt="image product 2"
                                class="product-checkout-img"
                        />
                        <div class="product-checkout-name">
                            <p>Tủ kệ Tivi gỗ</p>
                        </div>
                        <div class="product-checkout-type">Màu: Gỗ phối trắng</div>
                        <div class="product-checkout-price">2.490.000 &#8363;</div>
                        <div class="product-checkout-quantity">1</div>
                        <div class="product-checkout-final-price">
                            2.490.000 &#8363;
                        </div>
                    </div>
                    <div class="product-checkout">
                        <img
                                src="../images/giuong-ngu-go-vline601/giuong-ngu-go-vline-1.png"
                                alt="image product 3"
                                class="product-checkout-img"
                        />
                        <div class="product-checkout-name">
                            <p>Giường Ngủ Gỗ VLINE 601</p>
                        </div>
                        <div class="product-checkout-type">Màu: Gỗ tự nhiên</div>
                        <div class="product-checkout-price">6.790.000 &#8363;</div>
                        <div class="product-checkout-quantity">1</div>
                        <div class="product-checkout-final-price">
                            6.790.000 &#8363;
                        </div>
                    </div>
                </div>
            </section>

            <section class="section-control total-checkout">
                <div class="final-product-price">
                    <span>Tổng tiền hàng (4 sản phẩm):</span>
                    <span>10.878.000 &#8363;</span>
                </div>
                <div class="fee-shipping">
                    <span>Phí vận chuyển:</span>
                    <span>160.000 &#8363;</span>
                </div>
                <div class="discount-amount">
                    <span>Voucher giảm giá:</span>
                    <span>-500.000 &#8363;</span>
                </div>
                <div class="total-price">
                    <span>Tổng thanh toán:</span>
                    <span>10.538.000 &#8363;</span>
                </div>
            </section>

            <section class="section-control checkout">
                <div class="accept-policy">
                    Nhấn "Đặt hàng" đồng nghĩa với việc bạn đồng ý tuân theo
                    <a href="?policy=1" class="policy">Điều khoản của Amanda</a>
                </div>
                <form action="?checkout=1" method="post">
                    <button type="submit" class="btn-primary">Đặt hàng</button>
                </form>
            </section>
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
<script src="../js/checkout.js"></script>
</body>
</html>
