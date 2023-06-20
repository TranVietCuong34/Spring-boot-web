<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>plican.mysapo.net</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<link rel="stylesheet" href="${base}/css/home.css">
</head>

<body>
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	<nav>
		<div class="banner">
			<div class="banner-right">
				<a href=""> <img src="img/img1-banner-right.jpg" alt=""></a>

			</div>
			<div class="banner-left">
				<a href=""> <img src="img/banner_slide_img_1.jpg" alt=""></a>
				<a href=""> <img src="img/banner_slide_img_2.jpg" alt=""></a>



			</div>
		</div>
	</nav>
	<div class="content">
		<div class="menu-content-top">
			<a href="">Tất Cả Sản phẩm</a>
			<ul>
				<li><a href="${base}/home">Trang chủ</a></li>
				<li><a href="${base}/shop">Sản phẩm</a></li>
				<li><a href="${base}/news">Blog</a></li>

				<li><a href="${base}/contact">Liên Hệ</a></li>
			</ul>
		</div>
		<div class="product">


			<div class="list-1-product">
				<ul class="item-product hover">
					<li class="img-product col-4"><a href=""><img
							src="img/img1-product.jpg" alt=""></a></li>
					<c:forEach items="${products}" var="product" varStatus="loop">
					<c:if test="${product.status == true}">
						<li class="col-2">
							<div class="item">
								<div class="img">
									<a href=""> <img src="${base }/upload/${product.avatar}"
										alt="" width="150" height="200">
									</a>
									<div class="icon-product">
										<a href=""><i
											class="fa-sharp fa-solid fa-magnifying-glass"></i></a> 
											<a href="" onclick="AddToCart('${base}',${product.id},1)">
											 <i class="fa-solid fa-cart-shopping"></i>
										</a>
									</div>
								</div>
								<div class="div-info">
									<div class="div-info-title">
										<p>${product.categories.name}</p>
										<a  onclick="kichChiTiet(${product.id})" >${product.title}</a>
									</div>

									<div class="price">
										<fmt:setLocale value="vi_VN" scope="session" />


										<span class="price-discount"> 
										<fmt:formatNumber value="${product.price}" type="currency" />
										</span> 
										<span class="price-no-discount"> 
											<fmt:formatNumber value="${product.priceSale}" type="currency" />
										</span>
									</div>

								</div>
							</div>
						</li>
					</c:if>
	
					</c:forEach>
				</ul>
			</div>



			<div class="slide">
				<ul>
					<li><a href=""> <img src="img/img1-slide.jpg" alt="">
					</a></li>
					<li><a href=""> <img src="img/img2-slide.jpg" alt="">
					</a></li>
					<li><a href=""> <img src="img/img3-slide.jpg" alt="">
					</a></li>
					<li><a href=""> <img src="img/img4-slide.jpg" alt="">
					</a></li>
					<li><a href=""> <img src="img/img5-slide.jpg" alt="">
					</a></li>
					<li><a href=""> <img src="img/img6-slide.jpg" alt="">
					</a></li>

				</ul>
			</div>
		</div>

		


		<div class="img-product-3">
			<ul>
				<li><a href=""><img src="img/img-product-3.webp" alt=""></a></li>
			</ul>
		</div>
		<div class="support">
			<ul>
				<li><img src="img/img1-support.jpg" alt="">
					<div class="info">
						<p>Miễn phí vận chuyển</p>
						<span>Cho đơn hàng từ 500k</span>
					</div></li>
				<li><img src="img/img2-support.jpg" alt="">
					<div class="info">
						<p>Hoàn tiền</p>
						<span>Nếu có lỗi</span>
					</div></li>
				<li><img src="img/img3-support.jpg" alt="">
					<div class="info">
						<p>Hỗ trợ thân thiện</p>
						<span>Hỗ trợ 24/7</span>
					</div></li>
				<li><img src="img/img4-support.jpg" alt="">
					<div class="info">
						<p>Thanh toán</p>
						<span>Bảo mật thanh toán</span>
					</div></li>
			</ul>
		</div>


	</div>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
	<script type="text/javascript">
		function kichChiTiet(id) {
			window.location = '/productDatail?idSanPham=' + id;
		}
	
	</script>
</body>

</html>