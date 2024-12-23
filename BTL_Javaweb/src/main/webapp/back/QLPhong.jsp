<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ads.objects.*" %>
<%@page import="ads.room.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
	room u=new roomImpl();	
	//ArrayList<ResultSet> listrl=u.getRoom(null, 0, (byte)15);
	//ResultSet rs = listrl.get(0);
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
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- *************
			************ Vendor Css Files *************
		************ -->

		<!-- jquery -->
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		

		<!-- Scrollbar CSS -->
		<link rel="stylesheet" href="assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />

		<!-- Date Range CSS -->
		<link rel="stylesheet" href="assets/vendor/daterange/daterange.css" />
		<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
		<script>
        function passIdToModal(id) { 
            document.getElementById("updateId").value = id;
            $.ajax({
                url: "<%= request.getContextPath() %>/getRoomById",
                method: "GET",
                data: { room: id },
                success: function(data) {
                    $('#roomSelect').val(data.room_type);
                    $('#bedSelect').val(data.room_noBeds);
                    $('#nameT').val(data.room_name);
                    $('#IntN').val(data.room_maxCapacity);
                }
            });
        }
        function passIdToDelModal(id) { 
            document.getElementById("deleteId").value = id;
        }
    </script>
	</head>

	<body>
		<!-- Page wrapper start -->
		<div class="page-wrapper">

			<!-- Main container start -->
			<div class="main-container">

				<jsp:include page="/back/sidebar.jsp"></jsp:include>

				<!-- App container starts -->
				<div class="app-container">

					<!-- App header starts -->
					<jsp:include page="/back/header.jsp"></jsp:include>
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
						<div class="card-header ngang mb-0">
                            <ul class="nav nav-pills text-uppercase">
                                <li class="nav-item">
                                  <a class="nav-link active" href="trangThai.html">Danh sách</a>
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
										<div class="card-header ngang" >
											<h4 class="card-title">Trạng thái phòng</h4>
                                            <div class="nut">
                                                <a type="button" class="btn btn-success" href="<%=request.getContextPath()%>/back/themPhong.jsp">
													<i class="bi bi-plus-circle"></i> Thêm phòng
												</a>
												<!-- <a type="button" class="btn btn-danger" href="thuTinTuc.html">
													<i class="bi bi-person-plus"></i> Người theo dõi
												</a> -->
												
                                            </div>
										</div>
										
										<div class="card-body">
											<div class="row gx-3">
												<div class="col-lg-4 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Chọn phòng (*)</label>
														<div class="was-validated">
															<select class="form-select" id="roomTypeSelect" required="">
																<option selected>
																	Tất cả
																</option>
																<option>Phòng đơn</option>
																<option>Phòng khách</option>
																<option >Phòng cao cấp</option>
																<option >Phòng sang trọng</option>
															</select>
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-3 col-12">
													<div class="mb-3">
														<label class="form-label">Tìm kiếm loại giường</label>
														
														<!-- <input type="text" class="form-control" id="validationCustom01" required=""  
														placeholder="" value="An"/> -->
														<select class="form-select" id="bedTypeSelect" required="">
															<option selected>
																Tất cả
															</option>
															<option>Đơn</option>
															<option>Đôi</option>
															<option >Ba</option>
															<option >Bốn</option>								
														</select>
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
																<th>Số phòng</th>
																<th>Loại phòng</th>
																<th>Loại giường</th>
                                                                <th>Trạng thái</th>
																<th>Thao tác</th>																												
															</tr>
														</thead>
														
														<tbody id="roomTable">
															<!-- Dữ liệu phòng -->
															<% ArrayList<ResultSet> rs =u.getRoom(null, 0, (byte)15);
															
																ResultSet r=rs.get(0);
																try {
																	while(r.next()) {
																		
																	
															%>
															<tr>
                                                                <th>
                                                                    <input class="form-check-input" type="checkbox" value="option1" />
                                                                </th>
                                                                <td><%=r.getInt("room_id") %></td>
                                                                <td><%=r.getString("room_type") %></td>
                                                                <td><%=r.getString("room_noBeds") %></td>
                                                                <td><%=r.getString("room_status") %></td>
                                                                <td>
                                                                    <a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal" 
                                                                    onclick="passIdToModal('<%= r.getInt("room_id") %>')">
                                                                        <i class="bi bi-pencil-square"></i> Cập nhật
                                                                    </a>
                                                                    <a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal"
                                                                    onclick="passIdToDelModal('<%= r.getInt("room_id") %>')">
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

											<!-- Modal Cập nhật thông tin -->
											<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
                                                <form action="<%= request.getContextPath() %>/editRoom" method="post"> 
                                               		 <div class="modal-dialog">
                                                
                                                 <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="updateModalLabel">Cập nhật phòng</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                        <input type="hidden" name="room_id" id="updateId">
                                                        	<div class="mb-3">
                                                                <label for="roomSelect" class="form-label">Tên phòng</label>
                                                                <input type="text" class="form-control" id="nameT" required=""  
																placeholder="Nhập tên phòng" name="e_room_name"  value=""/>
                                                               
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="roomSelect" class="form-label">Sức chứa</label>
                                                                <input type="text" class="form-control" id="IntN" required=""  
																placeholder="Nhập số lượng" name="e_room_maxCapacity"  value=""/>
                                                               
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="roomSelect" class="form-label">Loại phòng</label>
                                                                <select class="form-select" id="roomSelect" name="e_room_type">
                                                                    <option>Phòng đơn</option>
                                                                    <option>Phòng khách</option>
                                                                    <option>Phòng cao cấp</option>
                                                                    <option>Phòng sang trọng</option>
                                                                </select>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="bedSelect" class="form-label">Loại giường</label>
                                                                <select class="form-select" id="bedSelect" name="e_room_noBeds">
                                                                    <option>Đơn</option>
                                                                    <option>Đôi</option>
                                                                    <option>Ba</option>
                                                                    <option>Bốn</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                                            <button type="submit" class="btn btn-primary" id="updateBtn">Cập nhật</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                </form>
                                                   
                                            </div>
											<!-- Modal Xác nhận Xoá -->
        									 <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
        									 
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="deleteModalLabel">Xoá phòng</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            Bạn có chắc chắn muốn xoá phòng này không?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                                                            <form action="<%= request.getContextPath() %>/deleteRoom" method="post">
                                                            <input type="hidden" name="del_room_id" id="deleteId">
                                                              <button type="submit" class="btn btn-danger" id="confirmDeleteBtn">Đồng ý</button>
                                                            </form>
                                                          
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
			
			//Tìm kiếm - Start
			$(document).ready(function() {
           
            $("#searchBtn").click(function() {
                var selectedRoom = $("#roomTypeSelect").val().toLowerCase();
                var selectedBed = $("#bedTypeSelect").val().toLowerCase();

                
                $("#roomTable tr").each(function() {
                    var roomType = $(this).find("td:eq(1)").text().toLowerCase();
                    var bedType = $(this).find("td:eq(2)").text().toLowerCase();

                    
                    if ((selectedRoom === "" || roomType.includes(selectedRoom)) &&
                        (selectedBed === "" || bedType.includes(selectedBed))) {
                        $(this).show(); 
                    } else {
                        $(this).hide(); 
                    }
                });
            });
        });
		//End

		//Cập nhật - Start
		$(document).ready(function() {
            $(".editBtn").click(function() {
                var row = $(this).closest("tr");
                var roomType = row.data("type");
                var bedType = row.data("bed");

                
                $("#roomSelect").val(roomType);
                $("#bedSelect").val(bedType);

               
                $("#updateBtn").data("row", row);
            });

            $("#updateBtn").click(function() {
                var updatedRoom = $("#roomSelect").val();
                var updatedBed = $("#bedSelect").val();

                var row = $(this).data("row");

               
                row.find("td:eq(1)").text(updatedRoom);  
                row.find("td:eq(2)").text(updatedBed);   

                
                $("#updateModal").modal('hide');
            });

            $(".deleteBtn").click(function() {
                var rowToDelete = $(this).closest("tr");

                $("#confirmDeleteBtn").off("click").click(function() {
                    rowToDelete.remove();
                    $("#deleteModal").modal('hide');
                    var successModal = new bootstrap.Modal($('#successModal'));
                    successModal.show();
                });
            });
        });
		//end

		</script>

		
		
	</body>

</html>