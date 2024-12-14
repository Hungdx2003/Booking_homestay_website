<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ads.objects.*" %>
<%@page import="ads.user.*" %>
<%@page import="ads.role.*"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
	User u=new UserImpl();
%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>EASY STAY</title>

		<!-- Meta -->
		<meta name="description" content="Marketplace for Bootstrap Admin Dashboards" />
		<meta name="author" content="TVX Dentist Clinic" />
		<link rel="canonical" href="https://www.bootstrap.gallery/">
		<meta property="og:url" content="https://www.bootstrap.gallery">
		<meta property="og:title" content="Admin Templates - Dashboard Templates | Bootstrap Gallery">
		<meta property="og:description" content="Marketplace for Bootstrap Admin Dashboards">
		<meta property="og:type" content="Website">
		<meta property="og:site_name" content="TVX Dentist Clinic">
		<link rel="shortcut icon" href="assets/images/logotvx.png" />

		<!-- *************
			************ CSS Files *************
		************* -->
		<link rel="stylesheet" href="assets/fonts/bootstrap/bootstrap-icons.css" />
		<link rel="stylesheet" href="assets/css/main.min.css" />
		<link rel="stylesheet" href="assets/css/customize.css" />
		<!-- *************
			************ Vendor Css Files *************
		************ -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<!-- Scrollbar CSS -->
		<link rel="stylesheet" href="assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />
	</head>

	<body>
		<!-- Page wrapper start -->
		<div class="page-wrapper">

			<!-- Main container start -->
			<div class="main-container">

				<!-- Sidebar wrapper start -->
				<nav id="sidebar" class="sidebar-wrapper">

					<!-- App brand starts -->
					<div class="app-brand px-3 py-2 d-flex align-items-center">
						<a href="index.html" class="brand-link">
							<img src="assets/images/logo.png" alt="Bootstrap Gallery"  class="brand-image img-circle elevation-3" style="opacity: .8;"/>
							<span class="brand-text font-weight-light" style="color: rgb(26, 97, 169); font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"> EASY STAY</span>
						</a>
					</div>
					<!-- App brand ends -->

					<!-- Sidebar menu starts -->
					<jsp:include page="/back/sidebar.jsp"></jsp:include>
					<!-- Sidebar menu ends -->

				</nav>
				<!-- Sidebar wrapper end -->

				<!-- App container starts -->
				<div class="app-container">

					<!-- App header starts -->
					<jsp:include page="/back/header.jsp"></jsp:include>
					<!-- App header ends -->

					<!-- App body starts -->
					<div class="app-body">
						<!-- Container starts -->
						<div class="container-fluid">
                            <div class="row">
								<div class="pagetitle">
							      <h1>Thống kê người dùng</h1>
							    </div>
								<div class="col-lg-6">
								  <div class="card">
								    <div class="card-body">
								      <h5 class="card-title">Theo giới tính</h5>
								      <!-- Doughnut Chart -->
								      <canvas id="doughnutChart" style="max-height: 400px;"></canvas>
								      <script>
								        document.addEventListener("DOMContentLoaded", () => {
								          let genderData = <%= u.getCountOfGender(null) %>;
								          let labels = genderData.map(item => item.gender);
								          let data = genderData.map(item => item.count);
								          
								          new Chart(document.querySelector('#doughnutChart'), {
								            type: 'doughnut',
								            data: {
								              labels: labels,
								              datasets: [{
								                label: 'Số người dùng',
								                data: data,
								                backgroundColor: [
								                  'rgb(54, 162, 235)',
								                  'rgb(255, 99, 132)',
								                  'rgb(255, 205, 86)',
								                  'rgb(201, 203, 207)'
								                ],
								                hoverOffset: 4
								              }]
								            }
								          });
								        });
								      </script>
								    </div>
								  </div>
								</div>
			
								<div class="col-lg-6">
								    <div class="card">
								        <div class="card-body">
								            <h5 class="card-title">Theo nhóm tuổi</h5>
								
								            <!-- Bar Chart -->
								            <canvas id="barChart" style="max-height: 400px;"></canvas>
								            <script>
								                document.addEventListener("DOMContentLoaded", () => {
								                    // Giả định dữ liệu được trả về từ phương thức getCountOfAgeGroups
								                    const ageGroupData = <%= u.getCountOfAgeGroup(null)%>;
								                    // Tạo mảng labels và data cho biểu đồ
								                    const labels = ageGroupData.map(item => item.age_group);
								                    const data = ageGroupData.map(item => item.count);
								
								                    new Chart(document.querySelector('#barChart'), {
								                        type: 'bar',
								                        data: {
								                            labels: labels,
								                            datasets: [{
								                                label: 'Số người dùng',
								                                data: data,
								                                backgroundColor: [
								                                    'rgba(255, 99, 132, 0.2)',
								                                    'rgba(255, 159, 64, 0.2)',
								                                    'rgba(255, 205, 86, 0.2)',
								                                    'rgba(75, 192, 192, 0.2)',
								                                    'rgba(54, 162, 235, 0.2)'
								                                ],
								                                borderColor: [
								                                    'rgb(255, 99, 132)',
								                                    'rgb(255, 159, 64)',
								                                    'rgb(255, 205, 86)',
								                                    'rgb(75, 192, 192)',
								                                    'rgb(54, 162, 235)'
								                                ],
								                                borderWidth: 1
								                            }]
								                        },
								                        options: {
								                            scales: {
								                                y: {
								                                    beginAtZero: true
								                                }
								                            }
								                        }
								                    });
								                });
								            </script>
								            <!-- End Bar Chart -->
								        </div>
								    </div>
								</div>
      						</div>
						</div>
						<!-- Container ends -->

					</div>
					<!-- App body ends -->

					<!-- App footer start -->
					<div class="app-footer">
						<span>© EASY STAY 2024</span>
					</div>
					<!-- App footer end -->

				</div>
				<!-- App container ends -->

			</div>
			<!-- Main container end -->

		</div>
		<!-- Page wrapper end -->

		<!-- *************
			************ JavaScript Files *************
		************* -->
		<!-- Required jQuery first, then Bootstrap Bundle JS -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.bundle.min.js"></script>
        
		<!-- *************
			************ Vendor Js Files *************
		************* -->

		<!-- Overlay Scroll JS -->
		<script src="assets/vendor/overlay-scroll/jquery.overlayScrollbars.min.js"></script>
		<script src="assets/vendor/overlay-scroll/custom-scrollbar.js"></script>

		<!-- Custom JS files -->
		<script src="assets/js/custom.js"></script>
	</body>
  <!-- Vendor JS Files -->
  <script src="assets/chart.js/chart.umd.js"></script>
  <script src="assets/echarts/echarts.min.js"></script>
  <script src="assets/vendor/apex/apexcharts.min.js"></script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</html>