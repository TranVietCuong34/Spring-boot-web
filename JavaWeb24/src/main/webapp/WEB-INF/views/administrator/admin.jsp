<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>

	<title>AdminHub</title>
</head>

<body>


	
	<!-- SIDEBAR -->
	<jsp:include page="/WEB-INF/views/administrator/layout/menu.jsp"></jsp:include>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<jsp:include page="/WEB-INF/views/administrator/layout/nav.jsp"></jsp:include>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>

			<ul class="box-info">
				<li>
					<i class='bx bxs-calendar-check'></i>
					<span class="text">
						<h3>1020</h3>
						<p>New Order</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-group'></i>
					<span class="text">
						<h3>2834</h3>
						<p>Visitors</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-dollar-circle'></i>
					<span class="text">
						<h3>$2543</h3>
						<p>Total Sales</p>
					</span>
				</li>
			</ul>


			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Quản Lý Sản Phẩm</h3>
						<i class='bx bx-search'></i>
						<i class='bx bx-filter'></i>
					</div>
					<form action="${base}/admin/home/list" method="get">						
						<table>
							<thead>
								<tr>
									<th scope="col">STT</th>
									<th scope="col">Tên</th>
									<th scope="col">Giá</th>
									<th scope="col">Loại</th>
									<th scope="col">Trạng Thái</th>
									<th scope="col">Ảnh</th>
									<th scope="col">Thao tác</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${products}" var="product" varStatus="loop">
									<tr>
										<th scope="row" width="5%">${loop.index + 1}</th>

										<td>${product.title }</td>
										<td>
											<!-- định dạng tiền tệ  --> <fmt:setLocale value="vi_VN"
												scope="session" /> <fmt:formatNumber
												value="${product.price}" type="currency" />

										</td>
										<td>${product.categories.name }</td>
										<td><span id="_product_status_${product.id} }">
												<c:choose>
													<c:when test="${product.status }">
														<input type="checkbox" checked="checked" readonly="readonly">
													</c:when>
													<c:otherwise>
														<input type="checkbox" readonly="readonly">
													</c:otherwise>
												</c:choose>
											</span></td>
										<td><img src="${base }/upload/${product.avatar}"
											width="100" height="100"></td>
										<td>
											<button>
												<a href="${base}/admin/manager/add-product/${product.id}">Sửa</a>
											</button>
											<button>
												<a href="${base}/admin/manager/del-product/${product.id}">Xóa</a>
											</button>

											<button>
												<a href="">Chi Tiết</a>
											</button>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<!-- phân trang  -->
						<div class="row">
							<div style="display: flex; justify-content: center;margin-top:20px">
								<div id="paging"></div>
							</div>
						</div>
					</form>
					
				</div>
			</div>
			
			
			
			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Quản Lý Danh Mục</h3>
						<i class='bx bx-search'></i>
						<i class='bx bx-filter'></i>
					</div>
					<form action="${base}/admin/home/list" method="get">		
						<table>
						<thead>
							<tr>
								<th>STT</th>
								<th>Tên</th>
								<th>Trạng Thái</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody>
																								
								<c:forEach  items="${categories}"  var="category" varStatus="loop">
								<tr>	
										<th scope="row" width="5%">${loop.index + 1}</th>	
										<td>${category.name}</td>
										<td><span id="_product_status_${category.id} }"> <c:choose>
													<c:when test="${category.status }">
														<input type="checkbox" checked="checked"
															readonly="readonly">
													</c:when>
													<c:otherwise>
														<input type="checkbox" readonly="readonly">
													</c:otherwise>
												</c:choose>
										</span></td>
										<td>
											<button>
												<a href="${base}/admin/manager/add-product/${category.id}">Sửa</a>
											</button>
											<button><a href="">Xóa</a>  </button>
											<button><a href="">Chi Tiết</a></button>
										</td>	
										</tr>									
								</c:forEach>								
							
							
							
						</tbody>
					</table>
					</form>
					
					<!-- phân trang  -->
						<div class="row">
							<div style="display: flex; justify-content: center;margin-top:20px">
								<div id="paging"></div>
							</div>
						</div>
				</div>
			</div>
		<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Quản Lý Khách Hàng</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<form action="${base}/admin/home/list" method="get">		
					<table>
						<thead>
							<tr>
								<th>STT</th>
								<th>Họ Và Tên</th>
								<th>Địa Chỉ</th>
								<th>Số điện thoại</th>
								<th>Email</th>
								<th>Thao Tác</th>
							</tr>
						</thead>
						<tbody> 
																								
								<c:forEach items="${saleOrders}" var="saleOrder"  varStatus="loop">
									<tr>
										<th scope="row" width="5%">${loop.index + 1}</th>									
										<td>${saleOrder.customerName}</td>
										<td>${saleOrder.customerAddress}</td>
										<td>${saleOrder.customerPhone}</td>
										<td>${saleOrder.customerEmail}</td>
										
										
										<td>
											<button>
												<a href="${base}/admin/manager/add-product/${saleOrder.id}">Sửa</a>
											</button>
											<button><a href=""}">Xóa</a>  </button>
											<button>Chi tiết</button>
										</td>
									</tr>																																											
								</c:forEach>							
							
							
						</tbody>
					</table>
					</form>
					
				
				</div>
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->

	<jsp:include page="/WEB-INF/views/administrator/layout/js.jsp"></jsp:include>
	<script>
	
	
	</script>
</body>

</html>