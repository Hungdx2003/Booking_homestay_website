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
		<meta property="og:site_name" content="Bootstrap Gallery">
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
							<li >
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
                            <li class="breadcrumb-item">
								<a href="phongBook.html" class="text-decoration-none">Danh sách phòng đang đặt</a>
							</li>
							<!-- <li class="breadcrumb-item text-secondary">Danh sách phòng đang đặt</li> -->
                            <li class="breadcrumb-item text-secondary">Chi tiết phòng đang đặt</li>
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
										<p class="m-0 small opacity-50">levanminhn@gmail.com</p>
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
							bottom: 7px;
                        }
                    </style>
					<div class="app-body">
						<div class="card-header ngang mb-0">
                            <ul class="nav nav-pills text-uppercase">
                                <li class="nav-item">
                                  <a class="nav-link active " href="">Thông tin chi tiết phòng đặt</a>
                                </li>
								<!-- <li class="nav-item">
									<a class="nav-link active" href="themPhong.html">Đăng ký phòng</a>
								  </li>
                                
                               -->
                                
                              </ul>
                        </div>
						<hr class="mt-0">
						<!-- Container starts -->
						<!-- Container starts -->
						<div class="container-fluid">
							<div class="d-flex gap-2 justify-content-end mb-2">
								<!-- <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#confirmationModal">
									<i class="bi bi-plus-square"></i> Xác nhận
								</button>
								<button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#confirmModal">
									<i class="bi bi-pencil-square"></i> Huỷ
								</button> -->
								
								
								
								<a type="button" class="btn btn-secondary" href="phongBook.html">
									Quay lại
								</a>

							</div>
							<!-- Row start -->
							<div class="row gx-3">
								<div class="col-xxl-12">
									<div class="card mb-3">
										<div class="card-header ngang">
											<h5 class="card-title">Khách hàng</h5>
											
										</div>
										<div class="card-body">
											<!-- Row start -->
											<div class="row gx-3">
												
												
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Số phòng:</label>
														<div class="was-validated">
															<input type="text" class="form-control" id="validationCustom01" readonly="" placeholder="Số phòng" value="102"/>
														</div>
														
														
													</div>
												</div>
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Họ và tên:</label>
														<div class="was-validated">
														<input type="text" class="form-control" id="validationCustom01" readonly=""  
														placeholder="Họ và tên khách hàng" value="Nguyễn Minh An"/>
														</div>
													</div>
												</div>
												
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Giới tính</label>
														<div class="was-validated">
                                                            <input type="text" class="form-control" id="validationCustom01" readonly=""  
                                                            placeholder="" value="Nam"/>
												        </div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														
														<div class="m-0">
															<div class="form-label">Ngày sinh/ Tuổi</div>
															<div class="input-group">
																
																
																<input type="text" class="form-control datepickerC" />
																
																<input type="text" class="form-control" placeholder="" id="validationCustom01" readonly=""  value="25"/>
															
															</div>
															
														</div>
														
													</div>
												</div>
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Số CMT/CCCD</label>
														<div class="was-validated">
														<input type="text" class="form-control" id="validationCustom01" readonly=""  
														placeholder="Số CMT/ CCCD" value="1234567890"/>
													</div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Số điện thoại</label>
														<div class="was-validated">
														<input type="text" class="form-control" id="validationCustom01" readonly="" placeholder="SDT" value="0123456789"/>
													</div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Email</label>
														<input type="text" class="form-control" readonly placeholder="Email" value="nguyenminha@gmail.com"/>
													</div>
												</div>
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Nghề nghiệp</label>
														<!-- <select class="form-select" id="validationCustom04" required="">
															<option selected="" disabled="" value="">
																Nghề nghiệp
															</option>
															<option>Công chức</option>
															<option>Công nhân</option>
															<option>Giáo viên</option>
															<option>Học sinh</option>
															<option>Sinh viên</option>
														</select> -->
														<div class="was-validated">
                                                            <input type="text" class="form-control" id="validationCustom01" readonly=""  
                                                            placeholder="" value="Công chức"/>
												        </div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Quốc tịch</label>
														<div class="was-validated">
															<div class="was-validated">
                                                                <input type="text" class="form-control" id="validationCustom01" readonly=""  
                                                                placeholder="" value="Việt Nam"/>
                                                            </div>
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Tỉnh/ TP</label>
														<div class="was-validated">
															<div class="was-validated">
                                                                <input type="text" class="form-control" id="validationCustom01" readonly=""  
                                                                placeholder="" value="Hà Nội"/>
                                                            </div>
													</div>
													</div>
												</div>
												
												<div class="col-lg-6 col-sm-8 col-12">
													<div class="mb-3">
														<label class="form-label">Địa chỉ</label>
														<input type="text" class="form-control" placeholder="Địa chỉ khách hàng"  readonly
														value="Bắc Từ Liêm - Hà Nội"/>
													</div>
												</div>
												
												
												<div class="col-sm-6 col-12">
													<div class="mb-3">
														<label class="form-label">Ghi chú</label>
														<textarea class="form-control" placeholder="Enter message" rows="3" readonly></textarea>
													</div>
												</div>
												
												
												
											</div>
											<!-- Row end -->
										</div>
										
									</div>
								</div>
							</div>
								<!-- Row end -->
							<!-- Row start -->
							<div class="row gx-3">
								<div class="col-xxl-12">
									<div class="card mb-3">
										<div class="card-header">
											<h5 class="card-title">Thông tin phòng</h5>
										</div>
										<div class="card-body">
											<!-- Row start -->
											<div class="row gx-3">
											<div class="col-lg-4 col-sm-4 col-12">
												<div class="mb-3">
													<label class="form-label">Mã đăng ký phòng</label>
													<div class="was-validated">
														<input type="text" class="form-control" id="validationCustom01" readonly="" placeholder="Số phòng" value="102"/>
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-sm-4 col-12">
												<div class="mb-3">
													<label class="form-label">Ngày đặt</label>
													<div class="input-group">
														
                                                            <input type="text" class="form-control" id="validationCustom01" readonly=""  
                                                            placeholder="" value="03/06/2024"/>
												        
														<span class="input-group-text">
															<i class="bi bi-calendar4"></i>
														</span>
													</div>
												</div>
											</div>
										
											<div class="col-lg-4 col-sm-4 col-12">
												<div class="mb-3">
													<label class="form-label">Loại giường</label>
													<div class="was-validated">
                                                        <div class="was-validated">
                                                            <input type="text" class="form-control" id="validationCustom01" readonly=""  
                                                            placeholder="" value="TN01 - Đơn"/>
												        </div>
												</div>
												</div>
											</div>
											<div class="col-lg-4 col-sm-4 col-12">
												<div class="mb-3">
													<label class="form-label">Phòng đặt</label>
													<div class="was-validated">
                                                        <div class="was-validated">
                                                            <input type="text" class="form-control" id="validationCustom01" readonly=""  
                                                            placeholder="" value="PK01- Phòng đơn"/>
												        </div>
												</div>
												</div>
											</div>
											
										
										</div>
											<!-- Row end -->
										</div>
										
									</div>
								</div>
							</div>
							<!-- Row end -->

						</div>
						<!-- Container ends -->
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

		<!-- Modal -->
		<div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalLabel">Thông báo</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						Bạn có chắc chắn muốn xác nhận?
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
						<button type="button" class="btn btn-primary" id="confirmButton">Đồng ý</button>
					</div>
				</div>
			</div>
		</div>
	

		<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="confirmModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="confirmModalLabel">Xác nhận</h4>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						Bạn có chắc chắn muốn hủy đơn đặt này?
						<div class="form-group">
							<label for="deleteReason">Lý do hủy:</label>
							<input type="text" class="form-control" id="deleteReason" name="deleteReason">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
						<form method="post" action="">
							<input type="hidden" name="deleteReason" id="modalDeleteReason">
							<input type="submit" name="delete" value="Hủy đơn" class="btn btn-danger">
						</form>
					</div>
				</div>
			</div>
		</div>
		
		
	</body>
	<script>
    	document.getElementById('confirmButton').addEventListener('click', function() {
        	var modal = bootstrap.Modal.getInstance(document.getElementById('confirmationModal'));
        	modal.hide();
        	alert("Đã xác nhận!");
    	});
	</script>
</html>