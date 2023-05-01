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
     <link rel="stylesheet" href="${base}/css/cart.css">
    <title>Cart</title>

</head>

<body>
   <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    <div class="content-cart">
        <span>Giỏ Hàng</span>
        <div class="list-title">
            <ul class="title">
                <li class="col-6 ">
                    <p>Sản phẩm</p>
                </li>
                <li class="col-2 ">
                    <p> Giá</p>
                </li>
                <li class="col-2 ">
                    <p>Số lượng </p>
                </li>
                <li class="col-2 ">
                    <p>Tổng tiền</p>
                </li>
            </ul>
            <ul class="list-item">
                <li class="col-6">
                    <div class="list-item-img">
                        <img src="img/img4-menu-content-main.jpg" alt="">
                    </div>
                    <div class="info-item">
                        <p>Lenovo Ideapad Yoga 920 - 13IKB
                    </p>
                    </div>
                    
                </li>
                <li class="col-2 ">
                    <p class="price">44.990.000đ</p>
                </li>
                <li class="col-2 ">
                    <input type="number" value="1">
                </li>
                <li class="col-2 ">
                    <p class="price">44.990.000đ</p>
                </li>
            </ul>
            <ul class="list-item">
                <li class="col-6">
                    <div class="list-item-img">
                        <img src="img/img10-product1.jpg" alt="">
                    </div>
                    <div class="info-item">
                        <p>Samsung Galaxy Note 8
                        </p>
                    </div>
                </li>
                <li class="col-2 ">
                    <p class="price">24.990.000đ</p>
                </li>
                <li class="col-2 ">
                    <input type="number" value="1">

                </li>
                <li class="col-2 ">
                    <p class="price">24.990.000đ</p>
                </li>
            </ul>
            <ul class="list-item">
                <li class="col-6">
                    <div class="list-item-img">
                        <img src="img/img1-menu-content-bottom.jpg" alt="">
                    </div>
                    <div class="info-item">
                        <p>Tai nghe chá»¥p tai Kanen IP-2090
                        </p>
                    </div>
                </li>
                <li class="col-2 ">
                    <p class="price">17.590.000đ</p>
                </li>
                <li class="col-2 ">
                    <input type="number" value="1">

                </li>
                <li class="col-2 ">
                    <p class="price">17.590.000đ</p>
                </li>
            </ul>
            <div class="btn">
                <button>Tiếp tục mua hàng</button>
                <button>Tiến hành thanh toán</button>

            </div>


        </div>
    </div>
       <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>

</html>