<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 03/01/2022
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <c:import url="import/head.jsp"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cart.css" />
    <title>Giỏ hàng</title>
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
                    <li class="navigation-item active">
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
        <div class="content-title">Giỏ hàng</div>
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

            <div class="box-control__item box-name">Sản phẩm</div>
            <div class="box-control__item box-price">Đơn giá</div>
            <div class="box-control__item box-quantity">Số lượng</div>
            <div class="box-control__item box-final-price">Thành tiền</div>
            <div class="box-control__item box-remove">
                <a href="?remove-product-id=#" class="box-icon-remove">
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
                    </div>
                </div>
                <div class="box-control__item box-price text-primary text-bold">
                    129.000
                </div>
                <div class="box-control__item box-quantity">
                    <button class="box-btn__add">
                        <ion-icon name="add-outline"></ion-icon>
                    </button>
                    <input
                            type="text"
                            class="box-product-quantity"
                            value="2"
                            name="product-quantity"
                    />
                    <button class="box-btn__minus">
                        <ion-icon name="remove-outline"></ion-icon>
                    </button>
                </div>
                <div class="box-control__item box-final-price text-primary text-bold">
                    258.000
                </div>
                <div class="box-control__item box-remove">
                    <a
                            href="?remove-product-id=#"
                            class="box-icon-remove box-icon-remove-1"
                    >
                        <ion-icon name="trash-outline"></ion-icon>
                    </a>
                </div>
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
                            alt="box product card 1"
                            class="box__product-img"
                    />
                    <div class="box__product-info">
                                <span class="box__product-name">
                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách Ngăn Trang Trí - Ngăn
                                    Ghép Kệ Sách
                                </span>
                    </div>
                </div>
                <div class="box-control__item box-price text-primary text-bold">
                    129.000
                </div>
                <div class="box-control__item box-quantity">
                    <button class="box-btn__add">
                        <ion-icon name="add-outline"></ion-icon>
                    </button>
                    <input
                            type="text"
                            class="box-product-quantity"
                            value="2"
                            name="product-quantity"
                    />
                    <button class="box-btn__minus">
                        <ion-icon name="remove-outline"></ion-icon>
                    </button>
                </div>
                <div class="box-control__item box-final-price text-primary text-bold">
                    258.000
                </div>
                <div class="box-control__item box-remove">
                    <a
                            href="?remove-product-id=#"
                            class="box-icon-remove box-icon-remove-1"
                    >
                        <ion-icon name="trash-outline"></ion-icon>
                    </a>
                </div>
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
                            alt="box product card 1"
                            class="box__product-img"
                    />
                    <div class="box__product-info">
                                <span class="box__product-name">
                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách Ngăn Trang Trí - Ngăn
                                    Ghép Kệ Sách
                                </span>
                    </div>
                </div>
                <div class="box-control__item box-price text-primary text-bold">
                    129.000
                </div>
                <div class="box-control__item box-quantity">
                    <button class="box-btn__add">
                        <ion-icon name="add-outline"></ion-icon>
                    </button>
                    <input
                            type="text"
                            class="box-product-quantity"
                            value="2"
                            name="product-quantity"
                    />
                    <button class="box-btn__minus">
                        <ion-icon name="remove-outline"></ion-icon>
                    </button>
                </div>
                <div class="box-control__item box-final-price text-primary text-bold">
                    258.000
                </div>
                <div class="box-control__item box-remove">
                    <a
                            href="?remove-product-id=#"
                            class="box-icon-remove box-icon-remove-1"
                    >
                        <ion-icon name="trash-outline"></ion-icon>
                    </a>
                </div>
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
                            alt="box product card 1"
                            class="box__product-img"
                    />
                    <div class="box__product-info">
                                <span class="box__product-name">
                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách Ngăn Trang Trí - Ngăn
                                    Ghép Kệ Sách
                                </span>
                    </div>
                </div>
                <div class="box-control__item box-price text-primary text-bold">
                    129.000
                </div>
                <div class="box-control__item box-quantity">
                    <button class="box-btn__add">
                        <ion-icon name="add-outline"></ion-icon>
                    </button>
                    <input
                            type="text"
                            class="box-product-quantity"
                            value="2"
                            name="product-quantity"
                    />
                    <button class="box-btn__minus">
                        <ion-icon name="remove-outline"></ion-icon>
                    </button>
                </div>
                <div class="box-control__item box-final-price text-primary text-bold">
                    258.000
                </div>
                <div class="box-control__item box-remove">
                    <a
                            href="?remove-product-id=#"
                            class="box-icon-remove box-icon-remove-1"
                    >
                        <ion-icon name="trash-outline"></ion-icon>
                    </a>
                </div>
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
                            alt="box product card 1"
                            class="box__product-img"
                    />
                    <div class="box__product-info">
                                <span class="box__product-name">
                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách Ngăn Trang Trí - Ngăn
                                    Ghép Kệ Sách
                                </span>
                    </div>
                </div>
                <div class="box-control__item box-price text-primary text-bold">
                    129.000
                </div>
                <div class="box-control__item box-quantity">
                    <button class="box-btn__add">
                        <ion-icon name="add-outline"></ion-icon>
                    </button>
                    <input
                            type="text"
                            class="box-product-quantity"
                            value="2"
                            name="product-quantity"
                    />
                    <button class="box-btn__minus">
                        <ion-icon name="remove-outline"></ion-icon>
                    </button>
                </div>
                <div class="box-control__item box-final-price text-primary text-bold">
                    258.000
                </div>
                <div class="box-control__item box-remove">
                    <a
                            href="?remove-product-id=#"
                            class="box-icon-remove box-icon-remove-1"
                    >
                        <ion-icon name="trash-outline"></ion-icon>
                    </a>
                </div>
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
                            alt="box product card 1"
                            class="box__product-img"
                    />
                    <div class="box__product-info">
                                <span class="box__product-name">
                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách Ngăn Trang Trí - Ngăn
                                    Ghép Kệ Sách
                                </span>
                    </div>
                </div>
                <div class="box-control__item box-price text-primary text-bold">
                    129.000
                </div>
                <div class="box-control__item box-quantity">
                    <button class="box-btn__add">
                        <ion-icon name="add-outline"></ion-icon>
                    </button>
                    <input
                            type="text"
                            class="box-product-quantity"
                            value="2"
                            name="product-quantity"
                    />
                    <button class="box-btn__minus">
                        <ion-icon name="remove-outline"></ion-icon>
                    </button>
                </div>
                <div class="box-control__item box-final-price text-primary text-bold">
                    258.000
                </div>
                <div class="box-control__item box-remove">
                    <a
                            href="?remove-product-id=#"
                            class="box-icon-remove box-icon-remove-1"
                    >
                        <ion-icon name="trash-outline"></ion-icon>
                    </a>
                </div>
            </div>
        </div>

        <div class="box-payment">
            <div class="box-control box-payment__top">
                <div class="box-control__item">
                    <input
                            class="c-checkbox"
                            type="checkbox"
                            id="check-all-bottom"
                            name="check-all"
                            value="check-all"
                    />
                    <label class="c-label" for="check-all-bottom"></label>
                </div>
                <div class="box-control__item box-check-all">
                    Chọn tất cả (3 sản phẩm)
                </div>
                <div class="box-control__item box-remove">
                    <a href="?remove-product-id=#" class="box-icon-remove">Xóa</a>
                </div>
                <div class="box-control__item box-wistlist">
                    <a href="?add-to-wistlist-id=1" class="box-a-wistlist">
                        Lưu vào yêu thích
                    </a>
                </div>
            </div>

            <div class="box-control box-payment__bottom">
                <div class="total-payment-product">Tổng thanh toán (5 sản phẩm)</div>
                <div class="total-payment-price text-primary text-bold">1.250.000</div>
                <a href="checkout.jsp" class="btn-primary btn-payment">Mua ngay</a>
            </div>
        </div>
    </div>
</main>

<c:import url="import/footer.jsp"/>

<script src="../js/cart.js"></script>
<c:import url="import/script.jsp"/>
</body>
</html>
