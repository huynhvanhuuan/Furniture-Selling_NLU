<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Huỳnh Văn Hữu Ân
  Date: 11/29/2021
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
            integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/header.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/footer.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/products.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/card.css" />
    <title>Product - Furniture Selling</title>
</head>
<body>
<c:import url="import/header.jsp"/>
<main class="content">
    <div class="banner">
        <div class="banner-title">
            <h2>Nội thất xanh</h2>
            <h3>Cho không gian trong lành</h3>
        </div>
        <img class="banner-img" src="<%=request.getContextPath()%>/images/banner.png" alt="banner" />
    </div>
    <div class="container">
        <h1>Tất cả sản phẩm</h1>
        <section class="filter">
            <h2><i class="fas fa-filter"></i> Bộ lọc</h2>
            <div class="filter-group categories">
                <h3 class="filter-title">Danh mục</h3>
                <i class="fas fa-caret-down filter-icon"></i>
            </div>
            <div class="filter-group products-price">
                <h3 class="filter-title">Giá sản phẩm</h3>
                <i class="fas fa-caret-down filter-icon"></i>
            </div>
            <div class="filter-group products-price">
                <h3 class="filter-title">Kích thước</h3>
                <i class="fas fa-caret-down filter-icon"></i>
            </div>
            <div class="filter-group order-price">
                <h3 class="filter-title">Giá: tăng dần</h3>
                <i class="fas fa-caret-down filter-icon"></i>
            </div>
        </section>
        <section class="cards">
            <div class="card">
                <div class="card-sale">
                    <span class="percent-sale">-35%</span>
                </div>
                <div class="card-img">
                    <img class="card-img-item" src="<%=request.getContextPath()%>/images/ngan_ghep_ke_sach/ke_sach.png" alt="card image"/>
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <p>Ngăn Trang Trí - Ngăn Ghép Kệ Sách</p>
                    </div>
                    <div class="card-price">
                        <span class="promotion-price">129.000</span>
                        <span class="original-price">199.000</span>
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
                    <a href="/sources/product-detail.htmlail.html" class="btn-add">Xem ngay</a>
                </div>
            </div>
            <div class="card">
                <div class="card-sale">
                    <span class="percent-sale">-35%</span>
                </div>
                <div class="card-img">
                    <img class="card-img-item" src="<%=request.getContextPath()%>/images/ngan_ghep_ke_sach/ke_sach.png" alt="card image"
                    />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <p>Ngăn Trang Trí - Ngăn Ghép Kệ Sách</p>
                    </div>
                    <div class="card-price">
                        <span class="promotion-price">129.000</span>
                        <span class="original-price">199.000</span>
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
                    <a href="/sources/product-detail.htmlail.html" class="btn-add">Xem ngay</a>
                </div>
            </div>
            <div class="card">
                <div class="card-sale">
                    <span class="percent-sale">-35%</span>
                </div>
                <div class="card-img">
                    <img class="card-img-item" src="<%=request.getContextPath()%>/images/ngan_ghep_ke_sach/ke_sach.png" alt="card image"/>
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <p>Ngăn Trang Trí - Ngăn Ghép Kệ Sách</p>
                    </div>
                    <div class="card-price">
                        <span class="promotion-price">129.000</span>
                        <span class="original-price">199.000</span>
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
                    <a href="/sources/product-detail.htmlail.html" class="btn-add">Xem ngay</a>
                </div>
            </div>
            <div class="card">
                <div class="card-sale">
                    <span class="percent-sale">-35%</span>
                </div>
                <div class="card-img">
                    <img class="card-img-item" src="<%=request.getContextPath()%>/images/ngan_ghep_ke_sach/ke_sach.png" alt="card image"/>
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <p>Ngăn Trang Trí - Ngăn Ghép Kệ Sách</p>
                    </div>
                    <div class="card-price">
                        <span class="promotion-price">129.000</span>
                        <span class="original-price">199.000</span>
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
                    <a href="/sources/product-detail.htmlail.html" class="btn-add">Xem ngay</a>
                </div>
            </div>
            <div class="card">
                <div class="card-sale">
                    <span class="percent-sale">-35%</span>
                </div>
                <div class="card-img">
                    <img class="card-img-item" src="<%=request.getContextPath()%>/images/ngan_ghep_ke_sach/ke_sach.png" alt="card image"/>
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <p>Ngăn Trang Trí - Ngăn Ghép Kệ Sách</p>
                    </div>
                    <div class="card-price">
                        <span class="promotion-price">129.000</span>
                        <span class="original-price">199.000</span>
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
                    <a href="/sources/product-detail.htmlail.html" class="btn-add">Xem ngay</a>
                </div>
            </div>
            <div class="card">
                <div class="card-sale">
                    <span class="percent-sale">-35%</span>
                </div>
                <div class="card-img">
                    <img class="card-img-item" src="<%=request.getContextPath()%>/images/ngan_ghep_ke_sach/ke_sach.png" alt="card image"/>
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <p>Ngăn Trang Trí - Ngăn Ghép Kệ Sách</p>
                    </div>
                    <div class="card-price">
                        <span class="promotion-price">129.000</span>
                        <span class="original-price">199.000</span>
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
                    <a href="/sources/product-detail.html" class="btn-add">Xem ngay</a>
                </div>
            </div>
        </section>
    </div>
</main>
<c:import url="import/footer.jsp"/>
<c:import url="import/script.jsp"/>
</body>
</html>
