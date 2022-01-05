<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 03/01/2022
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/x-icon" href="../images/favicon.ico" />
    <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
            integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="../css/footer.css" />
    <link rel="stylesheet" href="../css/products.css" />
    <link rel="stylesheet" href="../css/card.css" />
    <link rel="stylesheet" href="../css/signup-signin.css" />
    <title>Tất cả sản phẩm</title>
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
                    <li class="header-item header__drop">
                        <a href="wishlist.jsp">
                            <ion-icon name="heart-outline"></ion-icon>
                        </a>
                        <!-- if card have product in wishlist -> add class header__drop__empty -->
                        <div class="header__drop-list">
                            <div class="header__mt">
                                <img
                                        src="../images/emptywishlist.jpg"
                                        alt="Giỏ hàng trống"
                                        class="header__mt-img"
                                />
                                <h4 class="header__mt-msg">
                                    Chưa có sản phẩm yêu thích
                                </h4>
                            </div>
                            <div class="header__drop-no-mt">
                                <p class="heading__drop__no-mt-msg">
                                    Sản phẩm yêu thích
                                </p>
                                <div class="header__product-list">
                                    <div class="header__product-item">
                                        <a
                                                class="header__product-link"
                                                href="product-detail.jsp"
                                        >
                                        </a>
                                        <img
                                                src="../images/ngan_ghep_ke_sach/ke_sach.png"
                                                alt="Header product card 1"
                                                class="header__product-item-img"
                                        />
                                        <span class="header__product-item-name">
                                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách
                                                </span>
                                        <span class="header__product-item-price">
                                                    129.000
                                                </span>
                                    </div>
                                    <div class="header__product-item">
                                        <a
                                                class="header__product-link"
                                                href="product-detail.jsp"
                                        >
                                        </a>
                                        <img
                                                src="../images/ngan_ghep_ke_sach/ke_sach.png"
                                                alt="Header product card 1"
                                                class="header__product-item-img"
                                        />
                                        <span class="header__product-item-name">
                                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách
                                                </span>
                                        <span class="header__product-item-price">
                                                    129.000
                                                </span>
                                    </div>
                                    <div class="header__product-item">
                                        <a
                                                class="header__product-link"
                                                href="product-detail.jsp"
                                        >
                                        </a>
                                        <img
                                                src="../images/ngan_ghep_ke_sach/ke_sach.png"
                                                alt="Header product card 1"
                                                class="header__product-item-img"
                                        />
                                        <span class="header__product-item-name">
                                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách
                                                </span>
                                        <span class="header__product-item-price">
                                                    129.000
                                                </span>
                                    </div>
                                </div>
                                <div class="header__drop__bottom">
                                    <p class="heading__drop__bottom-msg">
                                        2 sản phẩm mới thêm vào yêu thích
                                    </p>
                                    <a href="wishlist.jsp" class="header__drop__btn">
                                        Xem Wishlist
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="header-item header__drop">
                        <a href="cart.jsp">
                            <ion-icon name="cart-outline"></ion-icon>
                        </a>
                        <!-- if card have product -> add class header__drop__empty -->
                        <div class="header__drop-list">
                            <div class="header__mt">
                                <img
                                        src="../images/cart-empty.png"
                                        alt="Giỏ hàng trống"
                                        class="header__mt-img"
                                />
                                <h4 class="header__mt-msg">Chưa có sản phẩm</h4>
                            </div>

                            <div class="header__drop-no-mt">
                                <p class="heading__drop__no-mt-msg">
                                    Sản phẩm mới thêm
                                </p>

                                <div class="header__product-list">
                                    <div class="header__product-item">
                                        <img
                                                src="../images/ngan_ghep_ke_sach/ke_sach.png"
                                                alt="Header product card 1"
                                                class="header__product-item-img"
                                        />
                                        <span class="header__product-item-name">
                                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách
                                                </span>
                                        <span class="header__product-item-price">
                                                    129.000
                                                </span>
                                    </div>
                                    <div class="header__product-item">
                                        <img
                                                src="../images/ngan_ghep_ke_sach/ke_sach.png"
                                                alt="Header product card 1"
                                                class="header__product-item-img"
                                        />
                                        <span class="header__product-item-name">
                                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách
                                                </span>
                                        <span class="header__product-item-price">
                                                    129.000
                                                </span>
                                    </div>
                                    <div class="header__product-item">
                                        <img
                                                src="../images/ngan_ghep_ke_sach/ke_sach.png"
                                                alt="Header product card 1"
                                                class="header__product-item-img"
                                        />
                                        <span class="header__product-item-name">
                                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách
                                                </span>
                                        <span class="header__product-item-price">
                                                    129.000
                                                </span>
                                    </div>
                                    <div class="header__product-item">
                                        <img
                                                src="../images/ngan_ghep_ke_sach/ke_sach.png"
                                                alt="Header product card 1"
                                                class="header__product-item-img"
                                        />
                                        <span class="header__product-item-name">
                                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách
                                                </span>
                                        <span class="header__product-item-price">
                                                    129.000
                                                </span>
                                    </div>
                                    <div class="header__product-item">
                                        <img
                                                src="../images/ngan_ghep_ke_sach/ke_sach.png"
                                                alt="Header product card 1"
                                                class="header__product-item-img"
                                        />
                                        <span class="header__product-item-name">
                                                    Ngăn Trang Trí - Ngăn Ghép Kệ Sách
                                                </span>
                                        <span class="header__product-item-price">
                                                    129.000
                                                </span>
                                    </div>
                                </div>

                                <div class="header__drop__bottom">
                                    <p class="heading__drop__bottom-msg">
                                        5 sản phẩm mới thêm vào giỏ hàng
                                    </p>
                                    <a href="cart.jsp" class="header__drop__btn">
                                        Xem giỏ hàng
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="header-item sign-in"><a>Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>

