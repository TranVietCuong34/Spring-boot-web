<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu'></i> <a href="#" class="nav-link">Categories</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn">
						<i class='bx bx-search'></i>
					</button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden> <label
				for="switch-mode" class="switch-mode"></label> <a href="#"
				class="notification"> <i class='bx bxs-bell'></i> <span
				class="num">8</span>
			</a> <a href="#" class="profile" style="display: flex;"> <img
				src="${base}/img/avata-admin.jpg">
				<p style="font-size: 12px; margin-left: 12px; margin-top: 6px;">${userLogined.email}</p>
			</a>
		</nav>
		<!-- NAVBAR -->