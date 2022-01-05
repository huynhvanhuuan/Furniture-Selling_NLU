<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trang chủ</title>
    <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/home.css" />
    <link rel="stylesheet" href="../css/header.css" />
    <link rel="stylesheet" href="../css/card.css" />
    <link rel="stylesheet" href="../css/footer.css" />
    <link rel="stylesheet" href="../css/signup-signin.css" />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            integrity="sha512-PgQMlq+nqFLV4ylk1gwUOgm6CtIIXkKwaIHp/PAIWHzig/lKZSEGKEysh0TCVbHJXCLN7WetD8TFecIky75ZfQ=="
            crossorigin="anonymous"
            referrerpolicy="anonymous"
    />
    <link
            rel="stylesheet"
            type="text/css"
            href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
</head>
<body>
<!-- Phần header của trang home -->
<header class="header">
    <div class="container">
        <div class="box">
            <div class="logo">
                <img src="../images/logo.jpg" alt="Logo" class="logo-img" />
            </div>
            <nav class="navigation">
                <ul class="navigation-list">
                    <li class="navigation-item active">
                        <a href="index.jsp">Trang chủ</a>
                    </li>
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
                    <li class="header-item sign-in"><a href="#">Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<!-- Phần thân của trang home -->
<main class="page">
    <!-- Hình nền -->
    <div class="landing">
        <div class="img">
            <img src="../images/main/a.jfif" alt="" />
            <p>Amanda</p>
        </div>
    </div>
    <div class="containerOfHome">
        <!-- Giới thiệu -->
        <div class="introduce">
            <div class="title">
                <div class="title-left">
                    <p class="p1 p3">GIẢI PHÁP NỘI THẤT TOÀN DIỆN</p>
                    <p class="p2">
                        Chúng tôi mang đến những giải pháp nội thất tối giản với độ ứng
                        dụng cao, phù hợp với nhiều phong cách khác nhau, tạo ra không
                        gian sống tiện nghi, thoải mái và giúp bạn thực sự thư giãn mỗi
                        khi trở về nhà.
                    </p>
                </div>
                <div class="title-right">
                    <p class="p1 p3">TRẢI NGHIỆM GIẢI PHÁP KHÔNG GIAN SỐNG MỚI</p>
                    <p class="p1">TIẾT KIỆM THỜI GIAN</p>
                    <p class="p1">TỐI ƯU HOÁ NGÂN SÁCH</p>
                    <p class="p1">ĐỊNH HÌNH THẨM MỸ CAO</p>
                </div>
            </div>
            <div class="grid-list">
                <div class="grid-item">
                    <img src="../images/main/img_banner_1.jpg" alt="" />
                </div>
                <div class="grid-item">
                    <img src="../images/main/img_banner_2.jpg" alt="" />
                </div>
                <div class="grid-item">
                    <img src="../images/main/img_banner_3.jpg" alt="" />
                </div>
                <div class="grid-item">
                    <img src="../images/main/img_banner_4.jpg" alt="" />
                </div>
            </div>
        </div>
        <!-- Danh mục -->
        <!-- <div class="accessories">
        <div class="liv">
            <div class="ac"><img src="../images/main/acc1.JPG" alt=""></div>
            <p>Living room</p>
        </div>
        <div class="bed">
            <div class="ac"><img src="../images/main/acc2.JPG" alt=""></div>
            <p>Bedroom</p>
        </div>
        <div class="kit">
            <div class="ac"><img src="../images/main/acc3.JPG" alt=""></div>
            <p>Kitchen</p>
        </div>
        <div class="bath">
            <div class="ac"><img src="../images/main/acc4.JPG" alt=""></div>
            <p>Bathroom</p>
        </div>
        <div class="work">
            <div class="ac"><img src="../images/main/acc5.JPG" alt=""></div>
            <p>Workspace</p>
        </div>
        <div class="acc">
            <div class="ac"><img src="../images/main/acc6.JPG" alt=""></div>
            <p>Accessories</p>
        </div>
    </div>            -->
        <!-- Sản phẩm mới -->
        <div class="new special">
            <div class="detail">
                <div class="title">Sản phẩm mới</div>
                <div class="view">Xem tất cả</div>
                <div class="arrow-right">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                </div>
            </div>
            <div class="slide">
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
        <!-- Phần mũi tên để lướt -->
        <div class="arrow-btn">
            <div class="arrow btn_arrow_left">
                <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
            </div>
            <div class="arrow btn_arrow_right">
                <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
            </div>
        </div>
        <!-- Sản phẩm giảm giá -->
        <div class="hot_sale special">
            <div class="detail">
                <div class="title">Sản phẩm đang giảm giá</div>
                <div class="view">Xem tất cả</div>
                <div class="arrow-right">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                </div>
            </div>
            <div class="slide">
                <!-- <div class="arrow btn_arrow_left">
                <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/Avangarda_klu.jpg" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/bg.jpg" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/blog.jpg" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/blol.jpg" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/p4.png" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="arrow btn_arrow_right">
                <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
            </div> -->
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
        <!-- Phần mũi tên để lướt -->
        <div class="arrow-btn">
            <div class="arrow btn_arrow_left">
                <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
            </div>
            <div class="arrow btn_arrow_right">
                <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
            </div>
        </div>
        <!-- Thanh flash sale -->
        <div class="flash-sale">
            <div class="flash-sale-left">
                <p>FLASH SALE</p>
            </div>
            <div class="flash-sale-right">
                <div class="day time">
                    <p class="p1">06</p>
                    <p>Days</p>
                </div>
                <div class="hour time">
                    <p class="p1">12</p>
                    <p>Hrs</p>
                </div>
                <div class="min time">
                    <p class="p1">50</p>
                    <p>Mins</p>
                </div>
                <div class="second time">
                    <p class="p1">48</p>
                    <p>Secs</p>
                </div>
            </div>
        </div>
        <!-- Sản phẩm bán chạy nhất -->
        <div class="best special">
            <div class="detail">
                <div class="title">Những sản phẩm bán chạy nhất</div>
                <div class="view">Xem tất cả</div>
                <div class="arrow-right">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                </div>
            </div>
            <div class="slide">
                <!-- <div class="arrow btn_arrow_left">
                <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/Avangarda_klu.jpg" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/bg.jpg" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/blog.jpg" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/blol.jpg" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="card">
                <div class="discount"></div>
                <img src="../images/main/p4.png" alt="">
                <p class="name">Name</p>
                <div class="price">
                    <p class="p1">10.000 VNĐ</p>
                    <p class="p2">20.000 vnđ</p>
                </div>
                <div class="buy">
                    <p>Mua Ngay</p>
                </div>
            </div>
            <div class="arrow btn_arrow_right">
                <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
            </div> -->
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
        <!-- Phần mũi tên để lướt -->
        <div class="arrow-btn">
            <div class="arrow btn_arrow_left">
                <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
            </div>
            <div class="arrow btn_arrow_right">
                <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
            </div>
        </div>
        <!-- Bộ sưu tập -->
        <div class="collections">
            <div class="title">
                <p>Bộ sưu tập</p>
            </div>
            <div class="col-list">
                <div class="col-item">
                    <div class="item">
                        <div class="image">
                            <img src="../images/main/col1.jpg" alt="" />
                        </div>
                        <p></p>
                    </div>
                </div>
                <div class="col-item">
                    <div class="item">
                        <div class="image">
                            <img src="../images/main/col2.jpg" alt="" />
                        </div>
                        <p></p>
                    </div>
                </div>
                <div class="col-item">
                    <div class="item">
                        <div class="image">
                            <img src="../images/main/col3.jpg" alt="" />
                        </div>
                        <p></p>
                    </div>
                </div>
                <div class="col-item">
                    <div class="item">
                        <div class="image">
                            <img src="../images/main/col4.jpg" alt="" />
                        </div>
                        <p></p>
                    </div>
                </div>
                <div class="col-item">
                    <div class="item">
                        <div class="image">
                            <img src="../images/main/col5.jpg" alt="" />
                        </div>
                        <p></p>
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
