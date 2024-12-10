<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ads.objects.*" %>
<%@page import="ads.user.*" %>
<%@page import="ads.role.*"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
	User u=new UserImpl();	
	Role rl=new RoleImpl();
	ArrayList<ResultSet> listrl=rl.getRole(null, 0, (byte)3);
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
                url: "<%= request.getContextPath() %>/getUserId",
                method: "GET",
                data: { userId: id },
                success: function(data) {
                    $('#e_username').val(data.username);
                    $('#e_password').val(data.password);
                    $('#e_fullname').val(data.fullname);
                    $('#e_email').val(data.email);
                    $('#e_gender').val(data.gender);
                    $.ajax({
                        url: "<%= request.getContextPath() %>/getRoles",
                        method: "GET",
                        success: function(roleData) {
                            let roleDropdown = $('#e_role');
                            roleDropdown.empty(); 
                            roleData.forEach(function(role) {
                                let selected = role.id === data.role ? 'selected' : '';
                                roleDropdown.append('<option value="' + role.id + '" ' + selected + '>' + role.name + '</option>');
                            });
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

				<!-- Sidebar wrapper start -->
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
						<div class="card-header ngang mb-0">
                            <ul class="nav nav-pills text-uppercase">
                        
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
											<h4 class="card-title">Danh sách người dùng</h4>
											<div class="nut">
												<a type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myModal" name="addButton">
													<i class="bi bi-plus-circle"></i> Thêm người dùng
												</a>
											</div>	
										</div>
										<div class="card-body">
											<div class="row gx-3">

												<div class="col-lg-4 col-sm-4 col-12">
													<div class="mb-3">
														<label class="form-label">Tìm kiếm </label>
														
														<input type="text" class="form-control" id="searchInput" required=""  
														placeholder="Tìm kiếm theo ID, tên" value=""/>
														
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
																<th>ID</th>
																<th>Họ tên</th>
																<th>Tên đăng nhập</th>
																<th>Mật khẩu</th>
																<th>Giới tính</th>
																<th>Email</th>
																<th>Vai trò</th>
                                                                <th>Thao tác</th>																											
															</tr>
														</thead>
														
														<tbody id="userTable">
															<!-- Dữ liệu admin -->
															<%
																ArrayList<ResultSet> rs=u.getUser(null, 0, (byte)15);
															
																ResultSet r=rs.get(0);
																try {
																	while(r.next()) {
																		int roleId = r.getInt("role_id"); 
														                ResultSet roleRs = rl.getRole(roleId); 
														                String roleName = "";
														                if (roleRs.next()) {
														                    roleName = roleRs.getString("role_name");
														                }
															%>
															<tr >
																<td class="id"><%=r.getInt("user_id") %></td>
																<td class="name"><%=r.getString("user_full_name") %></td>
																<td><%=r.getString("user_name") %></td>
																<td><%=r.getString("user_password") %></td>
																<td><%=r.getString("user_gender") %></td>
																<td><%=r.getString("user_email") %></td>
																<td><%= roleName %></td>
																<td>
																	<a type="button" name="update" class="btn btn-primary btn-sm editBtn" href="#" data-bs-toggle="modal" data-bs-target="#updateModal" onclick="passIdToModal('<%= r.getInt("user_id") %>')">
																	<i class="bi bi-pencil-square"></i> Cập nhật
																	</a>
																	<a type="button" name="del" class="btn btn-danger btn-sm deleteBtn" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal"onclick="passIdToDelModal('<%= r.getInt("user_id") %>')">
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
											
											<!-- Modal -->
											<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						 						<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="myModalLabel">Thêm người người dùng</h4>
															<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<form action="<%= request.getContextPath() %>/addUser" method="post">
															<div class="modal-body">
																<div class="form-group">
																	<label>Tên người dùng</label>
																	<input name="username" class="form-control" placeholder="Nhập tên người dùng">
																</div>
																<div class="form-group mt-3">
																	<label>Mật khẩu</label>
																	<input name="password" class="form-control" placeholder="Nhập mật khẩu">
																</div><div class="form-group mt-3">
																	<label>Họ tên</label>
																	<input name="fullname" class="form-control" placeholder="Nhập họ tên">
																</div><div class="form-group mt-3">
																	<label>Email</label>
																	<input name="email" class="form-control" placeholder="Nhập Email">
																</div><div class="form-group mt-3">
																	<label class="form-label">Giới tính:</label>
																	<select class="form-select" name="gender">
																		<option value="Nam">Nam</option>
																		<option value="Nữ">Nữ</option>
																		<option value="Khác">Khác</option>
																	</select>
																</div><div class="form-group mt-3">
																	<label class="form-label">Vai trò:</label>
																	<select class="form-select" name="role">
																		 <% while (a.next()) { %>
																	        <option value="<%= a.getInt("role_id") %>" ><%= a.getString("role_name") %></option>
																	    <% } %>
																	</select>
																</div><div class="modal-footer">
																<button type="button" class="btn btn-default" data-bs-dismiss="modal">Đóng</button>
																<button type="submit" class="btn btn-primary" name="add">Thêm</button>
																</div>
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
															<h4 class="modal-title" id="myModalLabel">Sửa thông tin người dùng</h4>
															<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<form action="<%= request.getContextPath() %>/editUser" method="post">
															<div class="modal-body">
																<input type="hidden" name="user_id" id="updateId">
											                    <div class="form-group">
											                        <label>Tên người dùng</label>
											                        <input name="e_username" id="e_username" class="form-control" placeholder="Nhập tên người dùng">
											                    </div>
											                    <div class="form-group mt-3">
											                        <label>Mật khẩu</label>
											                        <input name="e_password" id="e_password" class="form-control" placeholder="Nhập mật khẩu">
											                    </div>
											                    <div class="form-group mt-3">
											                        <label>Họ tên</label>
											                        <input name="e_fullname" id="e_fullname" class="form-control" placeholder="Nhập họ tên">
											                    </div>
											                    <div class="form-group mt-3">
																	<label class="form-label">Giới tính:</label>
																	<select class="form-select" name="e_gender" id="e_gender">
																		<option value="Nam">Nam</option>
																		<option value="Nữ">Nữ</option>
																		<option value="Khác">Khác</option>
																	</select>
																</div>
																<div class="form-group mt-3">
																	<label class="form-label">Vai trò:</label>
																	<select class="form-select" name="e_role" id="e_role">																	
																	    
																	</select>
																</div>
											                    <div class="form-group mt-3">
											                        <label>Email</label>
											                        <input name="e_email" id="e_email" class="form-control" placeholder="Nhập Email">
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
                       										 Bạn có chắc chắn muốn xoá người dùng này không?
                    									</div>
                   										<div class="modal-footer">
                        									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                        									<form action="<%= request.getContextPath() %>/delUser" method="post">
                        										<input type="hidden" name="user_id_del" id="delId">
                        										<button type="submit" name="yes" class="btn btn-danger" id="confirmDeleteBtn">Xóa</button>
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

		</script>
		
</html>