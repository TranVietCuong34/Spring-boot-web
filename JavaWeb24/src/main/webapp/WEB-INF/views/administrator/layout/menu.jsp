<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="${base}/admin/home" class="brand"> <i
			class='bx bxs-smile'></i> <span class="text">Admin</span>
		</a>
		<ul class="side-menu top">
			<li class="active"><a href="${base}/admin/manager/home"> <i
					class='bx bxs-dashboard'></i> <span class="text">Quản lý</span>
			</a></li>
			<li><a href="${base}/admin/product/list"> <i
					class='bx bxs-shopping-bag-alt'></i> <span class="text">Quản
						Lý hàng</span>
			</a></li>
			<li><a href="${base}/admin/manager/categories"> <i
					class='bx bxs-doughnut-chart'></i> <span class="text">Quản
						Lý Danh Mục</span>
			</a></li>
			<li><a href="${base}/admin/manager/saleOrder"> <i
					class='bx bxs-message-dots'></i> <span class="text">Quản Lý
						Khách Hàng </span>
			</a></li>

		</ul>
		<ul class="side-menu">
			<li><a href="#"> <i class='bx bxs-cog'></i> <span
					class="text">Settings</span>
			</a></li>
			<li><a href="${base}/logout" class="logout"> <i
					class='bx bxs-log-out-circle'></i>
					<span class="text">Logout</span>
			</a></li>
		</ul>
	</section>
	<!-- SIDEBAR -->