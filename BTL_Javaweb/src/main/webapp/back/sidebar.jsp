<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ads.objects.*" %>
<%@page import="ads.user.*" %>
<%@page import="ads.role.*"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<nav id="sidebar" class="sidebar-wrapper">

	<!-- App brand starts -->
	<div class="app-brand px-3 py-2 d-flex align-items-center">
		<a href="index.html" class="brand-link">
			<img src="<%= request.getContextPath() %>/back/assets/images/logo.png" alt="Bootstrap Gallery"  class="brand-image img-circle elevation-3" style="opacity: .8;"/>
			<span class="brand-text font-weight-light" style="color: rgb(26, 97, 169); font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"> EASY STAY</span>
		</a>
	</div>
	<!-- App brand ends -->
	
	<!-- Sidebar menu starts -->
	<div class="sidebarMenuScroll">
		<ul class="sidebar-menu">
			<%
			    HttpSession s = request.getSession(false);
			    if(s == null || s.getAttribute("logUser") == null){
			    	response.sendRedirect(request.getContextPath() +"/front/Login.jsp");
			    }else{
			    	String currentPath = request.getRequestURI();
					String activePage = ""; 
			        if (currentPath.endsWith("/role.jsp")) activePage = "Quản lý quyền";
			        else if (currentPath.endsWith("/User.jsp")) activePage = "Hồ sơ người dùng";
			        else if (currentPath.endsWith("/dashboard.jsp")) activePage = "Thống kê";
			        request.setAttribute("activePage", activePage);
			      	
				    Role r=new RoleImpl();
				String per=(String)s.getAttribute("logUserPer");
		    %>
		    <% if (per.contains("read")) { %>
			<li class="<%= currentPath.endsWith("/back/dashboard.jsp") ? "active current-page" : "" %>">
				<a href="<%= request.getContextPath()%>/back/dashboard.jsp">
					<i class="bi bi-wallet2"></i>
					<span class="menu-text" style="white-space: nowrap;">Thống kê</span>
				</a>
			</li>
		    <% } %>
		    <% if (per.contains("read") && per.contains("update")) { %>
			<li>
				<a href="trangThai.html">
					<i class="bi bi-pen"></i>
					<span class="menu-text" style="white-space: nowrap;">Trạng thái</span>
				</a>
			</li>
			<li>
				<a href="thuTinTuc.html">
					<i class="bi bi-newspaper"></i>
					<span class="menu-text" style="white-space: nowrap;">Thư tin tức</span>
				</a>
			</li>
			<%} %>
			<% if (per.contains("read") && per.contains("update") && per.contains("delete") && per.contains("create")) { %>
			<li>
				<a href="<%= request.getContextPath()%>/back/booking.jsp">
					<i class="bi bi-clipboard-plus"></i>
					<span class="menu-text" style="white-space: nowrap;">Quản lý phòng</span>
				</a>
			</li>
			<%} %>
			<% if (per.contains("read")) { %>
			<li>
				<a href="phongBook.html">
					<i class="bi bi-postcard-heart"></i>
					<span class="menu-text" style="white-space: nowrap;">Danh sách phòng đang đặt</span>
					
				</a>
			</li>
			<%} %>
			<% if (per.contains("read") && per.contains("update") && per.contains("delete") && per.contains("create")) { %>
			<li class="<%= currentPath.endsWith("/back/role.jsp") ? "active current-page" : "" %>">
		        <a href="<%= request.getContextPath() %>/back/role.jsp" name="menu_role">
		            <i class="bi bi-person-badge"></i>
		            <span class="menu-text" style="white-space: nowrap;">Quản lý quyền</span>
		        </a>
		    </li>
		    <li class="<%= currentPath.endsWith("/back/User.jsp") ? "active current-page" : "" %>">
		        <a href="<%= request.getContextPath() %>/back/User.jsp" name="menu_user">
		            <i class="bi bi-journal-text"></i>
		            <span class="menu-text" style="white-space: nowrap;">Hồ sơ người dùng</span>
		        </a>
		    </li>
		    <%} %>
		    <% if (per.contains("read") && per.contains("update")) { %>
			<li>
				<a href="phongTra.html">
					<i class="bi bi-card-checklist"></i>
					<span class="menu-text" style="white-space: nowrap;">Thanh toán</span>
				</a>
			</li>
			<%}
				}%>
		</ul>
	</div>
	<!-- Sidebar menu ends -->
	
</nav>
	<!-- Sidebar wrapper end -->