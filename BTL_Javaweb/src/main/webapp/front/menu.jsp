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
                        <% 
                            HttpSession s = request.getSession(false);
                            ResultSet logUser = (ResultSet) s.getAttribute("logUser");
            				String currentPath = request.getRequestURI();
                        %>
                        
                        <li class="menu__item <%= currentPath.endsWith("/front/index.jsp") ? "menu__item--current" : "" %>">
                        <a href="<%= request.getContextPath()%>/front/index.jsp" class="menu__link">Trang chủ</a></li>
                        
                        <!-- Đặt phòng -->
                        <li class="menu__item <%= currentPath.endsWith("/front/reservation.jsp") ? "menu__item--current" : "" %>">
                            <a href="<%= (logUser == null) ? "#" : "reservation.jsp" %>" class="menu__link" 
                                onclick="return checkLogin();">Đặt phòng</a>
                        </li>

                        <!-- Xem đơn đặt phòng -->
                        <li class="menu__item <%= currentPath.endsWith("/front/check.jsp") ? "menu__item--current" : "" %>">
                            <a href="<%= (logUser == null) ? "#" : "check.jsp" %>" class="menu__link" 
                                onclick="return checkLogin();">Xem đơn đặt phòng</a>
                        </li>

                        <!-- Liên hệ -->
                        <li class="menu__item"><a href="#contact" class="menu__link scroll">Liên hệ</a></li>

                        <% 
                            if (s != null && logUser != null) {
                                String customerName = logUser.getString("user_full_name").toUpperCase();
                        %>
                            <li><a class="menu__link"><b><%= customerName %></b></a></li>
                            <li class="menu__item w-100 text-right"><a href="<%= request.getContextPath() %>/logout" class="menu__link">Đăng xuất</a></li>
                        <% 
                            } else {
                        %>
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

<script type="text/javascript">
    function checkLogin() {
        <% 
            if (logUser == null) {
        %>
            alert("Vui lòng đăng nhập để truy cập chức năng này.");
            return false;
        <% 
            } else {
        %>
            return true;
        <% 
            }
        %>
    }
    
    document.addEventListener("DOMContentLoaded", function () {
        // Lấy tất cả các phần tử li có class "menu__item"
        const menuItems = document.querySelectorAll('.menu__list .menu__item');

        menuItems.forEach(item => {
            // Gắn sự kiện click vào từng thẻ li
            item.addEventListener('click', function () {
                // Loại bỏ class "menu__item--current" khỏi tất cả các mục menu
                menuItems.forEach(i => i.classList.remove('menu__item--current'));

                // Thêm class "menu__item--current" vào thẻ li được nhấn
                this.classList.add('menu__item--current');
            });
        });
    });
</script>
