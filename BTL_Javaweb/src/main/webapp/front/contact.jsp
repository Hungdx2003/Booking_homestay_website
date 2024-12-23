<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2"
	data-aos="flip-left">
	<div class="contact-agileits">
		<h4>Liên hệ chúng tôi</h4>
		<p class="contact-agile2">Đăng ký để được nhận tin tức từ chúng
			tôi</p>
		<form action="<%= request.getContextPath() %>/addContact" method="post" name="sentMessage" id="contactForm">
			<div class="control-group form-group">

				<label class="contact-p1">Họ và tên:</label> <input type="text"
					class="form-control" name="name" id="name" required>
				<p class="help-block"></p>

			</div>
			<div class="control-group form-group">

				<label class="contact-p1">Số điện thoại:</label> <input type="tel"
					class="form-control" name="phone" id="phone" required>
				<p class="help-block"></p>

			</div>
			<div class="control-group form-group">

				<label class="contact-p1">Email:</label> <input type="email"
					class="form-control" name="email" id="email" required>
				<p class="help-block"></p>

			</div>
			<input type="submit" name="sub" value="Gửi ngay"
				class="btn btn-primary">
		</form>
	</div>
</div>