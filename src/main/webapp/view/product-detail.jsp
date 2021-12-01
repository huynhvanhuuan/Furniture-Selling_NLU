<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Huỳnh Văn Hữu Ân
  Date: 11/29/2021
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/header.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/footer.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/product-detail.css" />
    <title>Product - Furniture Selling</title>
</head>
<body>
    <c:import url="import/header.jsp"/>
    <main class="content">
        <div class="container">
            <div class="product">
                <section class="product-img">
                    <div class="product-img-main">
                        <img src="<%=request.getContextPath()%>/images/sofa_vai_poppy/sofa_vai_poppy_mau_hong_5.jpg" alt=""/>
                    </div>
                    <div class="product-img-list">
                        <img class="product-img-item active mx-3" src="<%=request.getContextPath()%>/images/sofa_vai_poppy/sofa_vai_poppy_mau_hong_5.jpg" alt=""/>
                        <img class="product-img-item mx-3" src="<%=request.getContextPath()%>/images/sofa_vai_poppy/sofa_vai_poppy_mau_hong_2.jpg" alt=""/>
                        <img class="product-img-item mx-3" src="<%=request.getContextPath()%>/images/sofa_vai_poppy/sofa_vai_poppy_mau_hong_1.jpg" alt=""/>
                        <img class="product-img-item mx-3" src="<%=request.getContextPath()%>/images/sofa_vai_poppy/sofa_vai_poppy_den_xam.jpg" alt=""/>
                        <img class="product-img-item mx-3" src="<%=request.getContextPath()%>/images/sofa_vai_poppy/sofa_vai_poppy_xanh_duong.jpg" alt=""/>
                    </div>
                </section>
                <section class="product-detail">
                    <h1 class="product-title">Sofa vải Poppy màu hồng</h1>
                    <p class="product-description">
                        Warm and welcoming, neat and stylish. The supporting seat cushions,
                        the cover's soft finish and the tight fit gives this sofa a perfect
                        balance between its comport, functions and look.
                    </p>
                    <br />
                    <p class="paragraph">
                        <span class="p-title">Kích thước:</span>
                        <span class="product-size">D2400/1350 - R830 - C700 mm</span>
                    </p>
                    <p class="paragraph">
                        <span class="p-title">Vật liệu:</span>
                        <span class="product-material">Chân gỗ - Vải cao cấp</span>
                    </p>
                    <form class="form" action="" method="get">
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
                                    <label class="color-title" for="color-1"> </label>
                                </li>
                                <li class="color-item">
                                    <input
                                            class="input-radio"
                                            id="color-2"
                                            type="radio"
                                            name="color"
                                    />
                                    <label class="color-title" for="color-2"> </label>
                                </li>
                                <li class="color-item">
                                    <input
                                            class="input-radio"
                                            id="color-3"
                                            type="radio"
                                            name="color"
                                    />
                                    <label class="color-title" for="color-3"> </label>
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
                            <span class="rate-count">(8 khách hàng đã review)</span>
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
                <h2>MÔ TẢ SẢN PHẨM</h2>
                <p>
                    Sofa Poppy góc phải vải màu xanh Sẽ không ngoa nếu nói rằng mùa hè này
                    những gì tươi trẻ nhất, xanh tươi nhất và hiện đại nhất sẽ gọi tên chiếc
                    Sofa này với thiết kế hiện đại tinh giản và với tông màu không thể nào
                    hot hơn là xanh Pastel cho sắc màu không gian nhà bạn luôn bừng sáng và
                    sức sống. Với thiết kế góc nhỏ gọn nhưng không kém phần tiện dụng cho
                    bạn sự trải nghiệm êm ái và thoải mái khi có thể duỗi thẳng cơ thể nằm
                    oài cho 1 ngày thư thái bạn nhé!
                </p>
                <p>Kích thước: D2400/1350 - R830 - C700 mm</p>
                <p>Vật liệu: Chân gỗ - Vải cao cấp</p>
            </div>
            <div class="review"></div>
        </div>
    </main>
    <c:import url="import/footer.jsp"/>
    <script src="<%=request.getContextPath()%>/js/product-detail.js"></script>
    <c:import url="import/script.jsp"/>
</body>
</html>
