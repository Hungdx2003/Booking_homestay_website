<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ads.objects.*" %>
<%@page import="ads.user.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập hoặc đăng ký</title>
    <!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- css stylesheet -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/front/css/logincheck.css">
</head>

<body>

    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="<%= request.getContextPath() %>/register" method="post">
                <h1>Tạo tài khoản</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>hoặc sử dụng email của bạn để đăng ký</span>
                <div class="infield">
                    <input type="text" placeholder="Username" name="s_user" required />
                    <label></label>
                </div>
                <div class="infield">
                    <input type="password" placeholder="Password" name="s_pass" required />
                    <label></label>
                </div>
                <div class="infield">
                    <input type="email" placeholder="Email" name="s_email" required />
                    <label></label>
                </div>
                <div class="infield">
                    <input type="text" placeholder="FullName" name="s_fullname" />
                    <label></label>
                </div>
                <button type="submit" name="dangky" class="submit">Đăng ký</button>
            </form>
        </div>


        <div class="form-container sign-in-container">
            <form action="<%= request.getContextPath() %>/login" method="post">
                <h1>Đăng nhập</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>hoặc sử dụng tài khoản của bạn</span>
                <div class="infield">
                    <input type="text" placeholder="Username" name="user" class="autoname" required />
                    <label></label>
                </div>
                <div class="infield">
                    <input type="password" placeholder="Password" name="pass" class="autopass" required />
                    <label></label>
                </div>
                <a href="#" class="forgot">Quên mật khẩu?</a>
                <button type="submit" class="submit" name="dangnhap">
                    Đăng nhập
                </button>
                
            </form>
        </div>
        <div class="overlay-container" id="overlayCon">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Chào mừng trở lại!</h1>
                    <p>Hãy đăng nhập</p>
                    <button style="margin-bottom: 20px;">
                        Đăng nhập</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Chào bạn!</h1>
                    <p>Tạo tài khoản đăng ký ^^</p>
                    <button style="margin-top: 20px;">Đăng ký</button>
                </div>

            </div>
            <button id="overlayBtn"></button>
        </div>
    </div>



    <!-- js code -->
    <script>
        const container = document.getElementById("container");
        const overlayCon = document.getElementById("overlayCon");
        const overlayBtn = document.getElementById("overlayBtn");

        overlayCon.addEventListener('click', () => {
            container.classList.toggle('right-panel-active');

            overlayBtn.classList.remove('btnScaled');
            window.requestAnimationFrame(() => {
                overlayBtn.classList.add('btnScaled');
            })
        });
    </script>

</body>

</html>



