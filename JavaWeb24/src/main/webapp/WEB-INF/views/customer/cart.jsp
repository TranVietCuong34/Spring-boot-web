<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

						<p class="price">
							<fmt:setLocale value="vi_VN" scope="session" />
							<fmt:formatNumber value="${ci.priceUnit}" type="currency" />
						</p>
					</li>
					<li class="col-2 ">
						<button
							onclick="Giam('${base}', ${ci.productId }, '${ci.productId }')"
							style="padding: 0px 6px;">-</button> <span id="${ci.productId}">${ci.quanlity }</span>
						<button
							onclick="Tang('${base}', ${ci.productId }, '${ci.productId }')"
							style="padding: 0px 4px">+</button>

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

				<div class="row "
					style="display: flex; flex-wrap: wrap; margin-left: -4px; margin-right: -4px;">
					<div class="col-lg-6 " style="flex: 0 0 50%; max-width: 50%;">
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
						<div class="" style="margin: 50px 0; font-size: 25px;">Thông
							tin khách hàng</div>
						<div class="p-4">

							<c:choose>
								<c:when test="${isLogined }">
									<div class="form-group"
										style="margin-bottom: 15px; display: flex; flex-direction: column;">
										<label for="customerPhone" style="margin: 10px 0;">Họ
											và tên khách hàng</label> <input type="text" class="form-control"
											id="customerFullName" name="customerFullName"
											value="${userLogined.username }" placeholder="Full name"
											style="width: 70%; padding: 5px;">
									</div>
									<div class="form-group"
										style="margin-bottom: 15px; display: flex; flex-direction: column;">
										<label for="customerEmail" style="margin: 10px 0;">Địa
											chỉ Email</label> <input type="email" class="form-control"
											id="customerEmail" name="customerEmail"
											value="${userLogined.email }" placeholder="Enter email"
											style="width: 70%; padding: 5px;">
									</div>
									<div class="form-group"
										style="margin-bottom: 15px; display: flex; flex-direction: column;">
										<label for="customerPhone" style="margin: 10px 0;">Phone</label>
										<input type="tel" class="form-control" id="customerPhone"
											name="customerPhone" placeholder="Phone"
											style="width: 70%; padding: 5px;">
									</div>
									<div class="form-group"
										style="margin-bottom: 15px; display: flex; flex-direction: column;">
										<label for="customerAddress" style="margin: 10px 0;">Địa
											chỉ giao hàng</label> <input type="text" class="form-control"
											id="customerAddress" name="customerAddress"
											placeholder="Address" style="width: 70%; padding: 5px;">
									</div>
								</c:when>
								<c:otherwise>
									<div class="form-group"
										style="margin-bottom: 15px; display: flex; flex-direction: column;">
										<label for="customerPhone" style="margin: 10px 0;">Họ
											và tên khách hàng</label> <input type="text" class="form-control"
											id="customerFullName" name="customerFullName"
											placeholder="Full name" style="width: 70%; padding: 5px;">
									</div>
									<div class="form-group"
										style="margin-bottom: 15px; display: flex; flex-direction: column;">
										<label for="customerEmail" style="margin: 10px 0;">Địa
											chỉ Email</label> <input type="email" class="form-control"
											id="customerEmail" name="customerEmail"
											placeholder="Enter email" style="width: 70%; padding: 5px;">
									</div>
									<div class="form-group"
										style="margin-bottom: 15px; display: flex; flex-direction: column;">
										<label for="customerPhone" style="margin: 10px 0;">Phone</label>
										<input type="tel" class="form-control" id="customerPhone"
											name="customerPhone" placeholder="Phone"
											style="width: 70%; padding: 5px;">
									</div>
									<div class="form-group"
										style="margin-bottom: 15px; display: flex; flex-direction: column;">
										<label for="customerAddress" style="margin: 10px 0;">Địa
											chỉ giao hàng</label> <input type="text" class="form-control"
											id="customerAddress" name="customerAddress"
											placeholder="Address" style="width: 70%; padding: 5px;">
									</div>
								</c:otherwise>
							</c:choose>


						</div>
					</div>
					<div class="col-lg-6">
						<div
							class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold"
							style="margin: 50px 0; font-size: 25px;">Thông tin thanh
							toán</div>
						<div class="p-4">
							<ul class="list-unstyled mb-4"
								style="display: flex; flex-direction: column;">
								<li class="d-flex justify-content-between py-3 border-bottom">
									<strong class="text-muted">Thành Tiền </strong> <strong><fmt:setLocale
											value="vi_VN" scope="session" /> <fmt:formatNumber
											value="${cart.totalPrice}" type="currency" /> </strong>
								</li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Phí sip</strong><strong><fmt:setLocale
											value="vi_VN" scope="session" /> <fmt:formatNumber
											value="0" type="currency" /></strong></li>
							
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Tổng Tiền</strong>
									<strong class="text-muted">
									<fmt:setLocale
											value="vi_VN" scope="session" /> <fmt:formatNumber
											value="${cart.totalPrice}" type="currency" />
									
									</strong></li>
							</ul>
							<div class="btn">
								<button type="submit"
									class="btn btn-dark rounded-pill py-2 btn-block">Tiến
									Hành Thanh Toán</button>

							</div>
						</div>
					</div>
				</div>

			</form>



		</div>
	</div>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
	<script>
       /*  let amountElement = document.getElementById("amount");
        let amount  = amountElement.value;

        let render = (amount) =>{
                amountElement.value=amount;
        };
        let tang = () =>{
            amount++;
            render(amount);
        }
        let giam = () =>{
            if(amount>1)
                amount--;
                render(amount);
        }
        amountElement.addEventListener('input', ()=>{
            amount  = amountElement.value;
            amount = parseInt|(amount);
            amount = ((isNaN)(amount)||amount==0 ) ? 1 : amount;
            render(amount);
        }); */
    </script>
</body>

</html>