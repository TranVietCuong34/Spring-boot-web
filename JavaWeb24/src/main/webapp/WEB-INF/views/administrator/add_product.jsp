<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<!-- Boxicons -->
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'
	rel='stylesheet'>
<!-- My CSS -->
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">


<title>AdminHub</title>
</head>

<body>



	<jsp:include page="/WEB-INF/views/administrator/layout/menu.jsp"></jsp:include>



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<jsp:include page="/WEB-INF/views/administrator/layout/nav.jsp"></jsp:include>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>

			<div class="table-data">
				<div class="order">
					<sf:form method="post"
						action="${base}/admin/add-product/saveOrUpdate"
						class="form-add add-post"
						style="display:block; position: relative;"
						modelAttribute="product" enctype="multipart/form-data">
						<a href="${base}/admin/product/list"
							style="position: absolute; right: 0; z-index: 1; top: -4px;"><i
							class="fa-solid fa-rectangle-xmark" style="font-size: 25px;     color: white;"></i></a>
						<h1>Thêm/Sửa Sản Phẩm</h1>

						<div class="contentform">
							<div class="leftcontact">
								<div class="form-group">
									<p>
										Product Id<span>*</span>
									</p>
									<sf:input path="id" type="text" name="nom" id="title" />
								</div>
								<div class="form-group mb-2">
									<p>
										Category<span>*</span>
									</p>
									<sf:select path="categories.id" class="form-control"
										id="category"
										style="border-radius: 0px 5px 5px 0px; border: 1px solid #eee;margin-bottom: 15px;width: 100%;height: 40px;float: left;padding: 0px 15px;">
										<sf:options items="${categories }" itemValue="id"
											itemLabel="name" />
									</sf:select>
								</div>
								<div class="form-group">
									<p>
										Title<span>*</span>
									</p>
									<sf:input path="title" type="text" name="nom" id="title" />
								</div>
								<div class="form-group">
									<p>
										Price<span>*</span>
									</p>
									<sf:input path="price" type="text" name="nom" id="price" />
								</div>
								<div class="form-group">
									<p>
										Price Sale<span>*</span>
									</p>
									<sf:input path="priceSale" type="text" name="nom"
										id="price_sale" />
								</div>
								<div class="form-group">
									<p>
										Description<span>*</span>
									</p>
									<sf:input path="shortDes" type="text" name="nom"
										id="short_description" />
								</div>
								<div class="form-group">
									<p>
										Details<span>*</span>
									</p>
									<sf:textarea path="details" class="form-control"
										id="detail_description"></sf:textarea>
								</div>
								<div class="form-group">
									<p>
										Avatar<span>*</span>
									</p>

									<input type="file" id="fileProductAvatar" name="productAvatar"
										class="form-control">


								</div>

								<c:if test="${product.id != null}">
									<div class="form-group">
										<img alt="" src="${base}/upload/${product.avatar}"
											style="width: 150px; height: 150px">
									</div>
								</c:if>

								<div class="form-group">
									<p>
										Picture<span>*</span>
									</p>
									<input type="file" id="fileProductPictures"
										name="productPictures" class="form-control"
										multiple="multiple">
								</div>
								<div class="form-group">
									<c:forEach items="${product.productImages}" var="productImage">
										<img alt="" src="${base}/upload/${productImage.path}"
											style="width: 150px; height: 150px">
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
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
	<script>
		$('#detail_description').summernote(
				{
					placeholder : 'Viết mô tả',
					tabsize : 2,
					height : 120,
					toolbar : [ [ 'style', [ 'style' ] ],
							[ 'font', [ 'bold', 'underline', 'clear' ] ],
							[ 'color', [ 'color' ] ],
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							[ 'table', [ 'table' ] ],
							[ 'insert', [ 'link', 'picture', 'video' ] ],
							[ 'view', [ 'fullscreen', 'codeview', 'help' ] ] ]
				});
	</script>
</body>

</html>