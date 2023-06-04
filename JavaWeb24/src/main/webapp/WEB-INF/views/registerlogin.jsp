<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng Nhập</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<link rel="stylesheet" href="${base}/css/login.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	<div class="login-page">
		<div class="form">
			<sf:form class="login-form" method="POST"
				action="${base }/register-login" modelAttribute="registerLogin">
				<h3 style="font-size: 30px; margin-bottom: 20px;">Đăng Ký</h3>
				<label>Tên đăng nhập</label>
				<!-- bắt buộc name phải đẻ là "username" -->
				<sf:input path="username" type="text" name="username" class="form-control"></sf:input>
				 <label >Mật
					Khẩu</label>
				<!-- bắt buộc name phải đẻ là "password" -->
				<sf:input path="password" type="password" name="password" class="form-control"></sf:input>
				<label>Email</label>
				<!-- bắt buộc name phải đẻ là "password" -->
				<sf:input path="email"  type="email" name="email" class="form-control"></sf:input>

				<button type="submit">Sign Up</button>
				<div class="message">
					<a href="${base}/login">Back Login</a>
				</div>
			</sf:form>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>
</html>
