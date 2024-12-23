<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ads.objects.*" %>
<%@page import="ads.contact.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
	Contact u=new ContactImpl();	
%>
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
		<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
		<script type="text/javascript">
		
		function passIdToDelModal(id) { 
            document.getElementById("del_id").value = id;
        }		</script>
	</head>

	<body>
		<!-- Page wrapper start -->
		<div class="page-wrapper">

			<!-- Main container start -->
			<div class="main-container">

				<!-- Sidebar wrapper start -->
				<jsp:include page="/back/sidebar.jsp"></jsp:include>
				<!-- Sidebar wrapper end -->

				<!-- App container starts -->
				<div class="app-container">

					<!-- App header starts -->
					<jsp:include page="/back/header.jsp"></jsp:include>
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
												
											
													<table id="Table" class="table align-middle table-striped table-hover m-0 border rounded-3 mt-4">
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
															<% ArrayList<ResultSet> rs =u.getContact(null, 0, (byte)15);
															
																ResultSet r=rs.get(0);
																try {
																	while(r.next()) {
																		
																	
															%>
															
															<tr data-room="PK01" data-bed="Đơn" data-type="Phòng đơn">
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="name"><%=r.getString("full_name") %></td>
																<td class="phone"><%=r.getString("phone") %></td>
																<td class="email"><%=r.getString("email") %></td>
																<td><%=r.getString("contact_date") %></td>
																<td><%=r.getString("status") %></td>
																<td>
																	<form action="<%= request.getContextPath() %>/confirmcontact" method="post">
																	<input type="hidden" name="contact_id" value="<%=r.getInt("contact_id") %>">
																	<button type="submit" class="btn btn-primary" id="confirmDeleteBtn"><i class="bi bi-pencil-square"></i>Cho phép</button>
																	</form>
																</td>
																<td>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal" onclick="passIdToDelModal('<%= r.getInt("contact_id") %>')">
																		<i class="bi bi-trash"></i> Xoá
																	</a>
																</td>
															</tr>
															
															<%
																	} 
																}catch (SQLException e) {
																	// TODO Auto-generated catch block
																	e.printStackTrace();
																}
															%>
															
														</tbody>
													</table>
											<!-- Modal thư tin tức -->
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
											
											<!-- Modal xác nhận xóa -->
											<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
            									<div class="modal-dialog">
                									<div class="modal-content">
                    									<div class="modal-header">
                        									<h5 class="modal-title" id="deleteModalLabel">Xoá thư tin tức</h5>
                        									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    									</div>
                    									<div class="modal-body">
                       										 Bạn có chắc chắn muốn xoá thư này không?
                    									</div>
                   										<div class="modal-footer">
                        									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                        									<form action="<%= request.getContextPath() %>/delContact" method="post">
                        									<input type="hidden" name="contact_id_del" id="del_id">
                        									<button type="submit" class="btn btn-danger" id="confirmDeleteBtn">Đồng ý</button>
                        									</form>
                        										
                    										</div>
                										</div>
            									</div>
        									</div>
											
											<!-- Modal thông báo xóa thành công-->
											 <div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="successModalLabel" aria-hidden="true">
									            <div class="modal-dialog">
									                <div class="modal-content">
									                    <div class="modal-header">
									                        <h5 class="modal-title" id="successModalLabel">Thông báo</h5>
									                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									                    </div>
									                    <div class="modal-body">
									                        Thư đã được xoá thành công!
									                    </div>
									                    <div class="modal-footer">
									                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
									                    </div>
									                </div>
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
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
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
			$('#Table').DataTable({
			  paging: true,           
			  searching: false,         
			  ordering: false,          
			  lengthChange: false,     
			  pageLength: 5            
			});
			
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