<main class="content">
    <div class="banner">
        <div class="banner-title">
            <h2>Nội thất xanh</h2>
            <h3>Cho không gian trong lành</h3>
        </div>
        <img class="banner-img" src="../images/banner.png" alt="banner" />
    </div>
    <div class="container">
        <h1>Tất cả sản phẩm</h1>
        <section class="filter">
            <h2><i class="fas fa-filter"></i> Bộ lọc</h2>
            <div class="filter-group categories">
                <h3 class="filter-title">Danh mục</h3>
                <i class="fas fa-caret-down filter-icon"></i>
                <div class="filter-content">
                    <ul class="filter-list">
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-1"
                                    value="Bàn Sofa - Bàn Cafe - Bàn Trà"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-1">
                                Bàn Sofa - Bàn Cafe - Bàn Trà
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-2"
                                    value="Bàn Ăn"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-2">Bàn Ăn</label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-3"
                                    value="Bàn làm việc"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-3">
                                Bàn làm việc
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-4"
                                    value="Ghế Sofa"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-4">
                                Ghế Sofa
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-5"
                                    value="Bộ bàn ăn"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-5">
                                Bộ bàn ăn
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-6"
                                    value="Tủ đầu giường"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-6">
                                Tủ đầu giường
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-7"
                                    value="Tủ quần áo"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-7">
                                Tủ quần áo
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-8"
                                    value="Tủ & Kệ"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-8">
                                Tủ & Kệ
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-9"
                                    value="Ghế Ăn"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-9">
                                Ghế Ăn
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-10"
                                    value="Giường Ngủ"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-10">
                                Giường Ngủ
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-11"
                                    value="Tủ Kệ Tivi"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-11">
                                Tủ Kệ Tivi
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-type-12"
                                    value="Tủ Giày - Tủ Trang Trí"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-type-12">
                                Tủ Giày - Tủ Trang Trí
                            </label>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="filter-group products-price">
                <h3 class="filter-title">Giá sản phẩm</h3>
                <i class="fas fa-caret-down filter-icon"></i>
                <div class="filter-content">
                    <ul class="filter-list">
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-price-1"
                                    value="Dưới 500.000đ"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-price-1">
                                Dưới 500.000đ
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-price-2"
                                    value="500.000đ - 1.500.000đ"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-price-2">
                                500.000đ - 1.500.000đ
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-price-3"
                                    value="1.500.000đ - 3.000.000đ"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-price-3">
                                1.500.000đ - 3.000.000đ
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-price-4"
                                    value="3.000.000đ - 5.000.000đ"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-price-4">
                                3.000.000đ - 5.000.000đ
                            </label>
                        </li>
                        <li class="filter-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-price-5"
                                    value="Trên 5.000.000đ"
                                    name="type-filter"
                            />
                            <label class="filter-text" for="data-price-5">
                                Trên 5.000.000đ
                            </label>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="filter-group products-size">
                <h3 class="filter-title">Kích thước</h3>
                <i class="fas fa-caret-down filter-icon"></i>
                <div class="filter-content">
                    <ul class="filter-list filter-size">
                        <li class="filter-item filter-size-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-size-1"
                                    value="90cm"
                                    name="type-filter"
                            />
                            <label class="filter-text-size" for="data-size-1">
                                90cm
                            </label>
                        </li>
                        <li class="filter-item filter-size-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-size-2"
                                    value="1m2"
                                    name="type-filter"
                            />
                            <label class="filter-text-size" for="data-size-2">
                                1m2
                            </label>
                        </li>
                        <li class="filter-item filter-size-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-size-3"
                                    value="1m4"
                                    name="type-filter"
                            />
                            <label class="filter-text-size" for="data-size-3">
                                1m4
                            </label>
                        </li>
                        <li class="filter-item filter-size-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-size-4"
                                    value="1m6"
                                    name="type-filter"
                            />
                            <label class="filter-text-size" for="data-size-4">
                                1m6
                            </label>
                        </li>
                        <li class="filter-item filter-size-item">
                            <input
                                    class="filter-input"
                                    type="checkbox"
                                    id="data-size-5"
                                    value="1m8"
                                    name="type-filter"
                            />
                            <label class="filter-text-size" for="data-size-5">
                                1m8
                            </label>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="filter-group order-price">
                <h3 class="filter-select-tilte">Giá: Mặc định</h3>
                <select name="sort" class="filter-select">
                    <option value="default">Giá: Mặc định</option>
                    <option value="asc">Giá: Tăng dần</option>
                    <option value="desc">Giá: Giảm dần</option>
                </select>
            </div>
        </section>

        <section class="cards">
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">35% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/ngan_ghep_ke_sach/ke_sach.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp"
                        >Ngăn Trang Trí - Ngăn Ghép Kệ Sách</a
                        >
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">129.000</span>
                        <span class="card-original-price">199.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">20% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/giuong-ngu-go-vline601/giuong-ngu-go-vline-1.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.html">Giường Ngủ Gỗ MOHO VLINE 601</a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">4.632.000</span>
                        <span class="card-original-price">5.790.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">20% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/ban-tra-tron-cao-go/ban-sofa-ban-cafe-ban-tra-tron-cao-go.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp">
                            Bàn Sofa - Bàn Cafe - Bàn Trà Tròn Cao
                        </a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">639.000</span>
                        <span class="card-original-price">799.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <!-- <div class="card-discount">0% giảm</div> -->
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/tu-ke-tivi-go/tu_ke_tu_tivi_go_1.jpg"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp">Tủ Kệ Tivi Gỗ</a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">2.490.000</span>
                        <span class="card-original-price">2490.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">35% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/ngan_ghep_ke_sach/ke_sach.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp"
                        >Ngăn Trang Trí - Ngăn Ghép Kệ Sách</a
                        >
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">129.000</span>
                        <span class="card-original-price">199.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>

            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">20% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/ban-tra-tron-cao-go/ban-sofa-ban-cafe-ban-tra-tron-cao-go.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp">
                            Bàn Sofa - Bàn Cafe - Bàn Trà Tròn Cao
                        </a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">639.000</span>
                        <span class="card-original-price">799.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <!-- <div class="card-discount">0% giảm</div> -->
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/tu-ke-tivi-go/tu_ke_tu_tivi_go_1.jpg"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp">Tủ Kệ Tivi Gỗ</a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">2.490.000</span>
                        <span class="card-original-price">2490.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.html" class="card-link"></a>
                <div class="card-discount">20% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/giuong-ngu-go-vline601/giuong-ngu-go-vline-1.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.html">Giường Ngủ Gỗ MOHO VLINE 601</a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">4.632.000</span>
                        <span class="card-original-price">5.790.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <!-- <div class="card-discount">0% giảm</div> -->
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/tu-ke-tivi-go/tu_ke_tu_tivi_go_1.jpg"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.html">Tủ Kệ Tivi Gỗ</a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">2.490.000</span>
                        <span class="card-original-price">2490.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">35% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/ngan_ghep_ke_sach/ke_sach.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp"
                        >Ngăn Trang Trí - Ngăn Ghép Kệ Sách</a
                        >
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">129.000</span>
                        <span class="card-original-price">199.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">20% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/giuong-ngu-go-vline601/giuong-ngu-go-vline-1.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp">Giường Ngủ Gỗ MOHO VLINE 601</a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">4.632.000</span>
                        <span class="card-original-price">5.790.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">20% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/ban-tra-tron-cao-go/ban-sofa-ban-cafe-ban-tra-tron-cao-go.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp">
                            Bàn Sofa - Bàn Cafe - Bàn Trà Tròn Cao
                        </a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">639.000</span>
                        <span class="card-original-price">799.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>

            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">35% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/ngan_ghep_ke_sach/ke_sach.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp"
                        >Ngăn Trang Trí - Ngăn Ghép Kệ Sách</a
                        >
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">129.000</span>
                        <span class="card-original-price">199.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">20% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/giuong-ngu-go-vline601/giuong-ngu-go-vline-1.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.html">Giường Ngủ Gỗ MOHO VLINE 601</a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">4.632.000</span>
                        <span class="card-original-price">5.790.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <div class="card-discount">20% giảm</div>
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/ban-tra-tron-cao-go/ban-sofa-ban-cafe-ban-tra-tron-cao-go.png"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp">
                            Bàn Sofa - Bàn Cafe - Bàn Trà Tròn Cao
                        </a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">639.000</span>
                        <span class="card-original-price">799.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
            <div class="card">
                <a href="product-detail.jsp" class="card-link"></a>
                <!-- <div class="card-discount">0% giảm</div> -->
                <div class="card-img">
                    <img
                            class="card-img-item"
                            src="../images/tu-ke-tivi-go/tu_ke_tu_tivi_go_1.jpg"
                            alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <a href="product-detail.jsp">Tủ Kệ Tivi Gỗ</a>
                    </div>
                    <div class="card-price">
                        <span class="card-promotion-price">2.490.000</span>
                        <span class="card-original-price">2490.000</span>
                    </div>
                    <div class="card-detail">
                        <div class="card-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                        </div>
                        <div class="card-wistlist">
                            <ion-icon name="heart-outline"></ion-icon>
                        </div>
                    </div>
                    <a href="/product-detail.jsp" class="btn-add-card"
                    >Thêm vào giỏ hàng</a
                    >
                </div>
            </div>
        </section>

        <section class="pagination">
            <ul class="pagination-list">
                <!-- <li class="pagination-item">&larr;</li> -->
                <li class="pagination-item current">1</li>
                <li class="pagination-item">2</li>
                <li class="pagination-item">3</li>
                <li class="pagination-item">4</li>
                <li class="pagination-item has-more">
                    <i class="fas fa-ellipsis-h"></i>
                </li>
                <li class="pagination-item">12</li>
                <li class="pagination-item">&rarr;</li>
            </ul>
        </section>
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
                                    src="./images/logo.jpg"
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
<!-- popup sign in & sign up -->
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

