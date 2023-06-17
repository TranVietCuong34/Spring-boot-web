<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
     <link rel="stylesheet" href="${base}/css/login.css">
</head>
<body>
  <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    <div class="login-page">
        <div class="form">
          <form class="register-form">
            <input type="text" placeholder="name"/>
            <input type="password" placeholder="password"/>
            <input type="text" placeholder="email address"/>
            <button>create</button>
            <p class="message">Already registered? <a href="#">Sign In</a></p>
          </form>
          <form class="login-form">
            <input type="text" placeholder="Email"/>
            <input type="password" placeholder="Mật Khẩu"/>
            <button>login</button>
            <div class="message">Not registered? 
                <a href="#">Create an account</a>
            </div>
          </form>
        </div>
      </div>
      <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>
</html>
