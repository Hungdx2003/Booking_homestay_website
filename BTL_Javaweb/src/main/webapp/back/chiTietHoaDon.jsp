<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="ads.payment.PaymentImpl"%>
<%@page import="ads.payment.Payment"%>
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
                                  <a class="nav-link active " href="">Thông tin chi tiết thanh toán</a>
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
							<%
								int pay_id=Integer.parseInt(request.getParameter("pay_id"));
								Payment p=new PaymentImpl();
								ResultSet rs=p.getPayment(pay_id);
								try{
									if(rs.next()){
							%>
							<div class="d-flex gap-2 justify-content-end mb-2">
								<% if(rs.getString("status").equalsIgnoreCase("Chưa thanh toán")){%>
								<form action="<%= request.getContextPath() %>/editPayment" method="post">
									<input type="hidden" name="pay_id" value="<%=pay_id%>">
									<input type="hidden" name="amount" value="<%=rs.getInt("room_price")* rs.getInt("est_Days")%>">
									<button type="submit" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#confirmationModal">
										<i class="bi bi-plus-square"></i> Thanh toán
									</button>
								</form>
								<%} %>
								<a type="button" class="btn btn-secondary" href="<%= request.getContextPath() %>/back/phongTra.jsp">
									Quay lại
								</a>

							</div>
							
							<!-- Row start -->
							<div class="container mt-5">
								<!-- Tiêu đề và mô tả -->
								<div class="row">
									<div class="col-12 text-center">
										<h2 class="fw-bold">Chi tiết thanh toán</h2>
										<p class="text-muted">Dưới đây là thông tin chi tiết về phiếu thu và các khoản thanh toán của khách hàng.</p>
									</div>
								</div>
							
								<!-- Thông tin khách hàng -->
								<div class="row gx-3 my-4">
									<div class="col-md-6">
										<div class="card shadow p-3">
											<h5 class="fw-bold">Thông tin khách hàng</h5>
											<p><strong>Mã thanh toán:</strong> <%=pay_id%></p>
											<p><strong>Tên khách hàng:</strong> <%=rs.getString("user_full_name") %></p>
											<p><strong>Số điện thoại:</strong> <%=rs.getString("user_phone_number") %></p>
											<p><strong>Email:</strong> <%=rs.getString("user_email") %></p>
											<p><strong>Ngày thanh toán:</strong> <%=rs.getString("pay_date") %></p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="card shadow p-3">
											<h5 class="fw-bold">Tổng quan thanh toán</h5>
											<p>
											  <span style="display: inline-block; margin-right: 100px;">
											    <strong>Ngày nhận phòng:</strong> <%=rs.getString("check_in_date") %>
											  </span>
											  <span>
											    <strong>Ngày trả phòng:</strong> <%=rs.getString("check_out_date") %>
											  </span>
											</p>
											<p><strong>Tổng ngày lưu trú:</strong> <%=rs.getInt("est_Days") %></p>
											<p><strong>Loại phòng:</strong> <%=rs.getString("room_type") %></p>
											<p><strong>Loại giường:</strong> <%=rs.getString("room_noBeds") %></p>
											<p><strong>Trạng thái:</strong> <span class="badge bg-success"><%=rs.getString("status") %></span></p>
										</div>
									</div>
								</div>
							
								<!-- Chi tiết thanh toán -->
								<div class="row">
									<div class="col-12">
										<div class="card shadow">
											<div class="card-body">
												<h5 class="fw-bold">Chi tiết các khoản thanh toán</h5>
												<div class="table-responsive mt-3">
													<table class="table table-striped table-hover align-middle">
														<thead>
															<tr>
																<th>Thông tin</th>
																<th>Số lượng</th>
																<th>Đơn giá</th>
																<th>Thành tiền</th>
																<th>Mã giảm giá</th>
																<th>Tổng</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Tổng ngày</td>
																<td><%=rs.getInt("est_Days") %></td>
																<td>-</td>
																<td>-</td>
																<td>-</td>
																<td><%=rs.getInt("est_Days") %></td>
															</tr>
															<tr>
																<td>Phòng</td>
																<td>1</td>
																<td><%=rs.getInt("room_price") %></td>
																<td><%=rs.getInt("room_price") %></td>
																<td>-</td>
																<td><%=rs.getInt("room_price") %></td>
															</tr>
															<tr>
																<td>Phí dịch vụ</td>
																<td>-</td>
																<td>FREE</td>
																<td>-</td>
																<td>-</td>
																<td>0</td>
															</tr>
															<tr class="text-danger fw-bold">
																<td>Thành tiền</td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td><%=rs.getInt("room_price")* rs.getInt("est_Days")%></td>
															</tr>
														</tbody>
													</table>
												</div>
												<p class="text-muted fst-italic mt-2">
													* Khách hàng thanh toán: Bằng <%=rs.getString("pay_method") %>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
									} 
								}catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							%>	
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
	</body>
	<script>
    	document.getElementById('confirmButton').addEventListener('click', function() {
        	var modal = bootstrap.Modal.getInstance(document.getElementById('confirmationModal'));
        	modal.hide();
        	alert("Đã xác nhận!");
    	});
	</script>
</html>