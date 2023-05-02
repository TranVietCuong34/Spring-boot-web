<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

     <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
     <link rel="stylesheet" href="${base}/css/product-detail.css">
    <title>product-detail</title>
</head>

<body>
    <header>
        <div class="header-box1">
            <div class="news-header">
                <ul>
                    <li>
                        <a href="">
                            <i class="fa-solid fa-book-bookmark"></i>Chính sách của Pelican Store
                        </a>
                    </li>
                    <li>
                        <a href=""><i class="fa-regular fa-clock"></i>
                            Tin khuyến mãi tháng 11
                        </a>
                        <img src="img/icon-hot-top.png" alt="">
                    </li>
                </ul>
            </div>
            <div class="news-header">
                <ul>
                    <li>
                        <a href="">
                            <p><img src="img/icon-speaker.jpg" alt=""> </p>
                            Gửi phản hồi về sản phẩm
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span><img src="img/icon-headphone.jpg" alt=""></span>

                            Hotline: 19006750
                        </a>

                    </li>
                </ul>
            </div>
        </div>
        <div class="header-box2">
            <div class="header-box2-item">
                <a href="${base}/home"><img src="img/logo.png" alt=""></a>

                <div class="menu">
                    <h3>Danh mục sản phẩm
                        <div class="list-menu">
                            <ul>
                                <li>
                                    <a href="">
                                        <img src="img/categories_icon_1.png" alt="">
                                        Tất cả sản phẩm<i class="fa-solid fa-caret-right"></i>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="">Điện thoại</a>
                                            </li>
                                            <li>
                                                <a href="">Tablet</a>
                                            </li>
                                            <li><a href=""> Laptop</a>
                                            </li>
                                            <li><a href="">Tivi</a>
                                            </li>
                                            <li><a href="">Máy ảnh</a>
                                            </li>
                                            <li><a href="">Phụ kiện</a>
                                            </li>
                                        </ul>
                                    </a>

                                </li>
                                <li>
                                    <a href=""><img src="img/categories_icon_2.png" alt="">Sản phẩm mới</a>
                                </li>
                                <li><a href=""> <img src="img/categories_icon_3.png" alt="">Sản phẩm nổi bật</a>
                                </li>
                                <li><a href=""><img src="img/categories_icon_4.png" alt="">Sản phẩm khuyến mãi</a>
                                </li>
                                <li><a href=""><img src="img/categories_icon_5.png" alt="">Máy likenew</a>
                                </li>
                                <li><a href=""><img src="img/categories_icon_6.png" alt="">Máy cũ giá rẻ</a>
                                </li>
                            </ul>
                        </div>

                    </h3>
                    <span><i class="fa-solid fa-align-right"></i></span>
                </div>
                <div class="search-header">
                    <input type="text" placeholder="Tìm kiếm sản phẩm...">
                    <a href=""><button>tìm kiếm</button></a>

                </div>

                <div class="header-box2-right">
                    <ul>
                        <li class="acc">
                            <i class="fa-regular fa-user"></i>
                            <a href="">Tài Khoản</a>
                        </li>
                        <li><a href=""><i class="fa-sharp fa-solid fa-bag-shopping"></i></a></li>
                    </ul>
                </div>

            </div>
        </div>
        
    </header>

    <div class="content">
        <div class="content-left">
            <div class="content-left-1">
                <div class="img-left col-6 col">
                    <img src="img/img1-datail.webp" alt="">
                    <div class="sub-img">
                        <ul>
                            <li class="col-3 col"><img src="img/img2-datail.jpg" alt=""></li>
                            <li class="col-3 col"> <img src="img/img3-datail.png" alt=""></li>
                            <li class="col-3 col"><img src="img/img4-datail.jpg"
                                    alt=""></li>
                        </ul>
                    </div>
                </div>
                <div class="info-left col-6 col">
                    <p class="title-product">Samsung Galaxy S9+ 128GB</p>
                    <div class="star">
                        <div class="icon">
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <div class="product-review">Viết đánh giá của bạn</div>
                    </div>
                    <div class="price">
                        <div class="price-no-discount">26.990.000đ</div>

                    </div>
                    <p class="status">Tình trạng: <span>Còn hàng</span></p>
                    <ul>
                        <li>Thương hiệu: <span>SAMSUNG</span> </li>
                        <li>Dòng sản phẩm: ĐIỆN THOẠI</li>
                        <li>Giảm giá 10% cho hoá đơn trên 500k</li>
                        <li>Miễn phí giao hàng trong bán kính 5km</li>
                    </ul>
                    <div class="cart">
                        <input type="number" id="points" name="points" placeholder="1">
                        <button>cho vào giỏ hàng </button>
                    </div>
                    <div class="special-offer">
                        <p>Khuyến mãi đặc biệt ( SL có hạn)</p>
                    </div>
                    <div class="share">
                        <p>Chia sẻ:</p>
                        <ul>
                            <li><a href=""><i class="fa-brands fa-facebook fb"></i></a></li>
                            <li> <a href=""> <i class="fa-brands fa-twitter twitter"></i> </a></li>
                            <li><a href=""><i class="fa-brands fa-pinterest pinterest"></i></a></li>
                            <li> <a href=""><i class="fa-brands fa-google-plus google-plus"></i></a></li>

                        </ul>
                    </div>
                    <div class="bonus">
                        <ul>
                            <li>
                                <i class="fa-solid fa-gift"></i>
                                Giảm giá thêm tới <span>15%</span> giá phụ kiện,<span>1%</span> giá máy cho hội viên
                                Smember
                            </li>
                            <li>
                                <i class="fa-solid fa-gift"></i>Trả góp lãi suất <span>0%</span>với thẻ tín dụng ANZ,
                                Sacombank, Nam Á Bank Shinhanbank
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="Specifications">
                <ul>
                    <li>
                        <p>thông tin sản phẩm</p>
                    </li>
                    <li>
                        <p>tab tùy chỉnh</p>
                    </li>
                    <li>
                        <p>đánh giá</p>
                    </li>
                    <li>
                        <p>bình luận</p>
                    </li>
                </ul>
                
            </div>

            <div class="content-left-2">
                <div class="title">
                    <p>Sản phẩm liên quan</p>
                </div>
                <ul>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img1-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">Samsung Galaxy S9+ 128GB</a>
                                <span class="price-discount">24.990.000₫</span>
                                <span class="price-no-discount">26.990.000₫ </span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img2-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>

                                </div>
                            </div>
                            <div class="div-info">
                                <p>Apple</p>
                                <a href="">
                                    iPhone X 256GB</a>
                          
                                    <span class="price-discount">237.790.000₫</span>
                                    <span class="price-no-discount">34.790.000₫ </span>
                              
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img3-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>

                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">
                                    OPPO F5 6GB</a>
                                    <span class="price-discount">11.490.000₫</span>
                                    <span class="price-no-discount">10.990.000₫</span>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img5-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">Samsung Galaxy S9+ 128GB</a>
                              
                                    <span class="price-discount">26.990.000₫</span>
                                    <span class="price-no-discount">24.990.000₫ </span>
                                
                            </div>
                        </div>
                    </li>








                </ul>

            </div>


        </div>
        <div class="content-right">
            <div class="content-right-box-1">
                <div class="title">
                    <p>Địa chỉ showroom</p>
                </div>
                <select name="" id="">
                    <option value=""> HÀ NỘI</option>
                    <option value="">HẢI PHÒNG</option>
                    <option value="">THÀNH PHỐ HỒ CHÍ MINH</option>
                </select>
                <div class="address">
                    <ul>
                        <li> <p>Văn phòng đại diện: Số 257 phố Đà Nẵng - Phường Cầu Tre - Quận Ngô Quyền - TP Hải Phòng</p></li>
                    </ul>
                   
                </div>
            </div>

            <div class="support">
                <ul>
                    <li>
                        <div class="support-img">
                            <img src="img/img1-support.jpg" alt="">
                        </div>

                        <div class="info">
                            <p>Miễn phí vận chuyển</p>
                            <span>Cho đơn hàng từ 500k</span>
                        </div>
                    </li>
                    <li>
                        <div class="support-img">
                            <img src="img/img2-support.jpg" alt="">
                        </div>

                        <div class="info">
                            <p>Hoàn tiền</p>
                            <span>nếu có lỗi</span>
                        </div>
                    </li>
                    <li>
                        <div class="support-img"> <img src="img/img3-support.jpg" alt=""></div>


                        <div class="info">
                            <p>
                                Hỗ trợ thân thiện</p>
                            <span>Hỗ trợ 24/7</span>
                        </div>
                    </li>
                    <li>
                        <div class="support-img"><img src="img/img4-support.jpg" alt=""></div>


                        <div class="info">
                            <p>Thanh toán</p>
                            <span>Bảo mật thanh toán</span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="content-right-box-3">
                <div class="title selling">
                    <p>Sản phẩm bán chạy</p>
                </div>
                <ul>
                    <li>
                        <div class="item">
                            <div class="img">
                                <img src="img/img10-product1.jpg" alt="">
                            </div>
                            <div class="div-info">
                                <a href="">Tai nghe chụp tai Kanen IP-2090</a>
                                <div class="price">
                                    <span class="price-discount">350.000₫ </span>
                                    <span class="price-no-discount">300.000₫</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <img src="img/img8-product1.jpg" alt="">
                            </div>
                            <div class="div-info">
                                <a href="">
                                    OPPO F5 Gold Chính hãng (Likenew)
                                </a>
                                <div class="price">
                                    <span class="price-discount">350.000₫ </span>
                                    <span class="price-no-discount">300.000₫</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <img src="img/img5-product1.jpg">
                            </div>
                            <div class="div-info">
                                <a href="">IPhone 8 - 256GB Silver (Likenew)
                                </a>
                                <div class="price">
                                    <span class="price-discount">350.000₫ </span>
                                    <span class="price-no-discount">300.000₫</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <img src="img/img8-product1.jpg" alt="">
                            </div>
                            <div class="div-info">
                                <a href=""> Galaxy S8 Plus Black Chính hãng (Likenew)
                                </a>
                                <div class="price">
                                    <span class="price-discount">350.000₫ </span>
                                    <span class="price-no-discount">300.000₫</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
 <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>

</html>