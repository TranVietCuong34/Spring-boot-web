<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
    <jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>
    

	<title>AdminHub</title>
</head>

<body>


	
	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="${base}/admin/manager/home" class="brand">
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
				<img src="">
			</a>
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>

			<div class="table-data">
				<div class="order">
					<sf:form method="post" action="${base}/admin/add-product/saveOrUpdate" class="form-add" style="display:block"  modelAttribute="product" enctype="multipart/form-data">
						<h1>Thêm/Sửa Sản Phẩm</h1>		
						<div class="contentform">
							<div class="leftcontact">
								<div class="form-group">
									<p>Product Id<span>*</span></p>
									<sf:input path="id" type="text" name="nom" id="title" />
								</div>
								<div class="form-group mb-2">
									<p>Category<span>*</span></p>
										<sf:select path="categories.id" class="form-control" id="category" style= "border-radius: 0px 5px 5px 0px; border: 1px solid #eee;margin-bottom: 15px;width: 100%;height: 40px;float: left;padding: 0px 15px;">
											<sf:options items="${categories }" itemValue="id" itemLabel="name" />									
										</sf:select>
								</div>
								<div class="form-group">
									<p>Title<span>*</span></p>
									<sf:input path="title" type="text" name="nom" id="title" />
								</div>
								<div class="form-group">
									<p>Price<span>*</span></p>
									<sf:input path="price" type="text" name="nom" id="price" />
								</div>
								<div class="form-group">
									<p>Price Sale<span>*</span></p>
									<sf:input path="priceSale" type="text" name="nom" id="price_sale" />
								</div>
								<div class="form-group">
									<p>Description<span>*</span></p>
									<sf:input path="shortDes" type="text" name="nom" id="short_description"/>									
								</div>
								<div class="form-group">
									<p>Details<span>*</span></p>
									<sf:textarea  path="details" class="form-control" id="detail_description" ></sf:textarea>	
								</div>							
								<div class="form-group">
									<p>Avatar<span>*</span></p>
									<input type="file" id="fileProductAvatar" name="productAvatar" class="form-control">
								</div>
								<div class="form-group">
									<img alt="" src="${base}/upload/${product.avatar}" style= "width:150px; height:150px">
								</div>
								<div class="form-group">
									<p>Picture<span>*</span></p>
									<input type="file" id="fileProductPictures" name="productPictures" class="form-control" multiple="multiple">
								</div>
								<div class="form-group">
								<c:forEach items="${product.productImages}" var="productImage">
									<img alt="" src="${base}/upload/${productImage.path}" style= "width:150px; height:150px">
								</c:forEach>
									
								</div>
							
							</div>										
						</div>
						<button type="submit" class="button-contact">Send</button>
			
					</sf:form>				
				</div>
			</div>
			
			
			
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->

	<jsp:include page="/WEB-INF/views/administrator/layout/js.jsp"></jsp:include>
	<script>
	$(document).ready(function() {
		$("#detail_description").summernote({
			height: 300
		});
	});
	</script>
</body>

</html>