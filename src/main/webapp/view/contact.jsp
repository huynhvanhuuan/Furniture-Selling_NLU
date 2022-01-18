<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/root.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/grid.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/contact-us.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/footer.css">
    <title>Contact Us - Furniture Selling</title>
</head>
<body>
<c:import url="import/header.jsp"/>
<section class="contact-us">
    <div class="container">
        <div class="row">
            <div class="col-7 left">
                <h1 class="title">Contact Us</h1>
                <p class="description">
                    We love to hear from you, so if there’s anything you’d like to ask us, we’re right here and ready to help in every way we can.
                </p>
                <form action="" method="POST">
                    <div class="row">
                        <div class="col form-group">
                            <label for="fullname" class="form-label">Full Name</label>
                            <input type="text" id="fullname" name="fullname" placeholder="ex: Huỳnh Văn Hữu Ân">
                        </div>
                        <div class="col form-group">
                            <label for="contact-email" class="form-label">Your email</label>
                            <input type="text" id="contact-email" name="email" placeholder="ex: huuan@gmail.com">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="phone" class="form-label">Your phone</label>
                            <input type="text" id="phone" name="phone" placeholder="ex: +84 787 782 050">
                        </div>
                        <div class="col form-group">
                            <label for="subject" class="form-label">Subject</label>
                            <input type="text" id="subject" name="subject" placeholder="ex: return">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="message" class="form-label">Message</label>
                            <textarea name="message" id="message" placeholder="Write your message here" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="offset-md-8 col-md-4 form-group">
                            <input type="submit" id="submit-contact" value="Submit">
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-5 right">
                <h5>WORKING HOURS</h5>
                <p class="working-time">Monday - Friday, 9:00am - 5:00pm PST</p>
                <div class="info">
                    <p><span class="icon-info"><i class="fas fa-home"></i></span> 17 Princess Road, London, Greater London NW1 8JR, UK</p>
                    <p><span class="icon-info"><i class="fas fa-phone-alt"></i></span> +84 787 782 050</p>
                    <p><span class="icon-info"><i class="fas fa-envelope"></i></span> info@gmail.com</p>
                </div>
                <h5>JOIN US</h5>
                <p class="join-us">
                    We are happily open new colloboration.
                    You can ask any questions and offer problems by phone, email, Instagram or Facebook.
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
<c:import url="import/footer.jsp"/>
<c:import url="import/script.jsp"/>
</body>
</html>
