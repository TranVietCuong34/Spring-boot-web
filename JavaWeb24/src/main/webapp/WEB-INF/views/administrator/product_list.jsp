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
						<h3>Quản Lý Sản Phẩm</h3>
						<i class='bx bx-search'></i> <i class='bx bx-filter'></i>
					</div>
					<button class="add-product">
						<a href="${base }/admin/manager/add-product">Thêm Sản Phẩm</a>

					</button>
					<form action="${base}/admin/product/list" method="get">
						<!-- tìm kiếm sản phẩm trên danh sách -->
						<div class="d-flex flex-row justify-content-between mt-4">
							<div class="d-flex flex-row" style="margin: 20px 0">
								<input id="page" name="page" class="form-control"
									value="${searchModel.page}">

								<!-- tìm kiếm theo tên sản phẩm -->
								<input type="text" id="keyword" name="keyword"
									class="form-control" placeholder="Search" autocomplete="off"
									style="margin-right: 5px; padding: 5px"
									value="${searchModel.keyword}">

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
						</div>
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

								<c:forEach items="${products.data}" var="product"
									varStatus="loop">
									<tr>
										<th scope="row" width="5%">${loop.index + 1}</th>

										<td>${product.title }</td>
										<td>
											<!-- định dạng tiền tệ  --> <fmt:setLocale value="vi_VN"
												scope="session" /> <fmt:formatNumber
												value="${product.price}" type="currency" />

										</td>
										<td>${product.categories.name }</td>
										<td><span id="_product_status_${product.id} }"> <c:choose>
													<c:when test="${product.status }">
														<input type="checkbox" checked="checked"
															readonly="readonly">
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
												<%-- <a href="${base}/admin/manager/del-product/${product.id}">Xóa</a> --%>
												<a href="" onclick="XoaSanPham(${product.id})">Xóa</a>
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
							<div
								style="display: flex; justify-content: center; margin-top: 20px">
								<div id="paging"></div>
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
		function  XoaSanPham(idXoa) {
			var data = {
					id: idXoa,
					tenSanPham: "",
					soLuong: "",
					size: "",
					gia: "",
					formDang: "",
					thietKe: "",
					
			};
			jQuery.ajax({
				url: "/admin/xoa-san-pham",
				type: "post",
				contentType: "application/json",
				data: JSON.stringify(data),
				dataType: "json",
				success: function(jsonResult) {
					alert(jsonResult.message);
					window.location = "/admin/product/list";
				},
				error: function(jqXhr, textStatus, errorMessage) {
					alert("error");
				}
			});
		}
	
	</script>

</body>

</html>