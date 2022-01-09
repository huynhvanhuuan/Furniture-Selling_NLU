<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Huỳnh Văn Hữu Ân
  Date: 11/29/2021
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chi tiết sản phẩm</title>
    <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
            integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/base.css" />
    <link
            rel="stylesheet"
            type="text/css"
            href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="../css/footer.css" />
    <link rel="stylesheet" href="../css/card.css" />
    <link rel="stylesheet" href="../css/product-detail.css" />
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
                        <div class="header__drop-list header__drop__empty">
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
                        <div class="header__drop-list header__drop__empty">
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
    <div class="container">
        <div class="product-content">
            <div class="product">
                <section class="product-img">
                    <div class="product-img-main">
                        <img
                                src="../images/bo-ban-an-4-ghe-go-milan-901/bo-ban-an-4-ghe-go-milan-901-1.jpg"
                                alt="image product"
                        />
                    </div>
                    <div class="product-img-list">
                        <img
                                class="product-img-item active mx-3"
                                src="../images/bo-ban-an-4-ghe-go-milan-901/bo-ban-an-4-ghe-go-milan-901-1.jpg"
                                alt="image product"
                        />
                        <img
                                class="product-img-item mx-3"
                                src="../images/bo-ban-an-4-ghe-go-milan-901/bo-ban-an-4-ghe-go-milan-901-2.jpg"
                                alt="image product"
                        />
                        <img
                                class="product-img-item mx-3"
                                src="../images/bo-ban-an-4-ghe-go-milan-901/bo-ban-an-4-ghe-go-milan-901-3.jpg"
                                alt="image product"
                        />
                        <img
                                class="product-img-item mx-3"
                                src="../images/bo-ban-an-4-ghe-go-milan-901/bo-ban-an-4-ghe-go-milan-901-4.jpg"
                                alt="image product"
                        />
                        <img
                                class="product-img-item mx-3"
                                src="../images/bo-ban-an-4-ghe-go-milan-901/bo-ban-an-4-ghe-go-milan-901-5.jpg"
                                alt="image product"
                        />
                    </div>
                </section>
                <section class="product-detail">
                    <h1 class="product-title">Sofa vải Poppy màu hồng</h1>
                    <!-- <p class="product-description">
                        Warm and welcoming, neat and stylish. The supporting seat
                        cushions, the cover's soft finish and the tight fit gives this
                        sofa a perfect balance between its comport, functions and look.
                    </p> -->
                    <p class="product-text">
                        <span class="p-title">Kích thước:</span>
                        <span class="product-size">
                                    Bàn ăn Dài 120cm x Rộng 75cm x Cao 74cm, Ghế ăn Dài 52cm x
                                    Rộng 49cm x Cao 74cm
                                </span>
                    </p>
                    <p class="product-text">
                        <span class="p-title">Vật liệu:</span>
                        <span class="product-material"
                        >Mặt bàn: Gỗ công nghiệp PB chuẩn CARB-P2 (*), Veneer gỗ sồi
                                    tự nhiên - Chân bàn: Gỗ cao su tự nhiên - Ghế ăn: Gỗ cao su
                                    tự nhiên/Gỗ tần bì tự nhiên, Vải bọc polyester chống nhăn,
                                    kháng bụi bẩn và nấm mốc
                                </span>
                    </p>
                    <form class="form" action="checkout.jsp" method="get">
                        <div class="product-color">
                            <span class="p-title">Màu sắc:</span>
                            <ul class="color">
                                <li class="color-item">
                                    <input
                                            class="input-radio"
                                            id="color-1"
                                            type="radio"
                                            name="color"
                                            checked
                                    />
                                    <label
                                            class="color-title"
                                            for="color-1"
                                            style="background-color: #d2af84"
                                    ></label>
                                </li>
                            </ul>
                        </div>
                        <div class="quantity">
                            <span class="p-title">Số lượng:</span>
                            <div class="btn-quantity">
                                <div class="btn-minus">
                                    <ion-icon name="remove-circle"></ion-icon>
                                </div>
                                <input type="text" class="quantity-count" value="1" />
                                <div class="btn-add">
                                    <ion-icon name="add-circle"></ion-icon>
                                </div>
                            </div>
                        </div>
                        <div class="product-rate">
                            <ion-icon name="star-outline"></ion-icon>
                            <ion-icon name="star"></ion-icon>
                            <span>4.2</span>
                            <span class="rate-count">(3 khách hàng đã review)</span>
                        </div>
                        <div class="product-price">
                            <span class="promotion-price">25.415.000</span>
                            <span class="original-price">29.900.000</span>
                            <span class="reduce-percent">15% GIẢM</span>
                        </div>
                        <div class="product-add-cart">
                            <button class="btn-purchase">Mua ngay</button>
                            <div class="btn-add-to-cart">
                                <i class="fab fa-opencart"></i>
                                <span>Thêm vào giỏ hàng</span>
                            </div>
                        </div>
                    </form>

                    <div class="wish-list">
                        <ion-icon name="heart-outline"></ion-icon>
                        <ion-icon name="heart"></ion-icon>
                        <span>Thêm vào danh sách yêu thích</span>
                    </div>
                </section>
            </div>

            <div class="description">
                <h2 class="product-info-text">MÔ TẢ SẢN PHẨM</h2>
                <p class="paragraph">
                    Kích thước: -Bàn ăn: Dài 120cm x Rộng 75cm x Cao 74cm - Ghế ăn
                    ODESSA: Dài 43cm x Rộng 51cm x Cao 92cm - Ghế ăn MILAN: Dài 52cm x
                    Rộng 49cm x Cao 74cm Chất liệu: - Mặt bàn: Gỗ công nghiệp PB chuẩn
                    CARB-P2 (*), Veneer gỗ sồi tự nhiên - Chân bàn: Gỗ cao su tự nhiên -
                    Ghế ăn: Gỗ cao su tự nhiên/Gỗ tần bì tự nhiên, Vải bọc polyester
                    chống nhăn, kháng bụi bẩn và nấm mốc (*) Tiêu chuẩn California Air
                    Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn cho
                    sức khỏe Chống thấm, cong vênh, trầy xước, mối mọt
                </p>
            </div>

            <div class="review">
                <h2 class="product-info-text">ĐÁNH GIÁ SẢN PHẨM</h2>
                <div class="user-review">
                    <div class="user-review--info">
                        <div class="user-review--info__left">
                            <img
                                    class="user-review--img"
                                    src="../images/user/user-1.jpg"
                                    alt="customer avatar"
                            />
                        </div>
                        <div class="user-review--info__right user-review--comment">
                            <div class="user-review--box">
                                <div class="user-review--name">Khoa Pug</div>
                                <div class="user-review--rate">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-half"></ion-icon>
                                </div>
                            </div>
                            <p class="comment">
                                Lorem ipsum dolor sit amet consectetur, adipisicing
                                elit. Pariatur, consequuntur? Dolorem quod ipsum cumque.
                                Animi illo qui rerum molestiae id enim quasi accusantium
                                sapiente facilis non dolores, facere, error neque!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="user-review">
                    <div class="user-review--info">
                        <div class="user-review--info__left">
                            <img
                                    class="user-review--img"
                                    src="../images/user/user-2.jpg"
                                    alt="customer avatar 2"
                            />
                        </div>
                        <div class="user-review--info__right user-review--comment">
                            <div class="user-review--box">
                                <div class="user-review--name">Mayuko</div>
                                <div class="user-review--rate">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-half"></ion-icon>
                                </div>
                            </div>
                            <p class="comment">
                                Lorem ipsum dolor sit amet consectetur, adipisicing
                                elit. Pariatur, consequuntur? Dolorem quod ipsum cumque.
                                Animi illo qui rerum molestiae id enim quasi accusantium
                                sapiente facilis non dolores, facere, error neque!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="user-review">
                    <div class="user-review--info">
                        <div class="user-review--info__left">
                            <img
                                    class="user-review--img"
                                    src="../images/user/user-3.jpg"
                                    alt="customer avatar 3"
                            />
                        </div>
                        <div class="user-review--info__right user-review--comment">
                            <div class="user-review--box">
                                <div class="user-review--name">Vuong Pham</div>
                                <div class="user-review--rate">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star-half"></ion-icon>
                                </div>
                            </div>
                            <p class="comment">
                                Lorem ipsum dolor sit amet consectetur, adipisicing
                                elit. Pariatur, consequuntur? Dolorem quod ipsum cumque.
                                Animi illo qui rerum molestiae id enim quasi accusantium
                                sapiente facilis non dolores, facere, error neque!
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="relate-product">
                <h2 class="product-info-text">SẢN PHẨM LIÊN QUAN</h2>
                <div class="cards">
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
                                <a href="product-detail.jsp"
                                >Giường Ngủ Gỗ MOHO VLINE 601</a
                                >
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
                </div>
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
<script src="../js/product-detail.js"></script>
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
