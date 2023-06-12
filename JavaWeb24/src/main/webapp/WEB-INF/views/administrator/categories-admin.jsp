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



			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Quản Lý Danh Mục</h3>
					</div>
					<button
						style="float: right; margin-right: 100px; margin-bottom: 40px; padding: 5px;">
						<a href="${base}/admin/manager/add-category"> Thêm Danh Mục</a>
					</button>
					<form action="${base}/admin/manager/categories" method="get">
						<!-- tìm kiếm sản phẩm trên danh sách -->
						<div class="d-flex flex-row justify-content-between mt-4">
							<div class="d-flex flex-row" style="margin: 20px 0">
								<input id="page" name="page" class="form-control"
									value="${searchModel.page}"style="display:none;">



								<!-- tìm kiếm theo danh mục sản phẩm -->
								<select class="form-control" name="categoryId" id="categoryId"
									style="margin-right: 5px; padding: 5px">
									<option value="0">All</option>
									<c:forEach items="${categories}" var="category">
										<option value="${category.id }">${category.name }</option>
									</c:forEach>
								</select>

								<button style="padding: 5px 11px;" type="submit" id="btnSearch"
									name="btnSearch" value="Search" class="btn btn-primary">Search</button>
							</div>
							<form action="" modelAttribute="product" method="post">
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

										<c:forEach items="${listCategories.data}" var="category"
											varStatus="loop">
											<tr>
												<th scope="row" width="5%">${loop.index + 1}</th>
												<td>${category.name}</td>
												<td><span id="_product_status_${category.id} }">
														<c:choose>
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
														<a href="${base}/admin/manager/edit/${category.id}">Sửa</a>
													</button>
													<button>
														<a href="" onclick="Xoa(${category.id})">Xóa</a>

													</button>

												</td>
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
					</form>
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
					currentPage: ${listCategories.currentPage}, 	//trang hiện tại
			        items: ${listCategories.totalItems},			//tổng số sản phẩm
			        itemsOnPage: ${listCategories.sizeOfPage}, 	//số sản phẩm trên 1 trang
			        cssStyle: 'light-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
		function  Xoa(idXoa) {
			var data = {
					id: idXoa,
					name: "",
					description: "",
					seo: "",		
			};
			jQuery.ajax({
				url: "/admin/delete-category",
				type: "post",
				contentType: "application/json",
				data: JSON.stringify(data),
				dataType: "json",
				success: function(jsonResult) {
					alert(jsonResult.message);
					window.location = "/admin/manager/categories";
				},
				error: function(jqXhr, textStatus, errorMessage) {
					alert("error");
				}
			});
		}
	</script>
</body>

</html>