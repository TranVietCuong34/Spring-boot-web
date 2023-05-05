<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
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
				<a href="${base}/admin/product">
					<i class='bx bxs-shopping-bag-alt'></i>
					<span class="text">Quản Lý hàng</span>
				</a>
			</li>
			<li>
				<a href="${base}/admin/categories">
					<i class='bx bxs-shopping-bag-alt'></i>
					<span class="text">Quản Lý Danh Mục</span>
				</a>
			</li>
			<li>
				<a href="${base}/admin/contact">
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
						<h3>Quản Lý Sản Phẩm</h3>
						<i class='bx bx-search'></i>
						<i class='bx bx-filter'></i>
					</div>
					
					<button class="add-product" onclick="nhan()">Thêm Sản Phẩm</button>
					<form action="" class="form-add" >
						<h1>Thêm Sản Phẩm
							<i class="fa-sharp fa-solid fa-rectangle-xmark close" onclick="dong()"></i>							
						</h1>
						
						<div class="contentform">
							<div class="leftcontact">
								<div class="form-group">
									<p>Tên Sản Phẩm<span>*</span></p>
									<input type="text" name="nom" id="title" />
								</div>
								<div class="form-group">
									<p>Giá<span>*</span></p>
									<input type="text" name="nom" id="price" />
								</div>
								<div class="form-group">
									<p>Giá Sale<span>*</span></p>
									<input type="text" name="nom" id="price_sale" />
								</div>
								<div class="form-group">
									<p>Mô Tả Ngắn<span>*</span></p>
									<input type="text" name="nom" id="short_description" />
								</div>
								<div class="form-group">
									<p>Mô Tả Chi Tiết<span>*</span></p>
									<input type="text" name="nom" id="detail_description" />
								</div>
								<div class="form-group">
									<p>Ảnh<span>*</span></p>
									<input type="file" name="nom" id="avatar" />
								</div>
								<div class="form-group">
									<p>Seo<span>*</span></p>
									<input type="text" name="nom" id="seo" />
								</div>
								<div class="form-group">
									<p>Xu hướng<span>*</span></p>
									<input type="text" name="nom" id="is_hot" />
								</div>
							
							</div>										
						</div>
						<button type="submit" class="button-contact">Send</button>
			
					</form>
					<table>
						<thead>
							<tr>																	
								
								<th>STT</th>
								<th>Tên Sản Phẩm</th>
								<th>Giá</th>
								<th>Giá Sale</th>
								<th>Mô tả </th>
								<th>Ảnh</th>
								<th>Xu Hướng</th>
								<th>Thao tác</th>
							</tr>			
							</tr>
						</thead>
						<tbody>
							<tr>																	
								<c:forEach var="product" items="${products}">
										<td>${product.id}</td>									
										<td>${product.title}</td>
										<td>${product.price}</td>
										<td>${product.price_sale}</td>
										<td>${product.short_description}</td>
										<td>${product.avatar}</td>
										<td>${product.is_hot}</td>
										<td>
											<button>Sửa</button>
											<button>Xóa</button>
											<button>Chi tiết</button>
										</td>																																											
								</c:forEach>							
							</tr>
							
							
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
function nhan(){
			
			document.querySelector('.form-add').style.display ='block';
		}
		function dong(){
			
			document.querySelector('.form-add').style.display ='none';
		}
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