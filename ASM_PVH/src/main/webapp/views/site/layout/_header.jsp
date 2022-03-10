<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/head.jsp" %>
<header class="header navbar-area fixed-top">
    <!-- Start Topbar -->
    <div class="topbar">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8 col-md-8 col-12">
                    <div class="top-left">
                        <ul class="menu-top-link">
                            <li>
                                <div class="select-position">
                                    <select id="select-language" onchange="changeLanguage()" class="px-3">
                                        <option value="vi" ${pageContext.response.locale.language == "vi" ? "selected" : ""}>
                                            Tiếng Việt
                                        </option>
                                        <option value="en" ${pageContext.response.locale.language == "en" ? "selected" : ""}>
                                            English
                                        </option>
                                    </select>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-12">
                    <div class="top-end">
                        <c:if test="${not empty sessionScope.username}">
                            <div class="dropdown user">
                                <button class="btn btn-secondary dropdown-toggle" type="button"
                                        id="dropdownMenuButton2" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                    <i class="lni lni-user"></i> <spring:message code="header.hi.user"/>, ${username}
                                </button>
                                <ul class="dropdown-menu dropdown-menu-dark"
                                    aria-labelledby="dropdownMenuButton2">
                                    <li><a class="dropdown-item" href="/user/change-pass">Đổi mật khẩu</a></li>
                                    <li><a class="dropdown-item" href="/user/profile">Cập nhật tài
                                        khoản</a></li>
                                    <c:if test="${isAdmin}">
                                        <li><a class="dropdown-item" href="/admin">Quản lý admin</a></li>
                                    </c:if>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="/user/logout">Đăng
                                        Xuất</a></li>
                                </ul>
                            </div>
                        </c:if>
                        <c:if test="${empty sessionScope.username}">
                            <ul class="user-login">
                                <li><a href="/user/login"><spring:message code="header.login"/> </a></li>
                                <li><a href="/user/register"><spring:message code="header.register"/></a></li>
                            </ul>
                        </c:if>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->
    <!-- Start Header Middle -->
    <div class="header-middle">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-3 col-7">
                    <!-- Start Header Logo -->
                    <a class="navbar-brand" href="/home"> <img
                            src="/assets/user/images/logo/logo.svg" alt="Logo">
                    </a>
                    <!-- End Header Logo -->
                </div>
                <div class="col-md-7 d-xs-none">
                    <!-- Start Main Menu Search -->
                    <div class="main-menu-search">
                        <!-- navbar search start -->
                        <div class="navbar-search search-style-5">
                            <div class="search-input">
                                <input type="text" placeholder="Search">
                            </div>
                            <div class="search-btn">
                                <button>
                                    <i class="lni lni-search-alt"></i>
                                </button>
                            </div>
                        </div>
                        <!-- navbar search Ends -->
                    </div>
                    <!-- End Main Menu Search -->
                </div>
                <div class="col-md-2 col-5">
                    <div class="">
                        <div class="navbar-cart">
                            <!--        <div class="wishlist">
                                <a href="javascript:void(0)">
                                    <i class="lni lni-heart"></i>
                                    <span class="total-items">0</span>
                                </a>
                            </div> -->
                            <!--  giỏ hàng -->
                            <c:if test="${not empty sessionScope.username}">
                                <div class="cart-items">
                                    <a href="/user/shopping-cart" class="main-btn"> <i
                                            class="lni lni-cart"></i>
                                        <c:if test="${countCart > 0}">
                                            <span class="total-items">${countCart}</span>
                                        </c:if>
                                    </a>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Middle -->
    <!-- Start Header Bottom -->
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12 col-md-6 col-12">
                <div class="nav-inner">
                    <!-- Start Mega Category Menu -->
                    <div class="mega-category-menu">
                        <a href="/product/product-list"><span class="cat-button"><i
                                class="lni lni-menu"></i><spring:message code="header.allCategories"/></span></a>
                        <ul class="sub-category">
                            <c:forEach var="category" items="${categories}">
                                <li>
                                    <a href="/product/product-list/${category.slug}">${category.name}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- End Mega Category Menu -->
                    <!-- Start Navbar -->
                    <nav class="navbar navbar-expand-lg">
                        <button class="navbar-toggler mobile-menu-btn" type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="toggler-icon"></span> <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse sub-menu-bar"
                             id="navbarSupportedContent">
                            <ul id="nav" class="navbar-nav ms-auto">
                                <li class="nav-item"><a href="/home" class="active"
                                                        aria-label="Toggle navigation"><spring:message
                                        code="header.home"/></a></li>
                                <li class="nav-item"><a href="#"
                                                        aria-label="Toggle navigation"><spring:message
                                        code="header.aboutUs"/></a></li>
                                <li class="nav-item"><a href="#"
                                                        aria-label="Toggle navigation"><spring:message
                                        code="header.contact"/></a></li>
                            </ul>
                        </div>
                        <!-- navbar collapse -->
                    </nav>
                    <!-- End Navbar -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Bottom -->
</header>
<!-- End Header Area -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    function changeLanguage() {
        var language = $('#select-language').val();
        $.ajax({
            url: "/home?lang=" + language,
            success: function () {
                location.reload();
            }
        });
    }
</script>

