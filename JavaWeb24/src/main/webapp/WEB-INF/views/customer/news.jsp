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
     <link rel="stylesheet" href="${base}/css/news2.css">
    <title>News</title>
</head>

<body>
   <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
      <div class="content">
        <div class="content-left">
            <div class="product">
                <ul>
                    <li class="col-4 ">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/product-img1-news.jpg" alt=""></a>
                            </div>
                            <div class="div-info">
                                <p>
                                    Hôm nay (20/3) nhà sản xuất Lenovo đã tổ chức một sự kiện ra mắt để công bố bộ ba
                                    smartphone mới bao gồm Lenovo S5, Lenovo K5 và K5 Play....
                                </p>
                                <a href="">Lenovo chính thức trình làng bộ ba S5, K5 và K5 Play</a>
                                <div class="time">
                                    <p>
                                        <span>03, 05 2023</span>
                                    </p>
                                </div>
                            </div>
                            <div class="icon-button">
                                <p>
                                    <i class="fa-solid fa-arrow-right"></i>
                                </p>

                            </div>
                        </div>

                    </li>
                    <li class="col-4 ">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/product-img2pg-news.jpg" alt=""></a>
                            </div>
                            <div class="div-info">
                                <p>

                                    Ảnh minh họa
                                    Dòng J là dòng sản phẩm được nhiều người ưa thích nhất trong số các điện thoại thông
                                    minh của Samsung. Nguồn tin mới...
                                </p>
                                <a href="">
                                    Galaxy J7 (2018) lộ diện trên FCC với màn hình 5.6 inch
                                </a>
                                <div class="time">
                                    <p>
                                        <span>03, 05 2023</span>
                                    </p>
                                </div>
                            </div>
                            <div class="icon-button">
                                <p>
                                    <i class="fa-solid fa-arrow-right"></i>
                                </p>

                            </div>
                        </div>
                    </li>
                    <li class="col-4 ">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/product-img3-news.jpg"></a>
                            </div>
                            <div class="div-info">
                                <p>
                                    Quá nhiều người đến Apple Store thay pin cũng dẫn đến những mối nguy khó ngờ.
                                    Các cửa hàng Apple giờ đây là nơi đến của rất nh...
                                </p>
                                <a href="">Thụy Sỹ: iPhone cháy mù mịt ngay trong Apple Store khiến cả khách và nhân
                                    viên sơ tán khẩn cấp
                                </a>
                                <div class="time">
                                    <p>
                                        <span>03, 05 2023</span>
                                    </p>
                                </div>

                            </div>
                            <div class="icon-button">
                                <p>
                                    <i class="fa-solid fa-arrow-right"></i>
                                </p>

                            </div>
                        </div>
                    </li>
                    <li class="col-4 ">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/product-img4-news.jpg" alt=""></a>
                            </div>
                            <div class="div-info">
                                <p>
                                    3 mẫu iPhone X cải tiến, iPad giá rẻ... thế đã đủ để bạn mong chờ một năm 2018 bùng
                                    nổ của Apple hay chưa?
                                    Apple là thương hiệu côn...
                                </p>
                                <a href=""> 6 'hàng nóng' Apple dự kiến ra mắt trong năm 2018 khiến ai cũng ngóng chờ
                                </a>
                                <div class="time">
                                    <p>
                                        <span>03, 05 2023</span>
                                    </p>
                                </div>
                            </div>
                            <div class="icon-button">
                                <p>
                                    <i class="fa-solid fa-arrow-right"></i>
                                </p>

                            </div>
                        </div>
                    </li>
                    <li class="col-4 ">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/product-img5-news.jpg" alt=""></a>
                            </div>
                            <div class="div-info">
                                <p>
                                    Các thiết bị có thể hạ xuống đến iOS 6 bao gồm bộ ba iPhone 5, 5C, 5S cùng iPad Mini
                                    2 và iPad 4.
                                    Mới đây trên trang IPSW.me, Apple đã b...
                                </p>
                                <a href=""> Apple cho phép hạ cấp phiên bản iOS trên các thiết bị cũ, nhưng chớ vội vui
                                    mừng làm theo
                                </a>
                                <div class="time">
                                    <p>
                                        <span>03, 05 2023</span>
                                    </p>
                                </div>
                            </div>
                            <div class="icon-button">
                                <p>
                                    <i class="fa-solid fa-arrow-right"></i>
                                </p>

                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <div class="content-right">
            <div class="content-right-box-1">
                <div class="title">
                    <p>Thông tin</p>
                </div>
                <ul>
                    <li>
                        <a href="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="">Sản phẩm</a>
                        <i class="fa-sharp fa-solid fa-caret-down"></i>
                    </li>
                    <li>
                        <a href="">Blog</a>
                    </li>
                    <li>
                        <a href="">Giới thiệu</a>
                    </li>
                    <li>
                        <a href=""> Liên hệ</a>
                    </li>
                </ul>

            </div>
            <div class="content-right-box-2">
                <div class="title">
                    <p>Thông tin</p>
                </div>
                <ul>
                    <li>
                        <a href="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="">Sản phẩm</a>
                        <i class="fa-sharp fa-solid fa-caret-down"></i>
                    </li>
                    <li>
                        <a href="">Blog</a>
                    </li>
                    <li>
                        <a href="">Giới thiệu</a>
                    </li>
                    <li>
                        <a href=""> Liên hệ</a>
                    </li>
                </ul>

            </div>
            <div class="content-right-box-3">
                <div class="title selling">
                    <p>Tin nổi bật</p>
                </div>
                <ul>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/content-right-1-news.jpg" alt=""></a>
                            </div>
                            <div class="div-info">
                                <a href="">Lenovo chính thức trình làng bộ ba S5, K5 và K5 Play</a>
                                <div class="time">
                                    <p>
                                        <i class="fa-regular fa-clock"></i>
                                        <span>03, 05 2023</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/content-right-2-news.jpg" alt=""></a>
                            </div>
                            <div class="div-info">
                                <a href="">
                                    Galaxy J7 (2018) lộ diện trên FCC với màn hình 5.6 inch
                                </a>
                                <div class="time">
                                    <p>
                                        <i class="fa-regular fa-clock"></i>
                                        <span>03, 05 2023</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/content-right-3-news.jpg"></a>
                            </div>
                            <div class="div-info">
                                <a href="">Thụy Sỹ: iPhone cháy mù mịt ngay trong Apple Store khiến cả khách và nhân
                                    viên sơ tán khẩn cấp
                                </a>
                                <div class="time">
                                    <p>
                                        <i class="fa-regular fa-clock"></i>
                                        <span>03, 05 2023</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/content-right-4-news.jpg" alt=""></a>
                            </div>
                            <div class="div-info">
                                <a href=""> 6 'hàng nóng' Apple dự kiến ra mắt trong năm 2018 khiến ai cũng ngóng chờ
                                </a>
                                <div class="time">
                                    <p>
                                        <i class="fa-regular fa-clock"></i>
                                        <span>03, 05 2023</span>
                                    </p>
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