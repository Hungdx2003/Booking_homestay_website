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
												<a type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myModal">
													<i class="bi bi-plus-circle"></i> Thêm quyền
												</a>
											</div>	
										</div>
										<div class="card-body">											
											<div class="border border-dark rounded-3 mt-4">
												<div class="table-responsive">
													<table class="table align-middle table-striped table-hover m-0">
														<thead>
															<tr>
																<th>ID</th>
																<th>Tên quyền </th>
																<th>Ngày cập nhật </th>
                                                                <th>Thao tác</th>																											
															</tr>
														</thead>
														
														<tbody id="roomTable">
															<%
															try {
																while(a.next()) {
															%>
															<tr>
																<td class="id"><%=a.getInt("role_id") %></td>
																<td class="name"><%=a.getString("role_name") %></td>
																<td><%=a.getString("role_updated_at") %></td>
																<td>
																	<a class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal" onclick="passIdToModal('<%= a.getInt("role_id") %>')">
																		<i class="bi bi-pencil-square"></i> Sửa
																	</a>
																	<a class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal" onclick="passIdToDelModal('<%= a.getInt("role_id") %>')">
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
																	<input type="checkbox" name="options" value="read" class="form-check-input"> Read <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="options" value="create" class="form-check-input"> Create <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="options" value="update" class="form-check-input"> Update <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="options" value="delete" class="form-check-input"> Delete <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="options" value="public" class="form-check-input"> Public <span style="margin-right: 20px;"></span>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default" data-bs-dismiss="modal">Đóng</button>
																<button type="submit" class="btn btn-primary">Thêm</button>
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
																	<input type="checkbox" name="e_options" value="read" class="form-check-input"> Read <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="e_options" value="create" class="form-check-input"> Create <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="e_options" value="update" class="form-check-input"> Update <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="e_options" value="delete" class="form-check-input"> Delete <span style="margin-right: 20px;"></span>
																    <input type="checkbox" name="e_options" value="public" class="form-check-input"> Public <span style="margin-right: 20px;"></span>
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

            //Search
			document.getElementById('searchInput').addEventListener('input', function() {
    		var input = this.value.toLowerCase(); 
   			var rows = document.getElementById('roomTable').getElementsByTagName('tr'); 


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