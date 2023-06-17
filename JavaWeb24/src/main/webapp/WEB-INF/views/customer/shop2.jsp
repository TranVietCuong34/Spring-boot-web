<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<link rel="stylesheet" href="${base}/css/shop.css">
<title>Shop</title>
</head>

<body>
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	<div class="content">
		<div class="content-left">
			<div class="header-content-left">
				<ul>
					<li><a href="">Tất cả sản phẩm</a></li>
					<form method="GET" action="${base}/shop" name="form">
						<li><span>Sắp xếp: 
						<select name="sort_By">
									<option value="priceSale" ><a href="">Mặc định</a>
									</option>
									<option value="title"><a href="">Tên Sản Phẩm</a>
									</option>
									<option value="priceSale"><a href="">Giá</a>
									</option>

							</select> 
							<select name="sort_direction" onchange="document.form.submit()" >
									<option value="asc" ${sortDirection == 'asc' ? 'selected' : ''}><a href="">Mặc Định</a>
									</option>
									<option value="asc" ${sortDirection == 'asc' ? 'selected' : ''}><a href="">Tăng Dần</a>
									</option>
									<option value="desc" ${sortDirection == 'desc' ? 'selected' : ''}><a href="">Giảm Dần </a>
									</option>

							</select>
						</span>
					</form>
				</ul>
			</div>
			<div class="product">
				<ul>
					<c:forEach items="${products}" var="product"
						varStatus="loop">
						<c:if test="${product.status == true}">
							<li>
								<div class="item">
									<div class="img">
										<a href=""> <img src="${base }/upload/${product.avatar}"
											alt="" width="150" height="200">
										</a>
										<div class="icon-product">
											<a href=""><i
												class="fa-sharp fa-solid fa-magnifying-glass"></i></a> <a
												href=""><i class="fa-solid fa-cart-shopping"></i></a>

										</div>
									</div>
									<div class="div-info">
										<div class="div-info-title">
											<p>${product.categories.name}</p>
											<a onclick="kichChiTiet(${product.id})">${product.title}</a>
										</div>

										<div class="price">
											<fmt:setLocale value="vi_VN" scope="session" />


											<span class="price-discount"> <fmt:formatNumber
													value="${product.price}" type="currency" />
											</span> <span class="price-no-discount"> <fmt:formatNumber
													value="${product.priceSale}" type="currency" />
											</span>
										</div>
									</div>
								</div>
							</li>
						</c:if>

					</c:forEach>

				</ul>
			</div>
		</div>
		<div class="content-right">
			<div class="header-content-right">
				<div class="title">
					<p>Tìm theo</p>
				</div>
			</div>
			<div class="price">
				<p>Khoảng giá</p>
				<ul>
					<li><input type="checkbox" value=""> <span>Giá
							dưới 100.000đ</span></li>
					<li><input type="checkbox" value=""> <span>100.000đ
							- 200.000đ</span></li>
					<li><input type="checkbox" value=""> <span>
							200.000đ - 300.000đ</span></li>
					<li><input type="checkbox" value=""> <span>400.000đ
							- 500.000đ</span></li>
					<li><input type="checkbox" value=""> <span>500.000đ
							- 1.000.000đ</span></li>
					<li><input type="checkbox" value=""> <span>Giá
							tăng 1.000.000đ</span></li>






				</ul>
			</div>
			<div class="brand">
				<p>Thương hiệu</p>
				<ul>
					<li><input type="checkbox" value=""> <span>Acer</span>
					</li>
					<li><input type="checkbox" value=""> <span>Apple</span>
					</li>
					<li><input type="checkbox" value=""> <span>Asus</span>
					</li>
					<li><input type="checkbox" value=""> <span>Aukey</span>
					</li>
					<li><input type="checkbox" value=""> <span>Awei</span>
					</li>
					<li><input type="checkbox" value=""> <span>Belkin</span>
					</li>
					<li><input type="checkbox" value=""> <span>
							Canon</span></li>
					<li><input type="checkbox" value=""> <span>
							Cliptec</span></li>
					<li><input type="checkbox" value=""> <span>
							Dell</span></li>
					<li><input type="checkbox" value=""> <span>
							Hola</span></li>
					<li><input type="checkbox" value=""> <span> HP</span>
					</li>
					<li><input type="checkbox" value=""> <span>
							Huawei</span></li>
					<li><input type="checkbox" value=""> <span>
							Iphone</span></li>
					<li><input type="checkbox" value=""> <span>
							Jelly</span></li>
					<li><input type="checkbox" value=""> <span>
							Kanen</span></li>
					<li><input type="checkbox" value=""> <span>
							Lenovo</span></li>
					<li><input type="checkbox" value=""> <span> LG</span>
					</li>
					<li><input type="checkbox" value=""> <span>Meephone</span>
					</li>
					<li><input type="checkbox" value=""> <span>Nokia</span>

					</li>
					<li><input type="checkbox" value=""> <span>
							Oppo</span></li>
					<li><input type="checkbox" value=""> <span>Orion</span>
					</li>
					<li><input type="checkbox" value=""> <span>Osmia</span>
					</li>
					<li><input type="checkbox" value=""> <span>Samsung</span>
					</li>
					<li><input type="checkbox" value=""> <span>Sandisk</span>
					</li>
					<li><input type="checkbox" value=""> <span>Segsi</span>
					</li>
					<li><input type="checkbox" value=""> <span>
							Sony</span></li>
					<li><input type="checkbox" value=""> <span>Toshiba</span>
					</li>
					<li><input type="checkbox" value=""> <span>Xiaomi</span>
					</li>
				</ul>
			</div>
			<div class="color">
				<p>Màu sắc</p>
				<ul>
					<li><input type="checkbox" value=""> <span>Vàng</span>

					</li>
					<li><input type="checkbox" value=""> <span> Tím</span>

					</li>
					<li><input type="checkbox" value=""> <span>
							Đỏ</span></li>
					<li><input type="checkbox" value=""> <span>
							Xanh</span></li>
					<li><input type="checkbox" value=""> <span>
							Xanh</span></li>
					<li><input type="checkbox" value=""> <span> Cam</span>
					</li>






				</ul>
			</div>
			<div class="img-banner">
				<a href=""> <img src="img/img-banner-shop.jpg" alt="">
				</a>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	<script type="text/javascript">
	
	</script>
</body>
</html>