<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="ads.objects.*" %>
<%@page import="ads.payment.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
	Payment u=new PaymentImpl();	
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

		<!-- Scrollbar CSS -->
		<link rel="stylesheet" href="assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />

		<!-- Date Range CSS -->
		<link rel="stylesheet" href="assets/vendor/daterange/daterange.css" />
		<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
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
											<h4 class="card-title">Danh sách thanh toán</h4>
										</div>
										
										<div class="card-body">
											<div class="row gx-3">
												<div class="col-lg-3 col-sm-3 col-12">
													<div class="mb-3">
														<label class="form-label">Tìm kiếm hoá đơn</label>
														
														<input type="text" class="form-control" id="searchInput" required=""  
														placeholder="Tìm kiếm theo ID, tên" value=""/>
														
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
												
											
													<table id="Table" class="table align-middle table-striped table-hover m-0 border rounded-3 mt-4">
														<thead>
															<tr>
																<th></th>
																<th>Mã thanh toán</th>
																<th>Tên khách hàng</th>
																<th>Ngày thanh toán</th>
                                                                <th>Số tiền thanh toán</th>
																<th>Trạng thái</th>
																<th>Thao tác</th>
															</tr>
														</thead>
														<tbody id="invoiceTable">
														<% ArrayList<ResultSet> rs =u.getPayment(null, 0, (byte)15);
															
																ResultSet r=rs.get(0);
																try {
																	while(r.next()) {	
															%>
															<tr>
																<th>
																	<input class="form-check-input" type="checkbox" value="option1" />
																</th>
																<td class="id"><%=r.getInt("payment_id") %></td>
																<td class="name"><%=r.getString("user_full_name") %></td>
																<td><%=r.getString("pay_date") %></td>
																<td><%=r.getInt("amount") %></td>
																<td><%=r.getString("status") %></td>
																<td>
																	<a href="<%=request.getContextPath()%>/back/chiTietHoaDon.jsp?pay_id=<%=r.getInt("payment_id")%>"
																		type="button" class="btn btn-success"
																		style="display: inline-flex; align-items: center;">
																		<i class="bi bi-eye" style="font-size: 16px; margin-right: 5px;"></i> View
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
		<script type="text/javascript">
			$('#Table').DataTable({
			  paging: true,            
			  searching: false,         
			  ordering: false,          
			  lengthChange: false,     
			  pageLength: 5            
			});
			document.getElementById('searchInput').addEventListener('input', function() {
    		var input = this.value.toLowerCase(); 
   			var rows = document.getElementById('invoiceTable').getElementsByTagName('tr'); 


    		for (var i = 0; i < rows.length; i++) {
        	var idCell = rows[i].getElementsByClassName('id')[0];
        	var nameCell = rows[i].getElementsByClassName('name')[0]; 

 
        	if (idCell && nameCell) {
            	var idText = idCell.textContent.toLowerCase(); 
            	var nameText = nameCell.textContent.toLowerCase();     
            	if (idText.includes(input) || nameText.includes(input)) {
                	rows[i].style.display = ''; 
            		} else {
                			rows[i].style.display = 'none'; 
            			}
        			}
    			}
			});
		</script>
	</body>

</html>