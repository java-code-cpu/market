<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.situ.market.user.domain.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Corano - Jewellery Shop eCommerce Bootstrap 4 Template</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->


<!-- CSS
	============================================ -->
<!-- google fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900"
	rel="stylesheet">
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
	<%
		Object user1 = request.getSession().getAttribute("user");
		User user = (User) user1;
	%>

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
									<li class="breadcrumb-item"><a href="index.jsp"><i
											class="fa fa-home"></i></a></li>
									<li class="breadcrumb-item active" aria-current="page">my-account</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area end -->

		<!-- my account wrapper start -->
		<div class="my-account-wrapper section-padding">
			<div class="container">
				<div class="section-bg-color">
					<div class="row">
						<div class="col-lg-12">
							<!-- My Account Page Start -->
							<div class="myaccount-page-wrapper">
								<!-- My Account Tab Menu Start -->
								<div class="row">
									<div class="col-lg-3 col-md-4">
										<div class="myaccount-tab-menu nav" role="tablist">
											<a href="#dashboad" class="active" data-toggle="tab"><i
												class="fa fa-dashboard"></i> Dashboard</a> <a href="#orders"
												data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
												Orders</a> <a href="#download" data-toggle="tab"><i
												class="fa fa-cloud-download"></i> Download</a> <a
												href="#payment-method" data-toggle="tab"><i
												class="fa fa-credit-card"></i> Payment Method</a> <a id = "address" name="address"
												href="#address-edit" data-toggle="tab"><i
												class="fa fa-map-marker"></i> address</a> <a
												href="#account-info" data-toggle="tab"><i
												class="fa fa-user"></i>Account Details</a> <a id="logout"
												href="login-register"> <i class="fa fa-sign-out"></i>Logout
											</a>
										</div>
									</div>
									<!-- My Account Tab Menu End -->

									<!-- My Account Tab Content Start -->
									<div class="col-lg-9 col-md-8">
										<div class="tab-content" id="myaccountContent">
											<!-- Single Tab Content Start -->
											<div class="tab-pane fade show active" id="dashboad"
												role="tabpanel">
												<div class="myaccount-content">
													<h5>Dashboard</h5>
													<div class="welcome">
														<p>
															Hello, <strong>Erik Jhonson</strong> (If Not <strong>Jhonson
																!</strong><a href="login-register.jsp" class="logout"> Logout</a>)
														</p>
													</div>
													<p class="mb-0">From your account dashboard. you can
														easily check & view your recent orders, manage your
														shipping and billing addresses and edit your password and
														account details.</p>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="orders" role="tabpanel">
												<div class="myaccount-content">
													<h5>Orders</h5>
													<div class="myaccount-table table-responsive text-center">
														<table class="table table-bordered">
															<thead class="thead-light">
																<tr>
																	<th>Order</th>
																	<th>Date</th>
																	<th>Status</th>
																	<th>Total</th>
																	<th>Action</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>1</td>
																	<td>Aug 22, 2018</td>
																	<td>Pending</td>
																	<td>$3000</td>
																	<td><a href="cart.jsp" class="btn btn-sqr">View</a>
																	</td>
																</tr>
																<tr>
																	<td>2</td>
																	<td>July 22, 2018</td>
																	<td>Approved</td>
																	<td>$200</td>
																	<td><a href="cart.jsp" class="btn btn-sqr">View</a>
																	</td>
																</tr>
																<tr>
																	<td>3</td>
																	<td>June 12, 2017</td>
																	<td>On Hold</td>
																	<td>$990</td>
																	<td><a href="cart.jsp" class="btn btn-sqr">View</a>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="download" role="tabpanel">
												<div class="myaccount-content">
													<h5>Downloads</h5>
													<div class="myaccount-table table-responsive text-center">
														<table class="table table-bordered">
															<thead class="thead-light">
																<tr>
																	<th>Product</th>
																	<th>Date</th>
																	<th>Expire</th>
																	<th>Download</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>Haven - Free Real Estate PSD Template</td>
																	<td>Aug 22, 2018</td>
																	<td>Yes</td>
																	<td><a href="#" class="btn btn-sqr"><i
																			class="fa fa-cloud-download"></i> Download File</a></td>
																</tr>
																<tr>
																	<td>HasTech - Profolio Business Template</td>
																	<td>Sep 12, 2018</td>
																	<td>Never</td>
																	<td><a href="#" class="btn btn-sqr"><i
																			class="fa fa-cloud-download"></i> Download File</a></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="payment-method"
												role="tabpanel">
												<div class="myaccount-content">
													<h5>Payment Method</h5>
													<p class="saved-message">You Can't Saved Your Payment
														Method yet.</p>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="address-edit" role="tabpanel">
												<div class="myaccount-content">
													<div class="modal fade" id="modal_shop" tabindex="-1"
														role="dialog" aria-labelledby="exampleModalLabel"
														aria-hidden="true">
														<div class="modal-dialog modal-lg" role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="exampleModalLabel">
																		商品<span id="action_info"></span>
																	</h5>
																	<button class="close" type="button"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																</div>
																<form id="form_shop_add_edit">
																	<div class="modal-body">
																		<div class="form-group row">
																			<label class="col-sm-2 col-form-label">姓名</label>
																			<div class="col-sm-7">
																				<input type="text" class="form-control "
																					id="userName" name="userName">
																			</div>
																		</div>
																		<div class="form-group row">
																			<label class="col-sm-2 col-form-label">电话</label>
																			<div class="col-sm-7">
																				<textarea class="form-control" name="userPhone"
																					id="userPhone"></textarea>
																			</div>
																		</div>
																		<div class="form-group row">
																			<label class="col-sm-2 col-form-label">地址</label>
																			<div class="col-sm-7">
																				<textarea class="form-control " name="shopNo"
																					id="shopNo"></textarea>
																			</div>
																		</div>
																		<div class="form-group row">
																			<label class="col-sm-2 col-form-label">详细地址</label>
																			<div class="col-sm-7">
																				<textarea class="form-control " name="shopInfo"
																					id="shopInfo"></textarea>
																			</div>
																		</div>
																		<input type="hidden" name="rowId" id="rowId" />
																	</div>
																	<div class="modal-footer">
																		<button class="btn btn-asecondary" type="button"
																			data-dismiss="modal">取消</button>
																		<button class="btn btn-primary" type="button"
																			id="button_submit">提交</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
													<h5>Billing Address</h5>
													<div class="add_address">
														<span class="name">添加送货地址</span>
														<table cellpadding="0" cellspacing="0" width="100%">
															<tr>
																<td class="label_name">收货人：</td>
																<td><input name="" type="text" class="add_text"
																	style="width: 100px" /><i>*</i></td>
															</tr>
															<tr>
																<td class="label_name">所在地区：</td>
																<td>
																<select id="proCode" name= "proCode">
																<option>省</option>
																<c:if test="${!empty addresslist}">
																	<c:forEach items="${addresslist}" var="address">
																		<option value="${address.areaCode}">${address.areaName}</option>
																	</c:forEach>
																</c:if>
																</select>
																<select id="cityCode" name="cityCode">
																<option>市</option>
																</select>
																<select id="areaCode" name="areaCode">
																<option>区</option>
																</select>
																</td>
															</tr>
															<tr>
																<td class="label_name">街道地址：</td>
																<td><textarea name="" cols="" rows=""
																		style="width: 500px; height: 100px; margin: 5px 0px"></textarea><i>*</i></td>
															</tr>
															<tr>
																<td class="label_name">邮编：</td>
																<td><input name="" type="text" class="add_text"
																	style="width: 100px" /><i>*</i></td>
															</tr>
															<tr>
																<td class="label_name">手机：</td>
																<td><input name="" type="text" class="add_text"
																	style="width: 200px" /></td>
															</tr>
															<tr>
																<td class="label_name">固定电话：</td>
																<td><input name="" type="text" class="add_text"
																	style="width: 60px" placeholder="区号" />-<input name=""
																	type="text" class="add_text" style="width: 100px"
																	placeholder="电话号码" />-<input name="" type="text"
																	class="add_text" style="width: 60px" placeholder="分机号" />&nbsp;&nbsp;(选填)</td>
															</tr>
															<tr class="moren_dz" style="color: #999">
																<td class="label_name"></td>
																<td><label><input name="" type="checkbox"
																		value="" />设置为默认地址</label></td>
															</tr>
															<tr>
															</tr>
														</table>
													</div>
													<a href="#" class="btn btn-sqr"><i class="fa fa-edit"></i>
														Edit Address</a>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="account-info" role="tabpanel">
												<div class="myaccount-content">
													<h5>
														<a>Account Details</a>
													</h5>
													<div class="account-details-form">
														<form id="UserUpdate">
															<div class="row">
																<div class="col-lg-6">
																	<div class="single-input-item">
																		<label for="first-name" class="required">userName</label>
																		<input type="text" id="userName" name="userName"
																			value="${user.userName}" />
																	</div>
																</div>
															</div>
															<div class="single-input-item">
																<label for="display-name" class="required"
																	id="userPhone">userPhone</label> <input type="text"
																	id="userPhone" name="userPhone"
																	value="${user.userPhone }" />
															</div>
															<fieldset>
																<legend>Password change</legend>
																<div class="single-input-item">
																	<label for="current-pwd" class="required" id="userPass">userPass</label>
																	<input type="password" id="userPass" name="userPass" />
																</div>
																<input type="text" id="rowId" name="rowId"
																	value="${user.rowId }">
															</fieldset>
															<div class="single-input-item">
																<input type="button" id="button_change"
																	class="btn btn-sqr" value="save Change"></input>
																<%-- <input type="button" href="javascript:doupdate(${user.rowId });" value ="change"> --%>
															</div>
														</form>
													</div>
												</div>
											</div>
											<!-- Single Tab Content End -->
										</div>
									</div>
									<!-- My Account Tab Content End -->
								</div>
							</div>
							<!-- My Account Page End -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- my account wrapper end -->
	</main>

	<!-- Scroll to top start -->
	<div class="scroll-top not-visible">
		<i class="fa fa-angle-up"></i>
	</div>
	<!-- Scroll to Top End -->

	<!-- footer area start -->
	<%@include file="/footer.jsp"%>
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
										<img src="assets/img/product/product-details-img1.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img2.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img3.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img4.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img5.jpg"
											alt="product-details" />
									</div>
								</div>
								<div class="pro-nav slick-row-10 slick-arrow-style">
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img1.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img2.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img3.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img4.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img5.jpg"
											alt="product-details" />
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
										<span><i class="fa fa-star-o"></i></span> <span><i
											class="fa fa-star-o"></i></span> <span><i
											class="fa fa-star-o"></i></span> <span><i
											class="fa fa-star-o"></i></span> <span><i
											class="fa fa-star-o"></i></span>
										<div class="pro-review">
											<span>1 Reviews</span>
										</div>
									</div>
									<div class="price-box">
										<span class="price-regular">$70.00</span> <span
											class="price-old"><del>$90.00</del></span>
									</div>
									<h5 class="offer-text">
										<strong>Hurry up</strong>! offer ends in:
									</h5>
									<div class="product-countdown" data-countdown="2019/09/20"></div>
									<div class="availability">
										<i class="fa fa-check-circle"></i> <span>200 in stock</span>
									</div>
									<p class="pro-desc">Lorem ipsum dolor sit amet, consetetur
										sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut
										labore et dolore magna.</p>
									<div class="quantity-cart-box d-flex align-items-center">
										<h6 class="option-title">qty:</h6>
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="1">
											</div>
										</div>
										<div class="action_link">
											<a class="btn btn-cart2" href="#">Add to cart</a>
										</div>
									</div>
									<div class="useful-links">
										<a href="#" data-toggle="tooltip" title="Compare"><i
											class="pe-7s-refresh-2"></i>compare</a> <a href="#"
											data-toggle="tooltip" title="Wishlist"><i
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
					</div>
					<!-- product details inner end -->
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
									<a href="product-details.jsp"> <img
										src="assets/img/cart/cart-1.jpg" alt="product">
									</a>
								</div>
								<div class="minicart-content">
									<h3 class="product-name">
										<a href="product-details.jsp">Dozen White Botanical Linen
											Dinner Napkins</a>
									</h3>
									<p>
										<span class="cart-quantity">1 <strong>&times;</strong></span>
										<span class="cart-price">$100.00</span>
									</p>
								</div>
								<button class="minicart-remove">
									<i class="pe-7s-close"></i>
								</button>
							</li>
							<li class="minicart-item">
								<div class="minicart-thumb">
									<a href="product-details.jsp"> <img
										src="assets/img/cart/cart-2.jpg" alt="product">
									</a>
								</div>
								<div class="minicart-content">
									<h3 class="product-name">
										<a href="product-details.jsp">Dozen White Botanical Linen
											Dinner Napkins</a>
									</h3>
									<p>
										<span class="cart-quantity">1 <strong>&times;</strong></span>
										<span class="cart-price">$80.00</span>
									</p>
								</div>
								<button class="minicart-remove">
									<i class="pe-7s-close"></i>
								</button>
							</li>
						</ul>
					</div>

					<div class="minicart-pricing-box">
						<ul>
							<li><span>sub-total</span> <span><strong>$300.00</strong></span>
							</li>
							<li><span>Eco Tax (-2.00)</span> <span><strong>$10.00</strong></span>
							</li>
							<li><span>VAT (20%)</span> <span><strong>$60.00</strong></span>
							</li>
							<li class="total"><span>total</span> <span><strong>$370.00</strong></span>
							</li>
						</ul>
					</div>

					<div class="minicart-button">
						<a href="cart.jsp"><i class="fa fa-shopping-cart"></i> View
							Cart</a> <a href="cart.jsp"><i class="fa fa-share"></i> Checkout</a>
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
	<script
		src="http://ditu.google.cn/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
	<!-- google map active js -->
	<script src="assets/js/plugins/google-map.js"></script>
	<!-- Main JS -->
	<script src="assets/js/main.js"></script>
	

</body>
<script src="assets/pages/Market_User.js"></script>
<script src="assets/pages/Market_Address.js"></script>
<script type="text/javascript" src="assert\vendor\jquery\jquery.min.js"></script>
</html>
