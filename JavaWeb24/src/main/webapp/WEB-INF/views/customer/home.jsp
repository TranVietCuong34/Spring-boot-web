<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>plican.mysapo.net</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
     <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
      <link rel="stylesheet" href="${base}/css/home.css">
</head>

<body>
    <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    <nav>
            <div class="banner">
                <div class="banner-right">
                    <a href=""> <img src="img/img1-banner-right.jpg" alt=""></a>

                </div>
                <div class="banner-left">
                    <a href=""> <img src="img/banner_slide_img_1.jpg" alt=""></a>
                    <a href=""> <img src="img/banner_slide_img_2.jpg" alt=""></a>



                </div>
            </div>
        </nav>
    <div class="content">
        <div class="menu-content-top">
            <a href="">Điện thoại</a>
            <ul>
                <li><a href="">Trang chủ</a></li>
                <li><a href="${base}/shop">Sản phẩm</a></li>
                <li><a href="${base}/news">Blog</a></li>
                <li><a href="">Giới thiệu</a></li>
                <li><a href="${base}/contact"">Liên Hệ</a></li>
            </ul>
        </div>
        <div class="product">
            <div class="list-1-product">
                <ul class="item-product hover">
                    <li class="img-product col-4">
                        <a href=""><img src="img/img1-product.jpg" alt=""></a>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img1-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Samsung</p>
                                    <a href="${base}/productDatail">Samsung Galaxy S9+ 128GB</a>
                                </div>

                                <div class="price">
                                    <span class="price-discount">37.790.000đ </span>
                                    <span class="price-no-discount">34.790.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img2-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>iPhone</p>
                                    <a href="">iPhone X 256GB</a>
                                </div>

                                <div class="price">
                                    <span class="price-discount">11.490.000đ </span>
                                    <span class="price-no-discount">10.990.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img3-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Oppo</p>
                                    <a href="">OPPO F5 6GB</a>
                                </div>
                                <div class="price">
                                    <span class="price-discount">11.490.000đ </span>
                                    <span class="price-no-discount">10.990.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img4-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Apple</p>
                                    <a href="">iPad Pro 10.5 inch WiFi Cellular 64GB</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">22.900.000đ </span>
                                    <span class="price-no-discount">19.900.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="list-2-product hover">
                <ul>
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
                                <div class="div-info-title">
                                    <p>Apple</p>
                                    <a href="">IPhone 8 - 256GB Silver (LikeNew)</a>
                                </div>

                                <div class="price">
                                    <span class="price-discount">21.590.000đ</span>
                                    <span class="price-no-discount">17.590.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img6-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Samsung</p>
                                    <a href="">Samsung Galaxy Tab A6 10.1 Spen</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">8.900.000đ</span>
                                    <span class="price-no-discount">7.900.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img7-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Huawei</p>
                                    <a href="">Huawei MediaPad M3 8.0 (2017)</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">6.490.000đ</span>
                                    <span class="price-no-discount"> 5.990.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img8-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Samsung</p>
                                    <a href="">Galaxy S8 Plus Black Chính hãng(LikeNew)</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">16.990.000đ</span>
                                    <span class="price-no-discount"> 13.990.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img9-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Oppo</p>
                                    <a href="">OPPO F5 Gold Chính hãng (LikeVew)</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">26.990.000đ</span>
                                    <span class="price-no-discount">24.990.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img10-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Samsung</p>
                                    <a href="">Samsung Galaxy Note 8</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">22.990.000đ</span>
                                    <span class="price-no-discount">21.490.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="slide">
                <ul>
                    <li>
                        <a href="">
                            <img src="img/img1-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img2-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img3-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img4-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img5-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img6-slide.jpg" alt="">
                        </a>
                    </li>

                </ul>
            </div>
        </div>

        <div class="img-product-1">
            <ul>
                <li><a href=""><img src="img/1-img-product.jpg" alt=""></a></li>
                <li><a href=""><img src="img/2-img-product.jpg" alt=""></a></li>
                <li><a href=""><img src="img/3-img-product.jpg" alt=""></a></li>
                <li><a href=""><img src="img/4-img-product.jpg" alt=""></a></li>
            </ul>
        </div>
        <div class="menu-content-main">
            <a href="">Macbook-Laptop</a>
            <ul>
                <li><a href="">Tất cả sản phẩm</a></li>
                <li><a href="">Sản phẩm mới nhất</a></li>
                <li><a href="">Sản phẩm bán chạy nhất</a></li>
                <li><a href="">Sản phẩm khuyến mãi</a></li>
                <li><a href="">Mát LikeNew</a></li>
            </ul>
        </div>
        <div class="product">
            <div class="list-1-product">
                <ul class="item-product hover ">
                    <li class="img-product col-4">
                        <a href=""><img src="img/img2-product.jpg" alt=""></a>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img1-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Lenovo</p>
                                    <a href="">Lenovo Ideapad Yoga 920 - 13IKB</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">37.790.000â« </span>
                                    <span class="price-no-discount">44.990.000â« </span>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img2-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Acer</p>
                                    <a href="">Acer A315-51-3932/Core i3-6006U</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">11.490.000âđ </span>
                                    <span class="price-no-discount">8.990.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img5-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Toshiba</p>
                                    <a href="">Laptop Toshiba Satellite GeForce 710M C40 14-inch</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">21.590.000đ</span>
                                    <span class="price-no-discount">9.000.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img4-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Apple</p>
                                    <a href="">Laptop Macbook Pro Intel HD Graphics 6000</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">22.900.000đ </span>
                                    <span class="price-no-discount">25.000.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="list-2-product hover">
                <ul>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img5-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Apple</p>
                                    <a href="">Apple Macbook Air MMGF2 13.3 inch</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">21.900.000đ</span>
                                    <span class="price-no-discount">20.900.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img6-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Lenovo</p>
                                    <a href="">Laptop Lenovo Yoga 3 Pro 16.5 inch</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">8.900.000đ</span>
                                    <span class="price-no-discount">31.990.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img7-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Acer</p>
                                    <a href="">Acer Nitro 5 AN515 51 739L i7 7700HQ/8GB/1TB/2GB</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">23.990.000đ</span>
                                    <span class="price-no-discount"> 22.990.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img8-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Asus</p>
                                    <a href="">
                                        Acer Nitro 5 AN515 51 739L i7 7700HQ/8GB/1TB/2GB</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">22.900.000â«</span>
                                    <span class="price-no-discount"> 20.900.000â«</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img9-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Dell</p>
                                    <a href=""> Dell Inspiron 7373 i7 8550U/8GB/256GB/Win10</a>
                                   
                                </div>


                                <div class="price">
                                    <span class="price-discount">32.990.000đ</span>
                                    <span class="price-no-discount">29.990.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img10-menu-content-main.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Apple</p>
                                    <a href="">Apple Macbook 12" MNYK2SA/A Core M 1.2GHz/8GB/256GB (2017)</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">39.990.000đ </span>
                                    <span class="price-no-discount">36.990.000âđ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="slide">
                <ul>
                    <li>
                        <a href="">
                            <img src="img/img1-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img2-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img3-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img4-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img5-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img6-slide.jpg" alt="">
                        </a>
                    </li>

                </ul>
            </div>
        </div>

        <div class="img-product-2">
            <ul>
                <li>
                    <a href="">
                        <img src="img/img1-product2.webp" alt="">
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/img2-product2.webp" alt="">
                    </a>
                </li>
            </ul>
        </div>

        <div class="menu-content-bottom">
            <a href="">Điện thoại</a>
            <ul>
                <li><a href="">Tất cả sản phẩm </a></li>
                <li><a href="">Sả phẩm mới</a></li>
                <li><a href="">Sản phẩm nổi bật</a></li>
                <li><a href="">Sản phẩm khuyến mãi</a></li>
                <li><a href="">Máy LikeNew</a></li>
            </ul>

        </div>
        <div class="product">
            <div class="list-1-product">

                <ul class="item-product hover">
                    <li class="img-product col-4">
                        <a href=""><img src="img/img3-product.jpg" alt=""></a>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img1-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Kanen</p>
                                    <a href="">Tai nghe chụp tai Kanen IP-2090</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">350.000đ </span>
                                    <span class="price-no-discount">300.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img2-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Cliptec</p>
                                    <a href="">Chuột Gaming Cliptec Meteor RGS502</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">250.000đ </span>
                                    <span class="price-no-discount">200.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img3-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Samsung</p>
                                    <a href="">Kính thực tế ảo Samsung Gear VR3</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">11.490.000đ </span>
                                    <span class="price-no-discount">2.400.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="col-2">
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img4-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Apple</p>
                                    <a href="">Samsung Gear Fit2 Pro</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">4.490.000âđ </span>
                                    <span class="price-no-discount">4.190.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="list-2-product hover">
                <ul>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img5-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Sandisk</p>
                                    <a href="">Thẻ nhớ Sandisk 32GB</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">21.590.000đ</span>
                                    <span class="price-no-discount">500.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img6-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Xiaomi</p>
                                    <a href="">
                                        Pin sạc dự phòng Xiaomi</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">8.900.000đ</span>
                                    <span class="price-no-discount">750.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img7-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Aukey</p>
                                    <a href="">Củ sạc Aukey 001</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">6.490.000đ</span>
                                    <span class="price-no-discount">110.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img8-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Osmia</p>
                                    <a href="">
                                        Gậy chụp ảnh  Osmia OW1</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">16.990.000đ</span>
                                    <span class="price-no-discount"> 100.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img9-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Osmia</p>
                                    <a href="">
                                        Gập chụp ảnh Osmia 02</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">26.990.000đ</span>
                                    <span class="price-no-discount">150.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="img">
                                <a href=""><img src="img/img1-menu-content-bottom.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                            <div class="div-info">
                                <div class="div-info-title">
                                    <p>Iphone</p>
                                    <a href="">Tai nghe Apple iPhone 6 chính hãng</a>
                                </div>


                                <div class="price">
                                    <span class="price-discount">500.000đ</span>
                                    <span class="price-no-discount">450.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="slide">
                <ul>
                    <li>
                        <a href="">
                            <img src="img/img1-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img2-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img3-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img4-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img5-slide.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/img6-slide.jpg" alt="">
                        </a>
                    </li>

                </ul>
            </div>
        </div>


        <div class="img-product-3">
            <ul>
                <li><a href=""><img src="img/img-product-3.webp" alt=""></a></li>
            </ul>
        </div>
        <div class="support">
            <ul>
                <li>
                    <img src="img/img1-support.jpg" alt="">
                    <div class="info">
                        <p>Miễn phí vận chuyển</p>
                        <span>Cho đơn hàng từ 500k</span>
                    </div>
                </li>
                <li>
                    <img src="img/img2-support.jpg" alt="">
                    <div class="info">
                        <p>Hoàn tiền</p>
                        <span>Nếu có lỗi</span>
                    </div>
                </li>
                <li>
                    <img src="img/img3-support.jpg" alt="">
                    <div class="info">
                        <p>
                           Hỗ trợ thân thiện</p>
                        <span>Hỗ trợ 24/7</span>
                    </div>
                </li>
                <li>
                    <img src="img/img4-support.jpg" alt="">
                    <div class="info">
                        <p>Thanh toán</p>
                        <span>Bảo mật thanh toán</span>
                    </div>
                </li>
            </ul>
        </div>


    </div>
   <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>


</body>

</html>