<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ads.objects.*" %>
<%@page import="ads.user.*" %>
<%@page import="ads.role.*"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
	Role rl=new RoleImpl();
	ArrayList<ResultSet> listrl=rl.getRole(null, 0, (byte)5);
	ResultSet a=listrl.get(0);
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
		<link rel="shortcut icon" href="<%= request.getContextPath() %>/back/assets/images/logotvx.png" />

		

		<!-- *************
			************ CSS Files *************
		************* -->
		<link rel="stylesheet" href="<%= request.getContextPath() %>/back/assets/fonts/bootstrap/bootstrap-icons.css" />
		<link rel="stylesheet" href="<%= request.getContextPath() %>/back/assets/css/main.min.css" />
		<link rel="stylesheet" href="<%= request.getContextPath() %>/back/assets/css/customize.css" />
		<!-- *************
			************ Vendor Css Files *************
		************ -->

		<!-- Scrollbar CSS -->
		<link rel="stylesheet" href="<%= request.getContextPath() %>/back/assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />

		<!-- Date Range CSS -->
		<link rel="stylesheet" href="<%= request.getContextPath() %>/back/assets/vendor/daterange/daterange.css" />
		<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
		<script>
        function passIdToModal(id) { 
        	document.getElementById("updateId").value = id;
            $.ajax({
                url: "<%= request.getContextPath() %>/getRoleById",
                method: "GET",
                data: { roleId: id },
                success: function(data) {
                    $('#e_rolename').val(data.name);
                    let permissions = data.permission.split(',');

                    $('input[name="e_options"]').each(function() {
                        if (permissions.includes(this.value)) {
                            $(this).prop('checked', true);
                        } else {
                            $(this).prop('checked', false);
                        }
                    });
                }
            });
        }
        function passIdToDelModal(id) { 
            document.getElementById("delId").value = id;
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
						<hr class="mt-0">
						<!-- Container starts -->
						<div class="container-fluid">

							<!-- Row start -->
							<div class="row">
								<div class="col-12">
									<div class="card mb-3">										
										<div class="card-header ngang">
											<h4 class="card-title">Danh sách quyền</h4>
											<div class="nut">
												<a type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myModal" name="addButton">
													<i class="bi bi-plus-circle"></i> Thêm quyền
												</a>
											</div>	
										</div>
										<div class="card-body">											
										
													<table id="Table" class="table align-middle table-striped table-hover m-0 border rounded-3 mt-4">
														<thead>
															<tr>
																<th>ID</th>
																<th>Tên quyền </th>
																<th>Ngày cập nhật </th>
                                                                <th>Thao tác</th>																											
															</tr>
														</thead>
														
														<tbody id="roleTable">
															<%
															int count=0;
															try {
																while(a.next()) {
																	count++;
															%>
															<tr>
																<td class="id"><%=a.getInt("role_id") %></td>
																<td class="name"><%=a.getString("role_name") %></td>
																<td><%=a.getString("role_updated_at") %></td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" name="update" data-bs-toggle="modal" data-bs-target="#updateModal" onclick="passIdToModal('<%= a.getInt("role_id") %>')">
																		<i class="bi bi-pencil-square"></i> Sửa
																	</a>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" name="del" data-bs-toggle="modal" data-bs-target="#deleteModal" onclick="passIdToDelModal('<%= a.getInt("role_id") %>')">
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
												</div>
											</div>
											<!-- Modal -->
											<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="myModalLabel">Thêm quyền</h4>
															<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<form action="<%= request.getContextPath() %>/addRole" method="post">
															<div class="modal-body">
																<div class="form-group">
																	<label>Tên quyền</label>
																	<input name="rolename" class="form-control" placeholder="Nhập tên quyền">
																</div>
																<div class="form-group">
																	<label>Quyền cụ thể</label><br>
																	<input type="checkbox" name="options" id="read" value="read" class="form-check-input"> Read <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="options" id="create" value="create" class="form-check-input"> Create <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="options" id="update" value="update" class="form-check-input"> Update <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="options" id="del" value="delete" class="form-check-input"> Delete <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="options" id="public" value="public" class="form-check-input"> Public <span style="margin-right: 20px;"></span>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default" data-bs-dismiss="modal">Đóng</button>
																<button type="submit" class="btn btn-primary" name="add">Thêm</button>
															</div>
														</form>
													</div>
												</div>
											</div>
											
											<!-- Modal update-->
											<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="myModalLabel">Thay tên quyền</h4>
															<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<form action="<%= request.getContextPath() %>/editRole" method="post">
															<div class="modal-body">
																<input type="hidden" name="role_id" id="updateId">
																<div class="form-group">
																	<label>Tên quyền</label>
																	<input name="e_rolename" id="e_rolename" class="form-control" placeholder="Nhập tên quyền">
																</div>
																<div class="form-group">
																	<label>Quyền cụ thể</label><br>
																	<input type="checkbox" name="e_options" id="e_read" value="read" class="form-check-input"> Read <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="e_options" id="e_create" value="create" class="form-check-input"> Create <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="e_options" id="e_update" value="update" class="form-check-input"> Update <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="e_options" id="e_del" value="delete" class="form-check-input"> Delete <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="e_options" id="e_public" value="public" class="form-check-input"> Public <span style="margin-right: 20px;"></span>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default" data-bs-dismiss="modal">Đóng</button>
																<input type="submit" name="log" value="Cập nhật" class="btn btn-primary">
															</div>
														</form>
													</div>
												</div>
											</div>				
                                            <!-- Modal Xác nhận Xoá -->
        									<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
            									<div class="modal-dialog">
                									<div class="modal-content">
                    									<div class="modal-header">
                        									<h5 class="modal-title" id="deleteModalLabel">Thông báo</h5>
                        									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    									</div>
                    									<div class="modal-body">
                       										 Bạn có chắc chắn muốn xoá quyền này không?
                    									</div>
                   										<div class="modal-footer">
                        									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                        									<form action="<%= request.getContextPath() %>/delRole" method="post">
                        										<input type="hidden" name="role_id_del" id="delId">
                        										<button type="submit" class="btn btn-danger" id="confirmDeleteBtn">Xóa</button>
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
		<script src="<%= request.getContextPath() %>/back/assets/js/jquery.min.js"></script>
		<script src="<%= request.getContextPath() %>/back/assets/js/bootstrap.bundle.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
		<!-- *************
			************ Vendor Js Files *************
		************* -->

		<!-- Overlay Scroll JS -->
		<script src="<%= request.getContextPath() %>/back/assets/vendor/overlay-scroll/jquery.overlayScrollbars.min.js"></script>
		<script src="<%= request.getContextPath() %>/back/assets/vendor/overlay-scroll/custom-scrollbar.js"></script>

		<!-- Moment JS -->
		<script src="<%= request.getContextPath() %>/back/assets/js/moment.min.js"></script>

		<!-- Date Range JS -->
		<script src="<%= request.getContextPath() %>/back/assets/vendor/daterange/daterange.js"></script>
		<script src="<%= request.getContextPath() %>/back/assets/vendor/daterange/custom-daterange.js"></script>

		<!-- Custom JS files -->
		<script src="<%= request.getContextPath() %>/back/assets/js/custom.js"></script>

		<script>
			$('#Table').DataTable({
			  paging: true,           
			  searching: false,         
			  ordering: false,          
			  lengthChange: false,     
			  pageLength: 5            
			});

           
            $(document).ready(function() {

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
		</script>
		
</html>