<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<header>
	<div class="header-box1">
		<div class="news-header">
			<ul>
				<li><a href=""> <i class="fa-solid fa-book-bookmark"></i>Chính
						sách của Pelican Store
				</a></li>
				<li><a href="${base}/news"><i class="fa-regular fa-clock"></i>
						Tin khuyến mãi tháng 11 </a> <img src="${base}/img/icon-hot-top.png"
					alt=""></li>
			</ul>
		</div>
		<div class="news-header">
			<ul>
				<li><a href="${base}/contact">
						<p>
							<img src="${base}/img/icon-speaker.jpg" alt="">
						</p>Gửi phản hồi về sản phẩm
				</a></li>
				<li><a href=""> <span><img
							src="${base}/img/icon-headphone.jpg" alt=""></span> Hotline:
						19006750
				</a></li>
			</ul>
		</div>
	</div>
	<div class="header-box2">
		<div class="header-box2-item">
			<a href="${base}/home"><img src="${base}/img/logo.png" alt=""></a>

			<div class="menu">
				<h3>
					Danh mục sản phẩm
					<div class="list-menu">
						<ul>
							<li><a href=""> <img
									src="${base}/img/categories_icon_1.png" alt=""> Tất cả
									sản phẩm<i class="fa-solid fa-caret-right"></i>
									<ul class="sub-menu">
										<c:forEach  items="${categories}" var="category">
											<li>											
											<a href="${base }/all-category?TenDm=${category.name}" name="TenDm">${category.name}</a>
											</li>
										</c:forEach>

									</ul>
							</a></li>
							<li><a href=""><img
									src="${base}/img/categories_icon_2.png" alt="">Sản phẩm
									mới</a></li>
							<li><a href=""> <img
									src="${base}/img/categories_icon_3.png" alt="">Sản phẩm
									nổi bật
							</a></li>
							<li><a href=""><img
									src="${base}/img/categories_icon_4.png" alt="">Sản phẩm
									khuyến mãi</a></li>
							<li><a href=""><img
									src="${base}/img/categories_icon_5.png" alt="">Máy
									likenew</a></li>
							<li><a href=""><img
									src="${base}/img/categories_icon_6.png" alt="">Máy cũ giá
									rẻ</a></li>
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
					<c:choose>
						<c:when test="${isLogined}">
							<li class="acc"><i class="fa-regular fa-user"></i> <a
								href="${base}/login">${userLogined.username}</a></li>
						</c:when>
						<c:otherwise>
							<li class="acc"><i class="fa-regular fa-user"></i> <a
								href="${base}/login">Tài Khoản</a></li>
						</c:otherwise>
					</c:choose>

					<li><a href="${base}/cart/checkout"> <i
							class="fa-sharp fa-solid fa-bag-shopping"> <span
								id="soluongsanphamtronggiohang"
								style="font-size: 12px; position: absolute; margin-top: -10px; margin-left: -4px; border: 1px solid red; padding: 3px; border-radius: 50%; background: red;">
									${TongSoLuongSanPhamTrongGioHang} </span>
						</i>
					</a></li>
				</ul>
			</div>

		</div>
	</div>

</header>