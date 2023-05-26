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
	<section id="sidebar">
		<a href="${base}/admin/home" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">Admin</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="${base}/admin/manager/home">
					<i class='bx bxs-dashboard'></i>
					<span class="text">Quản lý</span>
				</a>
			</li>
			<li>
				<a href="${base}/admin/product/list">
					<i class='bx bxs-shopping-bag-alt'></i>
					<span class="text">Quản Lý hàng</span>
				</a>
			</li>
			<li>
				<a href="${base}/admin/manager/categories">
					<i class='bx bxs-doughnut-chart'></i>
					<span class="text">Quản Lý Danh Mục</span>
				</a>
			</li>
			<li>
				<a href="${base}/admin/manager/saleOrder">
					<i class='bx bxs-message-dots'></i>
					<span class="text">Quản Lý Khách Hàng </span>
				</a>
			</li>
		
		</ul>
		<ul class="side-menu">
			<li>
				<a href="#">
					<i class='bx bxs-cog'></i>
					<span class="text">Settings</span>
				</a>
			</li>
			<li>
				<a href="#" class="logout">
					<i class='bx bxs-log-out-circle'></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu'></i>
			<a href="#" class="nav-link">Categories</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search'></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell'></i>
				<span class="num">8</span>
			</a>
			<a href="#" class="profile">
				 <img src="${base}/img/avata-admin.jpg">
			</a>
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>



			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Quản Lý Khách Hàng</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<form action="${base}/admin/SaleOrder/list" method="get">		
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
																								
								<c:forEach items="${saleOrders.data}" var="saleOrder"  varStatus="loop">
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
					
					<!-- phân trang  -->
						<div class="row">
							<div style="display: flex; justify-content: center;margin-top:20px">
								<div id="paging"></div>
							</div>
						</div>
				</div>
			</div>
			
			
			
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->

	<jsp:include page="/WEB-INF/views/administrator/layout/js.jsp"></jsp:include>
	<script>
	/* phân trang  */	
		$( document ).ready(function() {
				// đặt giá trị của category ứng với điều kiện search trước đó
				$("#categoryId").val(${searchModel.categoreisId});
				
				$("#paging").pagination({
					currentPage: ${products.currentPage}, 	//trang hiện tại
			        items: ${products.totalItems},			//tổng số sản phẩm
			        itemsOnPage: ${products.sizeOfPage}, 	//số sản phẩm trên 1 trang
			        cssStyle: 'light-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
	
	</script>
</body>

</html>