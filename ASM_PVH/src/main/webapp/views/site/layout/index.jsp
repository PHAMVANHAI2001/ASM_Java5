<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ include file="/common/head.jsp" %>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>EShop</title>
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" type="image/x-icon"
          href="/assets/user/images/favicon.svg"/>

    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"/>
    <link rel="stylesheet"
          href="https://cdn.lineicons.com/3.0/lineicons.css"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css"/>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/glightbox@3.1.0/dist/css/glightbox.min.css"/>
    <link rel="stylesheet" href="/assets/user/css/main.css"/>
    <link rel="stylesheet" href="/assets/user/css/style.css"/>
    <link rel="stylesheet" href="/assets/css/all.min.css"/>
</head>

<body>
<!-- Preloader -->
<div class="preloader">
    <div class="preloader-inner">
        <div class="preloader-icon">
            <span></span> <span></span>
        </div>
    </div>
</div>
<!-- /End Preloader -->

<!-- Start Header Area -->
<tiles:insertAttribute name="header"/>
<!-- End Header Area -->

<!-- Start Content Area -->
<tiles:insertAttribute name="body"/>
<!--/ End Content Area -->

<!-- Start Footer Area -->
<tiles:insertAttribute name="footer"/>
<!--/ End Footer Area -->

<!-- ========================= scroll-top ========================= -->
<a href="#" class="scroll-top"> <i class="lni lni-chevron-up"></i>
</a>

<!-- ========================= JS here ========================= -->
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/min/tiny-slider.js"></script>

<script
        src="https://cdn.jsdelivr.net/npm/glightbox@3.1.0/dist/js/glightbox.min.js"></script>
<script src="/assets/user/js/main.js"></script>

<script type="text/javascript">
    //========= Hero Slider
    tns({
        container: '.hero-slider',
        slideBy: 'page',
        autoplay: true,
        autoplayButtonOutput: false,
        mouseDrag: true,
        gutter: 0,
        items: 1,
        nav: false,
        controls: true,
        controlsText: ['<i class="lni lni-chevron-left"></i>',
            '<i class="lni lni-chevron-right"></i>'],
    });

    //======== Brand Slider
    tns({
        container: '.brands-logo-carousel',
        autoplay: true,
        autoplayButtonOutput: false,
        mouseDrag: true,
        gutter: 15,
        nav: false,
        controls: false,
        responsive: {
            0: {
                items: 1,
            },
            540: {
                items: 3,
            },
            768: {
                items: 5,
            },
            992: {
                items: 6,
            }
        }
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    function addToCart(productId) {
        $.ajax({
            url: "/user/shoppingCart/" +${product.id},
            success: function () {
                location.reload();
            }
        });
        window.location.href = "/user/shoppingCart/" +${product.id};
    }
</script>
<script>
    document.addEventListener("DOMContentLoaded", function (event) {
        var scrollpos = sessionStorage.getItem('scrollpos');
        if (scrollpos) window.scrollTo(0, scrollpos);
        sessionStorage.removeItem('scrollpos');
    });

    window.onbeforeunload = function (e) {
        sessionStorage.setItem('scrollpos', window.scrollY);
    };
</script>
</body>

</html>