<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<form class="login-form" method="POST"
				action="${base }/login_processing_url">
				<h3 style="font-size: 30px; margin-bottom: 20px;">Đăng Nhập</h3>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

				<!-- bắt buộc name phải đẻ là "username" -->
				<input type="text" name="username" class="form-control"
					placeholder="Username">
				<!-- bắt buộc name phải đẻ là "password" -->
				<input type="password" name="password" class="form-control"
					placeholder="Password">
				<div class="form-group" style="display:flex;">
					<input type="checkbox" name="remember-me"  style="width: 10%;"/> 
					<p style="font-size: 11px;">Remember me</p>
					
				</div>
				<!-- kiểm tra xem đã login thành công hay không, bằng cách kiểm tra request param login_error -->
				<c:if test="${not empty param.login_error}">
					<div class="alert alert-danger" role="alert"
						style="font-size: 13px; color: red; font-style: italic; margin: 10px">Đăng
						nhập không thành công! Thử lại.</div>
				</c:if>
				<button type="submit">Log In</button>
				<div class="message">
					Not registered? <a href="#">Create an account</a>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>
</html>
