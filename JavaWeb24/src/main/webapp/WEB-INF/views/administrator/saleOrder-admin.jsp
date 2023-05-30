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

		<jsp:include page="/WEB-INF/views/administrator/layout/menu.jsp"></jsp:include>

	<!-- CONTENT -->
	<section id="content">
		<jsp:include page="/WEB-INF/views/administrator/layout/nav.jsp"></jsp:include>
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