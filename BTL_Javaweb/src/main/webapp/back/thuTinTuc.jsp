<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>EASY STAY</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
							<li class="active current-page">
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
							<li>
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
							<li class="breadcrumb-item text-secondary">Thư tin tức</li>
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
                                  <h3 class=" active" href="">Bảng tin tức</h3>
                                </li>
								<!-- <li class="nav-item">
									<a class="nav-link" href="xemChiTiet.html">Thông tin phòng? Đăng ký phòng</a>
								  </li> -->
                               
                              </ul>
                        </div>
						<hr class="mt-0">
						<!-- Container starts -->
						<div class="container-fluid">

							<!-- Row start -->
							<div class="row">
								<div class="col-12">
									<div class="card mb-3">
										
										<div class="card-header ngang">
											<h4 class="card-title">Gửi tin tức cho người theo dõi</h4>
											<div class="nut">
												<a type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myModal">
													<i class="bi bi-send"></i> Gửi thư mới
												</a>
											</div>	
										</div>
										<div class="card-body">
											<div class="row gx-3">

												<div class="col-lg-4 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Tìm kiếm </label>
														
														<input type="text" class="form-control" id="searchInput" required=""  
														placeholder="Tìm kiếm theo tên, email, số điện thoại,..." value=""/>
														
													</div>
												</div>
												
												<div class="col-lg-1 col-sm-1 col-12 mt-2">
													<label class="form-label text-primary"></label>
													<div class="input-group ">
														
														<button class="btn btn-primary" type="button" id="searchBtn">
															Search
														</button>
													</div>
												</div>
												</div>
												
											<div class="border border-dark rounded-3 mt-4">
												<div class="table-responsive">
													<table class="table align-middle table-striped table-hover m-0">
														<thead>
															<tr>
																<th></th>
																<th>Tên khách hàng</th>
																<th>Số điện thoại</th>
																<th>Email</th>
                                                                <th>Ngày gửi</th>
																<th>Trạng thái</th>		
																<th>Sự cho phép</th>
																<th>Thao tác</th>																												
															</tr>
														</thead>
														
														<tbody id="roomTable">
															<!-- Dữ liệu phòng -->
															<tr data-room="PK01" data-bed="Đơn" data-type="Phòng đơn">
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="name">Đình Xuân Hưng</td>
																<td class="phone">0923456789</td>
																<td class="email">dinhxuanhung@gmail.com</td>
																<td>2023-12-03</td>
																<td>Không cho phép</td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal">
																		<i class="bi bi-pencil-square"></i> Cho phép
																	</a>
																	
																</td>
																<td>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal">
																		<i class="bi bi-trash"></i> Xoá
																	</a>
																</td>
															</tr>
															<tr>
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="name">Lê Văn Minh</td>
																<td class="phone">019263785</td>
																<td class="email">levanminh@gmail.com</td>
																<td>2023-02-03</td>
																<td>Không cho phép</td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal">
																		<i class="bi bi-pencil-square"></i> Cho phép
																	</a>
																	
																</td>
																<td>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal">
																		<i class="bi bi-trash"></i> Xoá
																	</a>
																</td>
															</tr>
															<tr>
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="name">Vũ Quang Minh</td>
																<td class="phone">01253749753</td>
																<td class="email">vuquangminh@gmail.com</td>
																<td>2023-09-12</td>
																<td>Không cho phép</td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal">
																		<i class="bi bi-pencil-square"></i> Cho phép
																	</a>
																	
																</td>
																<td>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal">
																		<i class="bi bi-trash"></i> Xoá
																	</a>
																</td>
															</tr>
															<tr>
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="name">Đình Xuân Hưng</td>
																<td class="phone">0923456789</td>
																<td class="email">dinhxuanhung@gmail.com</td>
																<td>2023-12-3</td>
																<td>Không cho phép</td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal">
																		<i class="bi bi-pencil-square"></i> Cho phép
																	</a>
																	
																</td>
																<td>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal">
																		<i class="bi bi-trash"></i> Xoá
																	</a>
																</td>
															</tr>
															<tr>
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="name">Đình Xuân Hưng</td>
																<td class="phone">0923456789</td>
																<td class="email">dinhxuanhung@gmail.com</td>
																<td>2023-12-3</td>
																<td>Không cho phép</td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal">
																		<i class="bi bi-pencil-square"></i> Cho phép
																	</a>
																	
																</td>
																<td>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal">
																		<i class="bi bi-trash"></i> Xoá
																	</a>
																</td>
															</tr>
															<tr>
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="name">Đình Xuân Hưng</td>
																<td class="phone">0923456789</td>
																<td class="email">dinhxuanhung@gmail.com</td>
																<td>2023-12-3</td>
																<td>Không cho phép</td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal">
																		<i class="bi bi-pencil-square"></i> Cho phép
																	</a>
																	
																</td>
																<td>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal">
																		<i class="bi bi-trash"></i> Xoá
																	</a>
																</td>
															</tr>
															<tr>
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="name">Đình Xuân Hưng</td>
																<td class="phone">0923456789</td>
																<td class="email">dinhxuanhung@gmail.com</td>
																<td>2023-12-3</td>
																<td>Không cho phép</td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal">
																		<i class="bi bi-pencil-square"></i> Cho phép
																	</a>
																	
																</td>
																<td>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal">
																		<i class="bi bi-trash"></i> Xoá
																	</a>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<!-- Modal -->
											<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="myModalLabel">Soạn thư</h4>
															<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<form method="post">
															<div class="modal-body">
																<div class="form-group">
																	<label>Tiêu đề</label>
																	<input name="title" class="form-control" placeholder="Nhập tiêu đề">
																</div>
																<div class="form-group mt-3">
																	<label>Người cần gửi</label>
																	<input name="subject" class="form-control" placeholder="Nhập người cần gửi">
																</div>
																<div class="form-group mt-3">
																	<label for="comment">Tin tức</label>
																	<textarea name="news" class="form-control" rows="5" id="comment"></textarea>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default" data-bs-dismiss="modal">Đóng</button>
																<input type="submit" name="log" value="Gửi" class="btn btn-primary">
															</div>
														</form>
													</div>
												</div>
											</div>
											
											<!-- Phân trang -->
											<nav aria-label="Page navigation example">
												<ul class="pagination justify-content-left" style="margin-top: 20px;" id="pagination">
												  <li class="page-item" id="prevPage">
													<a class="page-link" href="#" aria-label="Previous" onclick="changePage('prev')">Previous</a>
												  </li>
												  <li class="page-item" id="page1" class="active">
													<a class="page-link" href="#" onclick="changePage(1)">1</a>
												  </li>
												  <li class="page-item" id="page2">
													<a class="page-link" href="#" onclick="changePage(2)">2</a>
												  </li>
												  <li class="page-item" id="nextPage">
													<a class="page-link" href="#" aria-label="Next" onclick="changePage('next')">Next</a>
												  </li>
												</ul>
											</nav>

											
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
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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

		<script>
			let currentPage = 1;
			const recordsPerPage = 5;  
			const totalRows = document.getElementById('roomTable').children.length;
			const totalPages = Math.ceil(totalRows / recordsPerPage);  
		

			function changePage(page) {
				if (page < 1 || page > totalPages) return;  
				currentPage = page;
				const rows = document.getElementById('roomTable').children;
				let start = (page - 1) * recordsPerPage;
				let end = start + recordsPerPage;
		

				for (let i = 0; i < totalRows; i++) {
					rows[i].style.display = 'none';
				}
	
				for (let i = start; i < end && i < totalRows; i++) {
					rows[i].style.display = '';
				}

				updatePagination();
			}


			function updatePagination() {
				const pagination = document.getElementById('pagination');
				pagination.innerHTML = '';

				const prevPage = document.createElement('li');
				prevPage.classList.add('page-item');
				prevPage.innerHTML = `<a class="page-link" href="#" onclick="changePage(${currentPage - 1})">Previous</a>`;
				prevPage.classList.toggle('disabled', currentPage === 1);
				pagination.appendChild(prevPage);

				for (let i = 1; i <= totalPages; i++) {
					const pageItem = document.createElement('li');
					pageItem.classList.add('page-item');
					pageItem.classList.toggle('active', currentPage === i);
					pageItem.innerHTML = `<a class="page-link" href="#" onclick="changePage(${i})">${i}</a>`;
					pagination.appendChild(pageItem);
				}
		

				const nextPage = document.createElement('li');
				nextPage.classList.add('page-item');
				nextPage.innerHTML = `<a class="page-link" href="#" onclick="changePage(${currentPage + 1})">Next</a>`;
				nextPage.classList.toggle('disabled', currentPage === totalPages);
				pagination.appendChild(nextPage);
			}

			window.onload = function() {
				changePage(1); 
			};

			$("#searchBtn").click(function () {
                var searchValue = $("#searchInput").val().toLowerCase(); // Lấy giá trị tìm kiếm và chuyển về chữ thường
                filterTable(searchValue); // Gọi hàm lọc bảng
            });

            // Tự động tìm kiếm khi người dùng gõ
            $("#searchInput").on("keyup", function () {
                var searchValue = $(this).val().toLowerCase();
                filterTable(searchValue); // Gọi hàm lọc bảng
            });

            // Hàm lọc bảng
            function filterTable(searchValue) {
                let found = false; // Biến dùng để kiểm tra nếu có dòng nào khớp với tìm kiếm

                $("#roomTable tr").each(function () {
                    var row = $(this);
                    var name = row.find(".name").text().toLowerCase();
                    var phone = row.find(".phone").text().toLowerCase();
                    var email = row.find(".email").text().toLowerCase();

                    // Kiểm tra nếu từ khóa tìm kiếm có trong một trong ba cột: tên, điện thoại, email
                    if (name.indexOf(searchValue) === -1 && phone.indexOf(searchValue) === -1 && email.indexOf(searchValue) === -1) {
                        row.hide(); // Ẩn dòng nếu không tìm thấy
                    } else {
                        row.show(); // Hiển thị dòng nếu tìm thấy
                        found = true;
                    }
                });

                // Nếu không tìm thấy bất kỳ dòng nào, hiển thị thông báo
                if (!found) {
                    alert("Không tìm thấy kết quả.");
                }
            }
		</script>
		
</html>