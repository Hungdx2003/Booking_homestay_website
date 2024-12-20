<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

		<!-- Scrollbar CSS -->
		<link rel="stylesheet" href="assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />

		<!-- Date Range CSS -->
		<link rel="stylesheet" href="assets/vendor/daterange/daterange.css" />
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
					<div class="sidebarMenuScroll">
						<ul class="sidebar-menu">
							<li>
								<a href="trangThai.html">
									<i class="bi bi-pen"></i>
									<span class="menu-text" style="white-space: nowrap;">Trạng thái</span>
								</a>
							</li>
							<!-- <li>
								<a href="henDat.html">
									<i class="bi bi-journal-text"></i>
									<span class="menu-text" style="white-space: nowrap;">Danh sách hẹn đặt phòng</span>
								</a>
							</li> -->
							<li>
								<a href="thuTinTuc.html">
									<i class="bi bi-newspaper"></i>
									<span class="menu-text" style="white-space: nowrap;">Thư tin tức</span>
								</a>
							</li>
							<li>
								<a href="quanLyPhong.html">
									<i class="bi bi-clipboard-plus"></i>
									<span class="menu-text" style="white-space: nowrap;">Quản lý phòng</span>
								</a>
							</li>
							<li class="active current-page">
								<a href="phongBook.html">
									<i class="bi bi-postcard-heart"></i>
									<span class="menu-text" style="white-space: nowrap;">Danh sách phòng đang đặt</span>
									
								</a>
							</li>
							<li>
								<a href="quyen.html">
									<i class="bi bi-person-badge"></i>
									<span class="menu-text" style="white-space: nowrap;">Quản lý quyền</span>
								</a>
							</li>
							<li>
								<a href="admin.html">
									<i class="bi bi-journal-text"></i>
									<span class="menu-text" style="white-space: nowrap;">Hồ sơ người dùng</span>
								</a>
							</li>
							<li>
								<a href="phongTra.html">
									<i class="bi bi-card-checklist"></i>
									<span class="menu-text" style="white-space: nowrap;">Thanh toán</span>
								</a>
							</li>
							
							<li>
								<a href="DanhSach.html">
									<i class="bi bi-wallet2"></i>
									<span class="menu-text" style="white-space: nowrap;">Thống kê</span>
								</a>
							</li>
						</ul>
					</div>
					<!-- Sidebar menu ends -->

				</nav>
				<!-- Sidebar wrapper end -->

				<!-- App container starts -->
				<div class="app-container">

					<!-- App header starts -->
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
								<img src="assets/images/logotvx.png" class="logo" alt="TVX Dentist Clinic">
							</a>
						</div>
						<!-- App brand sm end -->

						<!-- Breadcrumb start -->
						<ol class="breadcrumb d-none d-lg-flex ms-3">
							<li class="breadcrumb-item">
								<i class="bi bi-house lh-1"></i>
								<a href="index.html" class="text-decoration-none">Home</a>
							</li>
							<li class="breadcrumb-item text-secondary">Danh sách phòng đang đặt</li>
						</ol>
						<!-- Breadcrumb end -->

						<!-- App header actions start -->
						<div class="header-actions">
							<div class="dropdown">
								<a class="dropdown-toggle d-flex px-3 py-4 position-relative" href="#!" role="button"
									data-bs-toggle="dropdown" aria-expanded="false">
									<img src="assets/images/flags/1x1/vn.svg" class="flag-img" alt="TVX Dentist Clinic" />
								</a>
								<div class="dropdown-menu dropdown-menu-end shadow-sm dropdown-menu-mini">
									<div class="country-container">
										<a href="index.html" class="py-2">
											<img src="assets/images/flags/1x1/gb.svg" alt="Admin Panel" />
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
									<img src="assets/images/soCute.jpg" class="rounded-2 img-3x" alt="Bootstrap Gallery" />
								</a>
								<div class="dropdown-menu dropdown-menu-end shadow-sm">
									<div class="p-3 border-bottom mb-2">
										<h6 class="mb-1">Lê Văn Minh</h6>
										<p class="m-0 small opacity-50">levanminh@gmail.com</p>
									</div>
									<a class="dropdown-item d-flex align-items-center" href="canhan.html"><i
										class="bi bi-person fs-4 me-2"></i>Thông tin</a>
								<a class="dropdown-item d-flex align-items-center" href="canhan.html"><i
										class="bi bi-gear fs-4 me-2"></i>Đổi mật khẩu</a>
								<div class="d-grid p-3 py-2">
									<a class="btn btn-danger" href="login.html">Đăng xuất</a>
								</div>
								</div>
							</div>
						</div>
						<!-- App header actions end -->

					</div>
					<!-- App header ends -->

					<!-- App body starts -->
                    <style>
                        .ngang{
                            display: flex;
                            position: relative;
                        }
                        .nut{
                            position: absolute;
                            right: 30px;
                        }
                    </style>
					<div class="app-body">
						
						<!-- Container starts -->
						<div class="container-fluid">

							<!-- Row start -->
							<div class="row">
								<div class="col-12">
									<div class="card mb-3">
										<div class="card-header ngang" >
											<h4 class="card-title">Phòng đang sử dụng</h4>
                                            <div class="nut">
                                                <!-- <button type="button" class="btn btn-success" fdprocessedid="xxzmhb">
                                                    <i class="bi bi-printer"></i> Print
                                                </button> -->
                                               
                                            </div>
										</div>
										
										<div class="card-body">
											<div class="row gx-3">
												<div class="col-lg-4 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Từ ngày - Đến ngày (*)</label>
														<div class="was-validated">
															<div class="input-group">
																<input type="text" class="form-control " value="03/06/2024 - 04/06/2024">
																<span class="input-group-text">
																	<i class="bi bi-calendar4" ></i>
																</span>
															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-4 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Chọn phòng (*)</label>
														<div class="was-validated">
															<select class="form-select" id="validationCustom04" required="">
																<option selected=""  value="">
																	Tất cả
																</option>
																<option selected>PK01 - Phòng đơn</option>
																<option>PK02 - Phòng đôi</option>
																<option >PK03 - Phòng sang trọng</option>
																<option >PK04 - Phòng cao cấp</option>
															</select>
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-3 col-12">
													<div class="mb-3">
														<label class="form-label">Tìm kiếm số phòng</label>
														
														<input type="text" class="form-control" id="validationCustom01" required=""  
														placeholder="" value="102"/>
														
													</div>
												</div>
												
												<div class="col-lg-1 col-sm-1 col-12 mt-2">
													<label class="form-label text-primary"></label>
													<div class="input-group ">
														
														<button class="btn btn-primary" type="button">
															Search
														</button>
													</div>
												</div>
												</div>
												
												<div class="border border-dark rounded-3">
													<div class="table-responsive">
														<table class="table align-middle table-striped table-hover m-0">
															<thead>
																<tr>
																	<th></th>
																	<th>Số</th>
																	<th>Thời gian</th>
																	<th>Họ và tên</th>
																	<th>Giới tính</th>
																	<th>Ngày sinh</th>
																	<th>Địa chỉ</th>
																	<th>CMND</th>
																	<th>Số phòng</th>
																	<th>Trạng thái</th>
																	<th>Thao tác</th>
																	
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th>
																		<input class="form-check-input" type="checkbox" value="option1" />
																	</th>
																	<td>1</td>
																	<td >03/06/2024 07:30</td>
																	<td>Nguyễn Minh An</td>
																	<td>Nam</td>
																	<td>1999</td>
																	<td>
																		Thanh Trì, Hà Nội
																	</td>
																	<td>
																		1234567890
																	</td>
																	<td>102</td>
																	<td>Đang sử dụng</td>
																	<td>
																		<a href="xemPhongDat.html" type="button" class="btn btn-success"><i class="bi bi-eye"></i> View</a>
																	</td>
																</tr>
																<tr>
																	<th>
																		<input class="form-check-input" type="checkbox" value="option2"  />
																	</th>
																	<td>2</td>
																	<td>03/06/2024 07:35</td>
																	<td>Lê Huỳnh Mai</td>
																	<td>Nữ</td>
																	<td>2001</td>
																	<td>
																		Hoàng Mai, Hà Nội
																	</td>
																	<td>
																	   9876543210
																	</td>
																	<td>103</td>
																	<td>Đang sử dụng</td>
																	<td>
																		<a href="" type="button" class="btn btn-success"><i class="bi bi-eye"></i> View</a>
																	</td>
																</tr>
																<tr>
																	<th>
																		<input class="form-check-input" type="checkbox" value="option3" />
																	</th>
																	<td>3</td>
																	<td>03/06/2024 07:40</td>
																	<td>Trần Quang Khánh</td>
																	<td>Nam</td>
																	<td>1994</td>
																	<td>
																		Cầu Giấy, Hà Nội
																	</td>
																	<td>
																		9876543210
																	 </td>
																	 <td>104</td>
																	 <td>Đang sử dụng</td>
																	 <td>
																		<a href="" type="button" class="btn btn-success"><i class="bi bi-eye"></i> View</a>
																	</td>
																</tr>
																<tr>
																	<th>
																		<input class="form-check-input" type="checkbox" value="option4"  />
																	</th>
																	<td>4</td>
																	<td>03/06/2024 07:56</td>
																	<td>Vũ Ngọc Linh</td>
																	<td>Nữ</td>
																	<td>2005</td>
																	<td>
																		Nam Từ Liêm, Hà Nội
																	</td>
																	<td>
																		9876543210
																	 </td>
																	 <td>105</td>
																	 <td>Đang sử dụng</td>
																	 <td>
																		<a href="" type="button" class="btn btn-success"><i class="bi bi-eye"></i> View</a>
																	</td>
																</tr>
																<tr>
																	<th>
																		<input class="form-check-input" type="checkbox" value="option5"  />
																	</th>
																	<td>5</td>
																	<td>03/06/2024 08:10</td>
																	<td>Đinh Thị Thanh Nhàn</td>
																	<td>Nữ</td>
																	<td>2003</td>
																	<td>
																		Thanh Xuân, Hà Nội
																	</td>
																	<td>
																		9876543210
																	 </td>
																	 <td>106</td>
																	 <td>Đang sử dụng</td>
																	 <td>
																		<a href="" type="button" class="btn btn-success"><i class="bi bi-eye"></i> View</a>
																	</td>
																</tr>
																<tr>
																	<th>
																		<input class="form-check-input" type="checkbox" value="option6"  />
																	</th>
																	<td>6</td>
																	<td>03/06/2024 08:23</td>
																	<td>Bùi Anh Tuấn</td>
																	<td>Nam</td>
																	<td>1995</td>
																	<td>
																		Đống Đa, Hà Nội
																	</td>
																	<td>
																		9876543210
																	 </td>
																	 <td>107</td>
																	 <td>Đang sử dụng</td>
																	 <td>
																		<a href="" type="button" class="btn btn-success"><i class="bi bi-eye"></i> View</a>
																	</td>
																</tr>
															
															</tbody>
														</table>
													</div>
												</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Row end -->

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

		<!-- Moment JS -->
		<script src="assets/js/moment.min.js"></script>

		<!-- Date Range JS -->
		<script src="assets/vendor/daterange/daterange.js"></script>
		<script src="assets/vendor/daterange/custom-daterange.js"></script>

		<!-- Custom JS files -->
		<script src="assets/js/custom.js"></script>
	</body>

</html>