﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Corano - Jewellery Shop eCommerce Bootstrap 4 Template</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    

    <!-- CSS
	============================================ -->
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
    <!-- Pe-icon-7-stroke CSS -->
    <link rel="stylesheet" href="assets/css/vendor/pe-icon-7-stroke.css">
    <!-- Font-awesome CSS -->
    <link rel="stylesheet" href="assets/css/vendor/font-awesome.min.css">
    <!-- Slick slider css -->
    <link rel="stylesheet" href="assets/css/plugins/slick.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="assets/css/plugins/animate.css">
    <!-- Nice Select css -->
    <link rel="stylesheet" href="assets/css/plugins/nice-select.css">
    <!-- jquery UI css -->
    <link rel="stylesheet" href="assets/css/plugins/jqueryui.min.css">
    <!-- main style css -->
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>

	<!-- Start Header Area -->
	<%@include file="/header.jsp"%>
	<!-- end Header Area -->


	<main>
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="shop.jsp">shop</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">compare</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- compare main wrapper start -->
        <div class="compare-page-wrapper section-padding">
            <div class="container">
                <div class="section-bg-color">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Compare Page Content Start -->
                            <div class="compare-page-content-wrap">
                                <div class="compare-table table-responsive">
                                    <table class="table table-bordered mb-0">
                                        <tbody>
                                            <tr>
                                                <td class="first-column">Product</td>
                                                <td class="product-image-title">
                                                    <a href="product-details.jsp" class="image">
                                                        <img class="img-fluid" src="assets/img/product/product-1.jpg" alt="Compare Product">
                                                    </a>
                                                    <a href="#" class="category">Daimond</a>
                                                    <a href="product-details.jsp" class="title">Perfect Diamond Jewelry</a>
                                                </td>
                                                <td class="product-image-title">
                                                    <a href="product-details.jsp" class="image">
                                                        <img class="img-fluid" src="assets/img/product/product-2.jpg" alt="Compare Product">
                                                    </a>
                                                    <a href="#" class="category">Gold</a>
                                                    <a href="product-details.jsp" class="title">Handmade Golden Necklace</a>
                                                </td>
                                                <td class="product-image-title">
                                                    <a href="product-details.jsp" class="image">
                                                        <img class="img-fluid" src="assets/img/product/product-3.jpg" alt="Compare Product">
                                                    </a>
                                                    <a href="#" class="category">Ring</a>
                                                    <a href="product-details.jsp" class="title">Diamond Exclusive Ornament</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Description</td>
                                                <td class="pro-desc">
                                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident
                                                        nulla, explicabo iste a rerum pariatur.</p>
                                                </td>
                                                <td class="pro-desc">
                                                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sit
                                                        commodi obcaecati cumque consectetur alias incidunt?</p>
                                                </td>
                                                <td class="pro-desc">
                                                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius,
                                                        facere. Fuga asperiores inventore iste tempora.</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Price</td>
                                                <td class="pro-price">$295</td>
                                                <td class="pro-price">$275</td>
                                                <td class="pro-price">$395</td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Color</td>
                                                <td class="pro-color">Black</td>
                                                <td class="pro-color">Red</td>
                                                <td class="pro-color">Blue</td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Stock</td>
                                                <td class="pro-stock">In Stock</td>
                                                <td class="pro-stock">Stock Out</td>
                                                <td class="pro-stock">In Stock</td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Add to cart</td>
                                                <td><a href="cart.jsp" class="btn btn-sqr">Add to Cart</a></td>
                                                <td><a href="cart.jsp" class="btn btn-sqr disabled">Add to Cart</a></td>
                                                <td><a href="cart.jsp" class="btn btn-sqr">Add to Cart</a></td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Rating</td>
                                                <td class="pro-ratting">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </td>
                                                <td class="pro-ratting">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </td>
                                                <td class="pro-ratting">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Remove</td>
                                                <td class="pro-remove">
                                                    <button><i class="fa fa-trash-o"></i></button>
                                                </td>
                                                <td class="pro-remove">
                                                    <button><i class="fa fa-trash-o"></i></button>
                                                </td>
                                                <td class="pro-remove">
                                                    <button><i class="fa fa-trash-o"></i></button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- Compare Page Content End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- compare main wrapper end -->
    </main>

    <!-- Scroll to top start -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div>
    <!-- Scroll to Top End -->

     <!-- footer area start -->
   <%@include file="/footer.jsp" %>
   	 <!-- footer area end -->

    <!-- Quick view modal start -->
    <div class="modal" id="quick_view">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <!-- product details inner end -->
                    <div class="product-details-inner">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="product-large-slider">
                                    <div class="pro-large-img img-zoom">
                                        <img src="assets/img/product/product-details-img1.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="assets/img/product/product-details-img2.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="assets/img/product/product-details-img3.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="assets/img/product/product-details-img4.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="assets/img/product/product-details-img5.jpg" alt="product-details" />
                                    </div>
                                </div>
                                <div class="pro-nav slick-row-10 slick-arrow-style">
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img1.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img2.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img3.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img4.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img5.jpg" alt="product-details" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="product-details-des">
                                    <div class="manufacturer-name">
                                        <a href="product-details.jsp">HasTech</a>
                                    </div>
                                    <h3 class="product-name">Handmade Golden Necklace</h3>
                                    <div class="ratings d-flex">
                                        <span><i class="fa fa-star-o"></i></span>
                                        <span><i class="fa fa-star-o"></i></span>
                                        <span><i class="fa fa-star-o"></i></span>
                                        <span><i class="fa fa-star-o"></i></span>
                                        <span><i class="fa fa-star-o"></i></span>
                                        <div class="pro-review">
                                            <span>1 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <span class="price-regular">$70.00</span>
                                        <span class="price-old"><del>$90.00</del></span>
                                    </div>
                                    <h5 class="offer-text"><strong>Hurry up</strong>! offer ends in:</h5>
                                    <div class="product-countdown" data-countdown="2019/09/20"></div>
                                    <div class="availability">
                                        <i class="fa fa-check-circle"></i>
                                        <span>200 in stock</span>
                                    </div>
                                    <p class="pro-desc">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                        eirmod tempor invidunt ut labore et dolore magna.</p>
                                    <div class="quantity-cart-box d-flex align-items-center">
                                        <h6 class="option-title">qty:</h6>
                                        <div class="quantity">
                                            <div class="pro-qty"><input type="text" value="1"></div>
                                        </div>
                                        <div class="action_link">
                                            <a class="btn btn-cart2" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="useful-links">
                                        <a href="#" data-toggle="tooltip" title="Compare"><i
                                            class="pe-7s-refresh-2"></i>compare</a>
                                        <a href="#" data-toggle="tooltip" title="Wishlist"><i
                                            class="pe-7s-like"></i>wishlist</a>
                                    </div>
                                    <div class="like-icon">
                                        <a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
                                        <a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
                                        <a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
                                        <a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- product details inner end -->
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view modal end -->

    <!-- offcanvas mini cart start -->
    <div class="offcanvas-minicart-wrapper">
        <div class="minicart-inner">
            <div class="offcanvas-overlay"></div>
            <div class="minicart-inner-content">
                <div class="minicart-close">
                    <i class="pe-7s-close"></i>
                </div>
                <div class="minicart-content-box">
                    <div class="minicart-item-wrapper">
                        <ul>
                            <li class="minicart-item">
                                <div class="minicart-thumb">
                                    <a href="product-details.jsp">
                                        <img src="assets/img/cart/cart-1.jpg" alt="product">
                                    </a>
                                </div>
                                <div class="minicart-content">
                                    <h3 class="product-name">
                                        <a href="product-details.jsp">Dozen White Botanical Linen Dinner Napkins</a>
                                    </h3>
                                    <p>
                                        <span class="cart-quantity">1 <strong>&times;</strong></span>
                                        <span class="cart-price">$100.00</span>
                                    </p>
                                </div>
                                <button class="minicart-remove"><i class="pe-7s-close"></i></button>
                            </li>
                            <li class="minicart-item">
                                <div class="minicart-thumb">
                                    <a href="product-details.jsp">
                                        <img src="assets/img/cart/cart-2.jpg" alt="product">
                                    </a>
                                </div>
                                <div class="minicart-content">
                                    <h3 class="product-name">
                                        <a href="product-details.jsp">Dozen White Botanical Linen Dinner Napkins</a>
                                    </h3>
                                    <p>
                                        <span class="cart-quantity">1 <strong>&times;</strong></span>
                                        <span class="cart-price">$80.00</span>
                                    </p>
                                </div>
                                <button class="minicart-remove"><i class="pe-7s-close"></i></button>
                            </li>
                        </ul>
                    </div>

                    <div class="minicart-pricing-box">
                        <ul>
                            <li>
                                <span>sub-total</span>
                                <span><strong>$300.00</strong></span>
                            </li>
                            <li>
                                <span>Eco Tax (-2.00)</span>
                                <span><strong>$10.00</strong></span>
                            </li>
                            <li>
                                <span>VAT (20%)</span>
                                <span><strong>$60.00</strong></span>
                            </li>
                            <li class="total">
                                <span>total</span>
                                <span><strong>$370.00</strong></span>
                            </li>
                        </ul>
                    </div>

                    <div class="minicart-button">
                        <a href="cart.jsp"><i class="fa fa-shopping-cart"></i> View Cart</a>
                        <a href="cart.jsp"><i class="fa fa-share"></i> Checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- offcanvas mini cart end -->

    <!-- JS
