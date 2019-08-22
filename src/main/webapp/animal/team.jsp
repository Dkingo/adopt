<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>

    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css" type="text/css" media="all">

</head>
<body>
<!--导航栏-->
<!-- sticky navigation -->
<div class="nav-links">
    <nav class='navbar navbar-default'>
        <div class='container'>
            <div class='collapse navbar-collapse'>
                <ul>
                    <li>
                        <a href="index.html">主页</a>
                    </li>
                    <li>
                        <a href="about.html">宠物知识</a>
                    </li>
                    <li>
                        <a href="services.html">领养中心</a>
                    </li>
                    <li>
                        <a href="blog.html">团队博客</a>
                    </li>
                    <li>
                        <a href="team.html">团队展示</a>
                    </li>

                    <li>
                        <button class="btn-primary btn-lg" data-toggle="modal" data-target="#login">注册/登录</button>
                    </li>
                    <li>
                        <button class="btn-primary btn-lg" data-toggle="modal" data-target="#editUsers">修改</button>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<!-- //sticky navigation -->

<!-- team -->
<div class="team" id="team">
    <div class="container">
        <h3 class="agile-title">Our Team</h3>
        <div class="team-agileinfo agileits-w3layouts">
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right">
                    <img src="${pageContext.request.contextPath}/images/t1.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left">
                    <h4>Nathan Tim</h4>
                    <p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right aliquam">
                    <img src="${pageContext.request.contextPath}/images/t2.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left non">
                    <h4>Keith Ryan</h4>
                    <p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="team-agileinfo">
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right">
                    <img src="${pageContext.request.contextPath}/images/t3.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left">
                    <h4>Irene Jan</h4>
                    <p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right aliquam">
                    <img src="${pageContext.request.contextPath}/images/t4.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left non">
                    <h4>Angela Leah</h4>
                    <p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</p>
                </div>

                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- contact -->
<div class="contact" id="contact">
    <div class="container">
        <div class="col-md-9 col-sm-9 contact-right">
            <form action="#" method="post">
                <input type="text" name="name" placeholder="Your name" required="">
                <input type="email" name="email" placeholder="Your email" required="">
                <input type="text" name="subject" placeholder="Your subject" required="">
                <input type="text" name="phone number" placeholder="Phone number" required="">
                <textarea name="message" placeholder="Your message" required=""></textarea>
                <input type="submit" value="Send">
            </form>
        </div>
        <div class="col-md-3 col-sm-3 contact-left">
            <div class="address">
                <h4>
                    <i class="fa fa-map-marker" aria-hidden="true"></i>Location</h4>
                <p>345 Setwant natrer,</p>
                <p>Metropolitan, Italy.</p>
            </div>
            <div class="phone">
                <h4>
                    <i class="fa fa-phone" aria-hidden="true"></i>PHONE</h4>
                <p>+1(401) 1234 567.</p>
                <p>+1(804) 4261 150.</p>
            </div>
            <div class="email">
                <h4>
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>E-MAIL</h4>
                <p>
                    <a href="mailto:info@example.com">Example1@gmail.com</a>
                </p>
                <p>
                    <a href="mailto:info@example.com">Example2@gmail.com</a>
                </p>
            </div>
        </div>
    </div>
</div>
<!-- //team -->
<!-- js -->
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->
</body>

</html>
