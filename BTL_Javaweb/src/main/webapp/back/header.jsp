<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.ResultSet"%>
   <div class="app-header d-flex align-items-center">

	<!-- Toggle buttons start -->
	<div class="d-flex">
		<button class="btn btn-outline-primary me-2 toggle-sidebar" id="toggle-sidebar">
			<i class="bi bi-text-indent-left fs-5"></i>
		</button>
		<button class="btn btn-outline-primary me-2 pin-sidebar" id="pin-sidebar">
			<i class="bi bi-text-indent-left fs-5"></i>
		</button>
	</div>
	<!-- Toggle buttons end -->

	<!-- App brand sm start -->
	<div class="app-brand-sm d-md-none d-sm-block">
		<a href="index.html">
			<img src="<%= request.getContextPath() %>/back/assets/images/logotvx.png" class="logo" alt="TVX Dentist Clinic">
		</a>
	</div>
	<!-- App brand sm end -->

	<!-- Breadcrumb start -->
	<ol class="breadcrumb d-none d-lg-flex ms-3">
		<li class="breadcrumb-item">
			<i class="bi bi-house lh-1"></i>
			<a href="index.html" class="text-decoration-none">Home</a>
		</li>
		<li class="breadcrumb-item text-secondary"><%= request.getAttribute("activePage")%></li>
	</ol>
	<!-- Breadcrumb end -->

	<!-- App header actions start -->
	<div class="header-actions">
		<div class="dropdown">
			<a class="dropdown-toggle d-flex px-3 py-4 position-relative" href="#!" role="button"
				data-bs-toggle="dropdown" aria-expanded="false">
				<img src="<%= request.getContextPath() %>/back/assets/images/flags/1x1/vn.svg" class="flag-img" alt="TVX Dentist Clinic" />
			</a>
			<div class="dropdown-menu dropdown-menu-end shadow-sm dropdown-menu-mini">
				<div class="country-container">
					<a href="index.html" class="py-2">
						<img src="<%= request.getContextPath() %>/back/assets/images/flags/1x1/gb.svg" alt="Admin Panel" />
					</a>
					
				</div>
			</div>
		</div>
		
		
		<div class="dropdown border-start">
			<a class="dropdown-toggle d-flex px-3 py-4 position-relative" href="#!" role="button"
				data-bs-toggle="dropdown" aria-expanded="false">
				<i class="bi bi-envelope-open fs-4 lh-1 text-secondary"></i>
				<span class="count-label"></span>
			</a>
			<div class="dropdown-menu dropdown-menu-end dropdown-menu-md shadow-sm">
				<a href="javascript:void(0)" class="dropdown-item">
					<div class="d-flex py-2">
						<i class="bi bi-bell" style="font-size: 15px; width: 20px;"></i>
						<div class="m-0">
							
							<h5 class="mb-1">Thông báo</h5>
							<p class="mb-1 text-secondary">
								Bạn đã đi làm 
									<span class="text-danger text-semibold">10/14</span> buổi trong tuần trước
							</p>
							<p class="small m-0 text-secondary">Today, 07:30am</p>
						</div>
					</div>
				</a>
				
				<div class="d-grid mx-3 my-3">
					<a href="javascript:void(0)" class="btn btn-primary">View all</a>
				</div>
			</div>
		</div>
		<div class="dropdown ms-2">
			<a id="userSettings" class="dropdown-toggle d-flex py-2 align-items-center text-decoration-none"
				href="#!" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				<img src="<%= request.getContextPath() %>/back/assets/images/soCute.jpg" class="rounded-2 img-3x" alt="Bootstrap Gallery" />
			</a>
			<%
                HttpSession s = request.getSession(false);
				ResultSet logUser=(ResultSet)s.getAttribute("logUser");
                String fname="";
                String email="";
                if (s != null &&  logUser!=null) {
                	fname=logUser.getString("user_full_name");
                	email=logUser.getString("user_email");
                }
            %>
			<div class="dropdown-menu dropdown-menu-end shadow-sm">
				<div class="p-3 border-bottom mb-2">
					<h6 class="mb-1"><%= fname%></h6>
					<p class="m-0 small opacity-50"><%= email%></p>
				</div>
				<a class="dropdown-item d-flex align-items-center" href="canhan.html"><i
					class="bi bi-person fs-4 me-2"></i>Thông tin</a>
				<a class="dropdown-item d-flex align-items-center" href="canhan.html"><i
						class="bi bi-gear fs-4 me-2"></i>Đổi mật khẩu</a>
				<div class="d-grid p-3 py-2">
					<a class="btn btn-danger" href="<%= request.getContextPath() %>/logout">Đăng xuất</a>
				</div>
			</div>
		</div>
	</div>
	<!-- App header actions end -->

</div>
	