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
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'
	rel='stylesheet'>
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
						<i class='bx bx-search'></i> <i class='bx bx-filter'></i>
					</div>
					<form action="${base}/admin/manager/saleOrder" method="get">
						<!-- tìm kiếm sản phẩm trên danh sách -->
						<div class="d-flex flex-row justify-content-between mt-4">
							<div class="d-flex flex-row" style="margin: 20px 0">
								<input id="page" name="page" class="form-control"
									value="${searchModel.page}" style="display:none;">
								<!-- tìm kiếm theo tên sản phẩm -->
								<input type="text" id="keyword" name="keyword"
									class="form-control" placeholder="Search" autocomplete="off"
									style="margin-right: 5px; padding: 5px"
									value="${searchModel.keyword}">


								<button style="padding: 5px 11px;" type="submit" id="btnSearch"
									name="btnSearch" value="Search" class="btn btn-primary">Search</button>
							</div>
							<table>
								<thead>
									<tr>
										<th>STT</th>
										<th>Họ Và Tên</th>
										<th>Địa Chỉ</th>
										<th>Số điện thoại</th>
										<th>Email</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${listSaleOrders.data}" var="saleOrder"
										varStatus="loop">
										<tr>
											<th scope="row" width="5%">${loop.index + 1}</th>
											<td>${saleOrder.customerName}</td>
											<td>${saleOrder.customerAddress}</td>
											<td>${saleOrder.customerPhone}</td>
											<td>${saleOrder.customerEmail}</td>
										</tr>
									</c:forEach>


								</tbody>
							</table>
					</form>

					<!-- phân trang  -->
					<div class="row">
						<div
							style="display: flex; justify-content: center; margin-top: 20px">
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
			$("#keyword").val(${searchModel.keyword});
			
				$("#paging").pagination({
					currentPage: ${listSaleOrders.currentPage}, 	//trang hiện tại
			        items: ${listSaleOrders.totalItems},			//tổng số sản phẩm
			        itemsOnPage: ${listSaleOrders.sizeOfPage}, 	//số sản phẩm trên 1 trang
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