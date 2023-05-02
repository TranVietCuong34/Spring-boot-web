<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<header>
	<div class="header-box1">
		<div class="news-header">
			<ul>
				<li><a href=""> <i class="fa-solid fa-book-bookmark"></i>Chính
						sách của Pelican Store
				</a></li>
				<li><a href="${base}/news"><i class="fa-regular fa-clock"></i>
						Tin khuyến mãi tháng 11 </a> <img src="img/icon-hot-top.png" alt="">
				</li>
			</ul>
		</div>
		<div class="news-header">
			<ul>
				<li>
					<%--  <a href="${base}/contact-us-spring-form"> <p>
						<img src="img/icon-speaker.jpg" alt="">
					</p>Gửi phản hồi về sản phẩm </a> --%>
					
					<a href="${base}/contact-us-ajax"> <p>
						<img src="img/icon-speaker.jpg" alt="">
					</p>Gửi phản hồi về sản phẩm </a>
				</li>
				<li><a href=""> <span><img
							src="img/icon-headphone.jpg" alt=""></span> Hotline: 19006750
				</a></li>
			</ul>
		</div>
	</div>
	<div class="header-box2">
		<div class="header-box2-item">
			<a href="${base}/home"><img src="img/logo.png" alt=""></a>

			<div class="menu">
				<h3>
					Danh mục sản phẩm
					<div class="list-menu">
						<ul>
							<li><a href=""> <img src="img/categories_icon_1.png"
									alt=""> Tất cả sản phẩm<i class="fa-solid fa-caret-right"></i>
									<ul class="sub-menu">
										<li><a href="">Điện thoại</a></li>
										<li><a href="">Tablet</a></li>
										<li><a href=""> Laptop</a></li>
										<li><a href="">Tivi</a></li>
										<li><a href="">Máy ảnh</a></li>
										<li><a href="">Phụ kiện</a></li>
									</ul>
							</a></li>
							<li><a href=""><img src="img/categories_icon_2.png"
									alt="">Sản phẩm mới</a></li>
							<li><a href=""> <img src="img/categories_icon_3.png"
									alt="">Sản phẩm nổi bật
							</a></li>
							<li><a href=""><img src="img/categories_icon_4.png"
									alt="">Sản phẩm khuyến mãi</a></li>
							<li><a href=""><img src="img/categories_icon_5.png"
									alt="">Máy likenew</a></li>
							<li><a href=""><img src="img/categories_icon_6.png"
									alt="">Máy cũ giá rẻ</a></li>
						</ul>
					</div>

				</h3>
				<span><i class="fa-solid fa-align-right"></i></span>
			</div>
			<div class="search-header">
				<input type="text" placeholder="Tìm kiếm sản phẩm..."> <input
					type="submit" name="" value="Tìm kiếm">

			</div>

			<div class="header-box2-right">
				<ul>
					<li class="acc"><i class="fa-regular fa-user"></i> <a
						href="${base}/login">Tài Khoản</a></li>
					<li><a href="${base}/cart"><i
							class="fa-sharp fa-solid fa-bag-shopping"></i></a></li>
				</ul>
			</div>

		</div>
	</div>

</header>