============================================ -->

    <!-- Modernizer JS -->
    <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <!-- jQuery JS -->
    <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
    <!-- Popper JS -->
    <script src="assets/js/vendor/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="assets/js/vendor/bootstrap.min.js"></script>
    <!-- slick Slider JS -->
    <script src="assets/js/plugins/slick.min.js"></script>
    <!-- Countdown JS -->
    <script src="assets/js/plugins/countdown.min.js"></script>
    <!-- Nice Select JS -->
    <script src="assets/js/plugins/nice-select.min.js"></script>
    <!-- jquery UI JS -->
    <script src="assets/js/plugins/jqueryui.min.js"></script>
    <!-- Image zoom JS -->
    <script src="assets/js/plugins/image-zoom.min.js"></script>
    <!-- Imagesloaded JS -->
    <script src="assets/js/plugins/imagesloaded.pkgd.min.js"></script>
    <!-- Instagram feed JS -->
    <script src="assets/js/plugins/instagramfeed.min.js"></script>
    <!-- mailchimp active js -->
    <script src="assets/js/plugins/ajaxchimp.js"></script>
    <!-- contact form dynamic js -->
    <script src="assets/js/plugins/ajax-mail.js"></script>
    <!-- google map api -->
    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
    <!-- google map active js -->
    <script src="assets/js/plugins/google-map.js"></script>
    <!-- Main JS -->
    <script src="assets/js/main.js"></script>
</body>

</html>
