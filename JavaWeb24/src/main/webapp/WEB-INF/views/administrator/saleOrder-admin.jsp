<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
     <link rel="stylesheet" href="${base}/css/admin.css">

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
				<a href="${base}/admin/home">
					<i class='bx bxs-dashboard'></i>
					<span class="text">Quản lý</span>
				</a>
			</li>
			<li>
				<a href="${base}/admin/manage/product">
					<i class='bx bxs-shopping-bag-alt'></i>
					<span class="text">Quản Lý hàng</span>
				</a>
			</li>
			<li>
				<a href="${base}/admin/categories">
					<i class='bx bxs-doughnut-chart'></i>
					<span class="text">Quản Lý Danh Mục</span>
				</a>
			</li>
			<li>
				<a href="${base}/admin/saleOrder">
					<i class='bx bxs-message-dots'></i>
					<span class="text">Quản Lý Khách Hàng </span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bxs-group'></i>
					<span class="text">Quản Lý Hóa Đơn</span>
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
				<img src="../img/avata-admin.jpg">
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
																								
								<c:forEach var="saleOrder" items="${saleOrders}">
									<tr>
										<td>${saleOrder.id}</td>									
										<td>${saleOrder.customerName}</td>
										<td>${saleOrder.customerAddress}</td>
										<td>${saleOrder.customerPhone}</td>
										<td>${saleOrder.customerEmail}</td>
										
										
										<td>
											<button>Sửa</button>
											<button>Xóa</button>
											<button>Chi tiết</button>
										</td>
									</tr>																																											
								</c:forEach>							
							
							
						</tbody>
					</table>
				</div>
			</div>
			
			
			
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->


	<script>
		const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

allSideMenu.forEach(item=> {
	const li = item.parentElement;

	item.addEventListener('click', function () {
		allSideMenu.forEach(i=> {
			i.parentElement.classList.remove('active');
		})
		li.classList.add('active');
	})
});




// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function () {
	sidebar.classList.toggle('hide');
})







const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function (e) {
	if(window.innerWidth < 576) {
		e.preventDefault();
		searchForm.classList.toggle('show');
		if(searchForm.classList.contains('show')) {
			searchButtonIcon.classList.replace('bx-search', 'bx-x');
		} else {
			searchButtonIcon.classList.replace('bx-x', 'bx-search');
		}
	}
})





if(window.innerWidth < 768) {
	sidebar.classList.add('hide');
} else if(window.innerWidth > 576) {
	searchButtonIcon.classList.replace('bx-x', 'bx-search');
	searchForm.classList.remove('show');
}


window.addEventListener('resize', function () {
	if(this.innerWidth > 576) {
		searchButtonIcon.classList.replace('bx-x', 'bx-search');
		searchForm.classList.remove('show');
	}
})



const switchMode = document.getElementById('switch-mode');

switchMode.addEventListener('change', function () {
	if(this.checked) {
		document.body.classList.add('dark');
	} else {
		document.body.classList.remove('dark');
	}
})
	</script>
</body>

</html>