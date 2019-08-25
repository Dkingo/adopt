<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""
    />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />

</head>
<body>

<!-- services -->
<div class="services" id="services">
    <div class="container">
        <h3 class="agile-title">Services Overview</h3>
        <div class="w3_agile_services_grids">
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid " data-aos="zoom-in">
                <div class="ih-item circle effect1 agile_services_grid">
                    <div class="spinner"></div>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/images/cat6.jpg" alt=" " class="img-responsive" />
                    </div>
                </div>
                <fieldset>
                    <legend>Service 1</legend>
                    consectetur adipiscing elit, sed do eiusmod tempor et dolore magna aliqua.
                </fieldset>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
                <div class="ih-item circle effect1 agile_services_grid">
                    <div class="spinner"></div>
                    <div class="img">
                        <a href="show.html">
                            <img src="${pageContext.request.contextPath}/images/dog1.jpg" alt=" " class="img-responsive" />
                        </a>
                    </div>
                </div>
                <fieldset>
                    <legend>Service 2</legend>
                    consectetur adipiscing elit, sed do eiusmod tempor et dolore magna aliqua.
                </fieldset>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
                <div class="ih-item circle effect1 agile_services_grid">
                    <div class="spinner"></div>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/images/cat8.jpg" alt=" " class="img-responsive" />
                    </div>
                </div>
                <fieldset>
                    <legend>Service 3</legend>
                    consectetur adipiscing elit, sed do eiusmod tempor et dolore magna aliqua.
                </fieldset>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="w3_agile_services_grids">
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid " data-aos="zoom-in">
                <div class="ih-item circle effect1 agile_services_grid">
                    <div class="spinner"></div>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/images/cat9.jpg" alt=" " class="img-responsive" />
                    </div>
                </div>
                <fieldset>
                    <legend>Service 4</legend>
                    consectetur adipiscing elit, sed do eiusmod tempor et dolore magna aliqua.
                </fieldset>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
                <div class="ih-item circle effect1 agile_services_grid">
                    <div class="spinner"></div>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/images/dog3.jpg" alt=" " class="img-responsive" />
                    </div>
                </div>
                <fieldset>
                    <legend>Service 5</legend>
                    consectetur adipiscing elit, sed do eiusmod tempor et dolore magna aliqua.
                </fieldset>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
                <div class="ih-item circle effect1 agile_services_grid">
                    <div class="spinner"></div>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/images/cat11.jpg" alt=" " class="img-responsive" />
                    </div>
                </div>
                <fieldset>
                    <legend>Service 6</legend>
                    consectetur adipiscing elit, sed do eiusmod tempor et dolore magna aliqua.
                </fieldset>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="w3l-img-side">
        <img src="${pageContext.request.contextPath}/images/cat11.png" alt="" />
    </div>
    <div class="w3l-img-side w3l-img-side2">
        <img src="${pageContext.request.contextPath}/images/cat1.png" alt="" />
    </div>
</div>
<!-- //services -->
<!-- js -->
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->

<!-- start-smooth-scrolling 上去-->
<script src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script src="${pageContext.request.contextPath}/js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up 这是service.html页面反到底层上去的功能 -->
<script>
    $(document).ready(function () {
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->


</body>

</html>