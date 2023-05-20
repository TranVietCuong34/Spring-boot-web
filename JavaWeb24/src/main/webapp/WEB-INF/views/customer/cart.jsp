<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<link rel="stylesheet" href="${base}/css/cart.css">
<title>Cart</title>

</head>

<body>
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	<div class="content-cart">
		<span>Giỏ Hàng</span>
		<div class="list-title">
			<ul class="title">
				<li class="col-6 ">
					<p style="text-align: center;">Sản phẩm</p>
				</li>
				<li class="col-2 ">
					<p>Giá</p>
				</li>
				<li class="col-2 ">
					<p>Số lượng</p>
				</li>
				<li class="col-2 ">
					<p>Thao Tác</p>
				</li>
			</ul>
			<c:forEach items="${cart.cartItems}" var="ci">

				<ul class="list-item">
					<li class="col-6">
						<div class="list-item-img">
							<img src="${base }/upload/${ci.avatar}" alt="">
						</div>
						<div class="info-item">
							<p>${ci.productName}</p>
						</div>

					</li>
					<li class="col-2 ">
						<p class="price">${ci.priceUnit}</p>
					</li>
					<li class="col-2 ">
						<input type="number" value="${ci.quanlity}"> 
					</li>
					<li class="col-2 ">
						<button>
							<a href="">Xóa</a>
						</button>
					</li>
				</ul>
			</c:forEach>
			<!-- form cho việc thanh toán -->
			 <form action="" method="post">
			
				<div class="row py-5 p-4 bg-white rounded shadow-sm">
					<div class="col-lg-6">
						<!-- <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
						<div class="p-4">
							<p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
							<div class="input-group mb-4 border rounded-pill p-2">
								<input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0">
								<div class="input-group-append border-0">
									<button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill">
										<i class="fa fa-gift mr-2"></i>Apply coupon
									</button>
								</div>
							</div>
						</div> -->
						<div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thông tin khách hàng</div>
						<div class="p-4">
						
							<c:choose>
								<c:when test="${isLogined }">
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Họ và tên khách hàng</label>
										<input type="text" class="form-control" id="customerFullName" name="customerFullName" value="${userLogined.username }" placeholder="Full name">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerEmail">Địa chỉ Email</label>
										<input type="email" class="form-control" id="customerEmail" name="customerEmail" value="${userLogined.email }" placeholder="Enter email">
										<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Phone</label>
										<input type="tel" class="form-control" id="customerPhone" name="customerPhone" placeholder="Phone">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerAddress">Địa chỉ giao hàng</label>
										<input type="text" class="form-control" id="customerAddress" name="customerAddress" placeholder="Address">
									</div>
								</c:when>
								<c:otherwise>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Họ và tên khách hàng</label>
										<input type="text" class="form-control" id="customerFullName" name="customerFullName" placeholder="Full name">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerEmail">Địa chỉ Email</label>
										<input type="email" class="form-control" id="customerEmail" name="customerEmail" placeholder="Enter email">
										<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerPhone">Phone</label>
										<input type="tel" class="form-control" id="customerPhone" name="customerPhone" placeholder="Phone">
									</div>
									<div class="form-group" style="margin-bottom: 5px;">
										<label for="customerAddress">Địa chỉ giao hàng</label>
										<input type="text" class="form-control" id="customerAddress" name="customerAddress" placeholder="Address">
									</div>
								</c:otherwise>
							</c:choose>
							
							
						</div>
					</div>
					<div class="col-lg-6">
						<div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thông tin thanh toán</div>
						<div class="p-4">
							<p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p>
							<ul class="list-unstyled mb-4">
								<li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong>${cart.totalPrice }</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping and handling</strong><strong>$0.00</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tax</strong><strong>$0.00</strong></li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong> <h5 class="font-weight-bold totalPrice">${cart.totalPrice}</h5></li>
							</ul>
							<button type="submit" class="btn btn-dark rounded-pill py-2 btn-block">Procceed to checkout</button>
						</div>
					</div>
				</div>

			</form> 

			<div class="btn">
				<button>Tiếp tục mua hàng</button>
				<button>Tiến hành thanh toán</button>

			</div>


		</div>
	</div>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>

</html>