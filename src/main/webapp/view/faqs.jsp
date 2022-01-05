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
  <title>FAQs</title>
  <link rel="stylesheet" href="../css/base.css" />
  <link rel="stylesheet" href="../css/faqs.css" />
  <link rel="stylesheet" href="../css/header.css" />
  <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css"
          integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA=="
          crossorigin="anonymous"
          referrerpolicy="no-referrer"
  />
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
          <li class="navigation-item active">
            <a href="faqs.jsp">FAQS</a>
          </li>
        </ul>
      </nav>
      <div class="header-btn"></div>
    </div>
  </div>
</header>
<div class="page">
  <div class="container">
    <div class="start">
      <h2>Chúng tôi có thể giúp bạn như thế nào ?</h2>
      <p class="detailOfHead">
        Dưới đây là những câu hỏi khách hàng thường gặp :
      </p>
    </div>
    <div class="faqs">
      <ul>
        <li class="item">
          <div class="ques">
            <p class="title">Câu hỏi:</p>
            <p class="nameOfQues">
              Tôi có thể thanh toán bằng những cách nào ?
            </p>
            <div class="but">
              <!--                                <div class="btn_hide"><i class="fa fa-plus" aria-hidden="true"></i></div>-->
              <div class="btn_hidden">
                <i class="fa fa-minus" aria-hidden="true"></i>
              </div>
            </div>
          </div>
          <div class="ans">
            <p class="first">
              Lorem, ipsum dolor sit amet consectetur adipisicing elit.
              Quia blanditiis dolore neque aperiam magni, aut
              necessitatibus ipsum vero quaerat quae maxime officia
              inventore eius itaque provident ipsa possimus culpa numquam.
            </p>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Fuga aut excepturi quod laboriosam illum saepe vel laborum,
              pariatur odit deserunt, aspernatur repudiandae. Facere non
              reprehenderit aliquam aperiam quaerat suscipit fugit.
            </p>
          </div>
        </li>
        <li class="item">
          <div class="ques">
            <p class="title">Câu hỏi:</p>
            <p class="nameOfQues">Làm sao để tôi có thể mua hàng ?</p>
            <div class="but">
              <div class="btn_hide">
                <i class="fa fa-plus" aria-hidden="true"></i>
              </div>
              <!-- <div class="btn_hidden"><i class="fa fa-minus" aria-hidden="true"></i></div> -->
            </div>
          </div>
          <div class="ans hidden">
            <p class="first">
              Lorem, ipsum dolor sit amet consectetur adipisicing elit.
              Consectetur, nisi aspernatur? Harum et culpa tempore
              corrupti saepe, amet provident quia ex eveniet vel
              excepturi, odit quaerat iusto iure sapiente natus.
            </p>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Quas odit molestiae similique, fuga aperiam debitis unde
              vero aspernatur ullam? Vitae itaque ipsam praesentium ab
              dicta voluptatum aliquam fugiat tenetur commodi.
            </p>
          </div>
        </li>
        <li class="item">
          <div class="ques">
            <p class="title">Câu hỏi:</p>
            <p class="nameOfQues">Tôi có thể hủy đơn hàng không ?</p>
            <div class="but">
              <div class="btn_hide">
                <i class="fa fa-plus" aria-hidden="true"></i>
              </div>
              <!-- <div class="btn_hidden"><i class="fa fa-minus" aria-hidden="true"></i></div> -->
            </div>
          </div>
          <div class="ans hidden">
            <p class="first">
              Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Tenetur error ipsum consectetur corporis, dolores quia
              tempore expedita, sequi quam voluptas suscipit iure labore
              iusto enim officiis non veritatis, temporibus laboriosam.
            </p>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Ipsam commodi voluptas molestias facere deserunt natus
              quibusdam corporis quos, error iste illum! In sunt sapiente
              exercitationem soluta aliquam nostrum fugit doloremque?
            </p>
          </div>
        </li>
        <li class="item">
          <div class="ques">
            <p class="title">Câu hỏi:</p>
            <p class="nameOfQues">
              Mất bao lâu để tôi có thể nhận được mặt hàng của mình ?
            </p>
            <div class="but">
              <div class="btn_hide">
                <i class="fa fa-plus" aria-hidden="true"></i>
              </div>
              <!-- <div class="btn_hidden"><i class="fa fa-minus" aria-hidden="true"></i></div> -->
            </div>
          </div>
          <div class="ans hidden">
            <p class="first">
              Bạn có thể thanh toán bằng nhiều cách như thanh toán trực tiếp khi nhận hàng, thanh toán qua thẻ ngân hàng, các app banking, tài khoản momo hoặc chuyển khoản.
            </p>
          </div>
        </li>
        <li class="item">
          <div class="ques">
            <p class="title">Câu hỏi:</p>
            <p class="nameOfQues">
              Tôi nên liên hệ với ai nếu tôi có vấn đề về truy vấn ?
            </p>
            <div class="but">
              <div class="btn_hide">
                <i class="fa fa-plus" aria-hidden="true"></i>
              </div>
              <!-- <div class="btn_hidden"><i class="fa fa-minus" aria-hidden="true"></i></div> -->
            </div>
          </div>
          <div class="ans hidden">
            <p class="first">
              Nếu bạn có vấn đề liên quan đến các hình thức thanh toán khi đang trong quá trình thanh toán, hãy liên hệ với chúng tôi để nhận được sự giúp đỡ của bộ phận kĩ thuật.
            </p>
          </div>
        </li>
      </ul>
    </div>
    <div class="contact">
      <p class="text">Nếu bạn có những thắc mắc</p>
      <a href="contact-us.jsp" class="btn-primary btn"
      >Liên hệ với chúng tôi tại đây !</a
      >
    </div>
  </div>
</div>
</body>
</html>

