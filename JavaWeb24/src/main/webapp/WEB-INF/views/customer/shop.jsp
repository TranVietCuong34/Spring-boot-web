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
  <link rel="stylesheet" href="${base}/css/shop.css">
    <title>Shop</title>
</head>

<body>
   <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    <div class="content">
        <div class="content-left">
            <div class="header-content-left">
                <ul>
                    <li><a href="">Tất cả sản phẩm</a></li>
                    <li>
                        <span>Sắp xếp:
                            <select>
                                <option><a href="">Mặc định</a>

                                </option>
                                <option><a href="">A đến Z</a></option>
                                <option><a href="">Z đến A</a></option>
                                <option><a href="">Giá tăng dần</a></option>
                                <option><a href="">Giá giảm dần</a></option>
                                <option><a href="">Hàng mới nhất</a></option>
                                <option><a href="">Hàng cũ nhất</a></option>

                            </select>
                        </span>
                    </li>
                </ul>
            </div>
            <div class="product">
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
                                <div class="price">
                                    <span class="price-discount">237.790.000đ</span>
                                    <span class="price-no-discount">34.790.000đ </span>
                                </div>
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
                                <div class="price">
                                    <span class="price-discount">11.490.000đ</span>
                                    <span class="price-no-discount">10.990.000đ</span>
                                </div>
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
                                <a href=""><img src="img/img6-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>

                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">Samsung Galaxy S9+ 128GB</a>
                                <div class="price">
                                    <span class="price-discount">26.990.000đ</span>
                                    <span class="price-no-discount">24.990.000đ </span>
                                </div>

                            </div>
                    </li>
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
                                <a href=""><img src="img/img7-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>

                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">Samsung Galaxy S9+ 128GB</a>
                                <div class="price">
                                    <span class="price-discount">26.990.000đ</span>
                                    <span class="price-no-discount">24.990.000đ</span>
                                </div>
                            </div>
                        </div>
                    </li>
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
                                <a href=""><img src="img/img1-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>

                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">Samsung Galaxy S9+ 128GB</a>
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
                                <a href=""><img src="img/img1-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>

                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">Samsung Galaxy S9+ 128GB</a>
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
                                <a href=""><img src="img/img1-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>

                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">Samsung Galaxy S9+ 128GB</a>
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
                                <a href=""><img src="img/img1-product1.jpg" alt=""></a>
                                <div class="icon-product">
                                    <a href=""><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
                                    <a href=""><i class="fa-solid fa-cart-shopping"></i></a>

                                </div>
                            </div>
                            <div class="div-info">
                                <p>Samsung</p>
                                <a href="">Samsung Galaxy S9+ 128GB</a>
                                <div class="price">
                                    <span class="price-discount">26.990.000đ</span>
                                    <span class="price-no-discount">24.990.000đ </span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="number">
                <ul>
                    <li><a href="">1</a></li>
                    <li><a href="">2</a></li>
                    <li><a href="">3</a></li>
                    <li><a href="">4</a></li>
                    <li><a href="">5</a></li>
                    <li><a href="">6</a></li>
                    <li>
                        <a href=""><i class="fa-solid fa-angles-right"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="content-right">
            <div class="header-content-right">
                <div class="title">
                    <p>Tìm theo</p>
                </div>
            </div>
            <div class="price">
                <p>Khoảng giá</p>
                <ul>
                    <li>
                        <input type="checkbox" value="">
                        <span>Giá dưới 100.000đ</span>

                    </li>
                    <li><input type="checkbox" value="">
                        <span>100.000đ - 200.000đ</span>

                    </li>
                    <li><input type="checkbox" value="">
                        <span> 200.000đ - 300.000đ</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>400.000đ - 500.000đ</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>500.000đ - 1.000.000đ</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Giá tăng 1.000.000đ</span>
                    </li>






                </ul>
            </div>
            <div class="brand">
                <p>Thương hiệu</p>
                <ul>
                    <li>
                        <input type="checkbox" value="">
                        <span>Acer</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span>Apple</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span>Asus</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span>Aukey</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span>Awei</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span>Belkin</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Canon</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Cliptec</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Dell</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Hola</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> HP</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Huawei</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Iphone</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Jelly</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Kanen</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> Lenovo</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span> LG</span>
                    </li>
                    <li>
                        <input type="checkbox" value="">
                        <span>Meephone</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Nokia</span>

                    </li>
                    <li><input type="checkbox" value="">
                        <span> Oppo</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Orion</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Osmia</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Samsung</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Sandisk</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Segsi</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span> Sony</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Toshiba</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span>Xiaomi</span>
                    </li>
                </ul>
            </div>
            <div class="color">
                <p>Màu sắc</p>
                <ul>
                    <li>
                        <input type="checkbox" value="">
                        <span>Vàng</span>

                    </li>
                    <li><input type="checkbox" value="">
                        <span> Tím</span>

                    </li>
                    <li><input type="checkbox" value="">
                        <span> Đỏ</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span> Xanh</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span> Xanh</span>
                    </li>
                    <li><input type="checkbox" value="">
                        <span> Cam</span>
                    </li>






                </ul>
            </div>
            <div class="img-banner">
                <a href="">
                    <img src="img/img-banner-shop.jpg" alt="">
                </a>
            </div>
        </div>
    </div>
     <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>

</html>