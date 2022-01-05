<%--
  Created by IntelliJ IDEA.
  User: tranv
  Date: 03/01/2022
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Liên hệ với chúng tôi</title>
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
    <link rel="stylesheet" href="../css/contact-us.css" />
    <link rel="stylesheet" href="../css/footer.css" />
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
                    <li class="navigation-item active">
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
                    <!-- <li class="header-item sign-in"><a>Đăng nhập</a></li> -->
                </ul>
            </div>
        </div>
    </div>
</header>
<section class="contact-us">
    <div class="container">
        <div class="row">
            <div class="col-7 left">
                <h1 class="title">Liên hệ với chúng tôi</h1>
                <p class="description">
                    Chúng tôi luôn lắng nghe bạn, nên nếu có điều bạn thắc mắc, chúng tôi luôn ở đây và sẵn sàng giúp đỡ bằng mọi cách có thể
                </p>
                <form action="" method="POST">
                    <div class="row">
                        <div class="col form-group">
                            <label for="fullname" class="form-label">Họ và tên</label>
                            <input
                                    type="text"
                                    id="fullname"
                                    name="fullname"
                                    placeholder="ex: Huỳnh Văn Hữu Ân"
                            />
                        </div>
                        <div class="col form-group">
                            <label for="contact-email" class="form-label"
                            >Email</label
                            >
                            <input
                                    type="text"
                                    id="contact-email"
                                    name="email"
                                    placeholder="ex: huuan@gmail.com"
                            />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="phone" class="form-label">Số điện thoại</label>
                            <input
                                    type="text"
                                    id="phone"
                                    name="phone"
                                    placeholder="ex: +84 787 782 050"
                            />
                        </div>
                        <div class="col form-group">
                            <label for="subject" class="form-label">Tựa đề</label>
                            <input
                                    type="text"
                                    id="subject"
                                    name="subject"
                                    placeholder="ex: return"
                            />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="message" class="form-label">Nội dung</label>
                            <textarea
                                    name="message"
                                    id="message"
                                    placeholder="Ghi tin nhắn của bạn tại đây."
                                    rows="10"
                            ></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="offset-md-8 col-md-4 form-group">
                            <input type="submit" id="submit-contact" value="Submit" />
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-5 right">
                <h5>THỜI GIAN LÀM VIỆC</h5>
                <p class="working-time">Thứ hai - Thứ sáu, 9:00 - 17:00</p>
                <div class="info">
                    <p>
                        <span class="icon-info"><i class="fas fa-home"></i></span> 17
                        ĐH Nông Lâm TPHCM, Khoa Công nghệ thông tin
                    </p>
                    <p>
                        <span class="icon-info"><i class="fas fa-phone-alt"></i></span>
                        +84 787 782 050
                    </p>
                    <p>
                        <span class="icon-info"><i class="fas fa-envelope"></i></span>
                        info@gmail.com
                    </p>
                </div>
                <h5>THAM GIA VỚI CHÚNG TÔI</h5>
                <p class="join-us">
                    Chúng tôi luôn chào đón những đối tác mới. Bạn có thể bất cứ vấn đề hay câu hỏi nào thông qua điện thoại, thư điện tử, Facebook hoặc Instagram.
                </p>
                <div class="d-flex justify-content-start social-icons">
                    <span class="social-icon"><i class="fab fa-facebook-f"></i></span>
                    <span class="social-icon"><i class="fab fa-google"></i></span>
                    <span class="social-icon"><i class="fab fa-instagram"></i></span>
                    <span class="social-icon"><i class="fab fa-twitter"></i></span>
                    <span class="social-icon"><i class="fab fa-youtube"></i></span>
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
</body>
</html>
