<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="w3_navigation">
	<div class="container" style="width: 100%;">
		<nav class="navbar navbar-default"
			style="display: flex; width: 100%; justify-content: space-around; margin-top: 10px">

			<div class="navbar-header navbar-left">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h1>
					<a class="navbar-brand" href="index.html">Easy<span>Stay</span>
					<p class="logo_w3l_agile_caption">Feel at Home</p></a>
				</h1>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right"
				id="bs-example-navbar-collapse-1">
				<nav class="menu menu--iris">
					<ul class="nav navbar-nav menu__list">
						<li class="menu__item menu__item--current"><a href=""
							class="menu__link">Trang chủ</a></li>
						<!-- <li class="menu__item"><a href="#about" class="menu__link scroll">About</a></li> -->
						<!-- <li class="menu__item"><a href="#gallery" class="menu__link scroll">Gallery</a></li> -->
						<li class="menu__item"><a href="reservation.html"
							class="menu__link">Đặt phòng</a></li>
						<li class="menu__item"><a href="#contact"
							class="menu__link scroll">Liên hệ</a></li>
						<li class="menu__item"><a href="check.html"
							class="menu__link">Xem đơn đặt phòng</a></li>
						<%
			                HttpSession s = request.getSession(false);
							ResultSet logUser=(ResultSet)s.getAttribute("logUser");
			                
			                if (s != null &&  logUser!=null) {
			                	String customerName = (s != null) ? (String) logUser.getString("user_full_name").toUpperCase() : null;
			            %>
			                <!-- Hiển thị tên khách hàng và nút Đăng xuất -->
			                <li><a class="menu__link"><b><%= customerName %></b></a></li>
			                <li class="menu__item w-100 text-right"><a href="<%= request.getContextPath() %>/logout" class="menu__link">Đăng xuất</a></li>
			            <%
			                } else {
			            %>
			                <!-- Hiển thị nút Đăng nhập -->
			                <li class="menu__item w-100 text-right"><a href="<%= request.getContextPath() %>/front/Login.jsp" class="menu__link">Đăng nhập</a></li>
			            <%
			                }
			            %>
					</ul>
				</nav>
			</div>
		</nav>

	</div>
</div>