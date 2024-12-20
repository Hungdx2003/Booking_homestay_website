<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

</html><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Easy Stay</title>
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> -->
<!-- <meta name="keywords" content="Resort Inn Responsive , Smartphone Compatible web template , Samsung, LG, Sony Ericsson, Motorola web design" /> -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/reservation.css">
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<link rel="stylesheet" href="css/datPhong.css">

<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Federo" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"> -->
</head>
<body>
    <div class="banner-top">
        <div class="social-bnr-agileits">
            <ul class="social-icons3">
                            <li><a href="https://www.facebook.com/" class="fa fa-facebook icon-border facebook"> </a></li>
                            <li><a href="https://twitter.com/" class="fa fa-twitter icon-border twitter"> </a></li>
                            <li><a href="https://plus.google.com/u/0/" class="fa fa-google-plus icon-border googleplus"> </a></li> 
                        </ul>
        </div>
        <div class="contact-bnr-w3-agile">
            <ul>
                <li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">INFO@EasyStay.COM</a></li>
                <li><i class="fa fa-phone" aria-hidden="true"></i>(+84) 982428142</li>	
                <li class="s-bar">
                    <div class="search">
                        <input class="search_box" type="checkbox" id="search_box">
                        <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
                        <div class="search_form">
                            <form action="#" method="post">
                                <input type="search" name="Search" placeholder=" " required=" " />
                                <input type="submit" value="Search">
                            </form>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="w3_navigation">
        <div class="container" style="width : 100%;">
            <nav class="navbar navbar-default" style="display: flex;width : 100%; justify-content: space-around; margin-top:10px ">

                <div class="navbar-header navbar-left">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <h1><a class="navbar-brand" href="index.html">Easy<span>Stay</span><p class="logo_w3l_agile_caption">Feel at Home</p></a></h1>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                    <nav class="menu menu--iris">
                        <ul class="nav navbar-nav menu__list">
                            <li class="menu__item "><a href="index.html" class="menu__link">Trang chủ</a></li>
                        <!-- <li class="menu__item"><a href="#about" class="menu__link scroll">About</a></li> -->
                        <!-- <li class="menu__item"><a href="#gallery" class="menu__link scroll">Gallery</a></li> -->
                            <li class="menu__item"><a href="reservation.html" class="menu__link">Đặt phòng</a></li>
                            <li class="menu__item"><a href="#contact" class="menu__link scroll">Liên hệ</a></li>
                            <li class="menu__item menu__item--current"><a href="check.html" class="menu__link">Xem đơn đặt phòng</a></li>
							<li><a class="menu__link"> <b>Le Van Minh</b> </a></span></li>
                            <li class="menu__item w-100 text-right"><a href="#">
                            <li><a href="index2.html" class="menu__link"> Đăng xuất</a></li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
    </div>
    <!-- Phòng start-->
    <div class="plans-section">
        <div class="container mt-4">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-sm-12">
                    <div class="panel-body" style="margin-bottom: 40px;">
                        <div class="border border-dark rounded-3">
                            <div class="table-responsive">
                                <table class="table align-middle table-striped table-hover m-0">
                                    <thead>
                                        <tr>
                                            <th>Số phòng</th>
                                            <th>Loại phòng</th>
                                            <th>Số Khách</th>
                                            <th>Ngày đặt</th>
                                            <th>Ngày trả</th>
                                            <th>Giá phòng</th>
                                            <th>VAT</th>
                                            <th>Tổng cộng</th>
                                            <th>Trạng thái</th>
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>101</td>
                                            <td>Phòng đơn</td>
                                            <td>1</td>
                                            <td>01/11/2024</td>
                                            <td>05/11/2024</td>
                                            <td>500,000 VND</td>
                                            <td>10%</td>
                                            <td>550,000 VND</td>
                                            <td> Đã xác nhận</td>
                                            <td>
                                                
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>102</td>
                                            <td>Phòng khách</td>
                                            <td>2</td>
                                            <td>02/11/2024</td>
                                            <td>06/11/2024</td>
                                            <td>700,000 VND</td>
                                            <td>10%</td>
                                            <td>770,000 VND</td>
                                            <td>Đã xác nhận</td>
                                            <td>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>103</td>
                                            <td>Phòng cao cấp</td>
                                            <td>3</td>
                                            <td>03/11/2024</td>
                                            <td>07/11/2024</td>
                                            <td>1,000,000 VND</td>
                                            <td>10%</td>
                                            <td>1,100,000 VND</td>
                                            <td>Chưa xác nhận</td>
                                            <td>
                                                <button class="btn btn-danger" data-toggle="modal" data-target="#cancelModal">
                                                    <i class="fa fa-trash"></i> Huỷ đơn
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>104</td>
                                            <td>Phòng sang trọng</td>
                                            <td>1</td>
                                            <td>04/11/2024</td>
                                            <td>08/11/2024</td>
                                            <td>500,000 VND</td>
                                            <td>10%</td>
                                            <td>550,000 VND</td>
                                            <td>Chưa xác nhận</td>
                                            <td>
                                                <button class="btn btn-danger">
                                                    <i class="fa fa-trash"></i> Huỷ đơn
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>105</td>
                                            <td>Phòng đơn</td>
                                            <td>2</td>
                                            <td>05/11/2024</td>
                                            <td>09/11/2024</td>
                                            <td>700,000 VND</td>
                                            <td>10%</td>
                                            <td>770,000 VND</td>
                                            <td>Chưa xác nhận</td>
                                            <td>
                                                <button class="btn btn-danger">
                                                    <i class="fa fa-trash"></i> Huỷ đơn
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                         <!-- Modal for cancel confirmation -->
    <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cancelModalLabel">Xác nhận huỷ đơn</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Bạn có chắc chắn muốn huỷ đơn này không? Hành động này không thể hoàn tác.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-danger" id="confirmCancel">Xác nhận huỷ</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for cancellation success -->
    <div class="modal fade" id="cancelSuccessModal" tabindex="-1" role="dialog" aria-labelledby="cancelSuccessModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cancelSuccessModalLabel">Huỷ đơn thành công</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Đơn của bạn đã được huỷ thành công. Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
                </div>
                    </div>
                </div>  
            </div>
            <hr class="d-sm-none">
        </div>
    </div>
    <!-- end -->
     <!-- contact start -->
<section class="contact-w3ls" id="contact">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2" data-aos="flip-left">
			<div class="contact-agileits">
				<h4>Liên hệ chúng tôi</h4>
				<p class="contact-agile2">Đăng ký để được nhận tin tức từ chúng tôi</p>
				<form  method="post" name="sentMessage" id="contactForm" >
					<div class="control-group form-group">
                        
                            <label class="contact-p1">Họ và tên:</label>
                            <input type="text" class="form-control" name="name" id="name" required >
                            <p class="help-block"></p>
                       
                    </div>	
                    <div class="control-group form-group">
                        
                            <label class="contact-p1">Số điện thoại:</label>
                            <input type="tel" class="form-control" name="phone" id="phone" required >
							<p class="help-block"></p>
						
                    </div>
                    <div class="control-group form-group">
                        
                            <label class="contact-p1">Email:</label>
                            <input type="email" class="form-control" name="email" id="email" required >
							<p class="help-block"></p>
						
                    </div>
                    
                    
                    <input type="submit" name="sub" value="Gửi ngay" class="btn btn-primary">	
				</form>
							</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile1" data-aos="flip-right">
			<h4>Kết nối với chúng tôi</h4>
			<p class="contact-agile1"><strong>Số điện thoại :</strong>+84 982428142</p>
			<p class="contact-agile1"><strong>Email :</strong> <a href="mailto:name@example.com">INFO@EasyStay.COM</a></p>
			<p class="contact-agile1"><strong>Địa chỉ :</strong> 716 Bạch Đằng, Hai Bà Trưng, Hà Nội</p>
																
			<div class="social-bnr-agileits footer-icons-agileinfo">
				<ul class="social-icons3">
								<li><a href="#" class="fa fa-facebook icon-border facebook"> </a></li>
								<li><a href="#" class="fa fa-twitter icon-border twitter"> </a></li>
								<li><a href="#" class="fa fa-google-plus icon-border googleplus"> </a></li> 
								
							</ul>
			</div>
			<!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6509.804923687305!2d105.86415270401636!3d21.011427165279738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abfa300af081%3A0x5305911884d16e5c!2sSunrise%20Hanoi%20Hotel!5e0!3m2!1svi!2s!4v1703609027908!5m2!1svi!2s" ></iframe> -->
		</div>
		<div class="clearfix"></div>
	</div>
</section>
<!-- /contact -->
<div class="copy">
    <p>© 2024 Easy Stay . All Rights Reserved | Design by <a href="index.html">Easy Stay</a> </p>
</div>
<!--/footer -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- contact form -->
<script src="js/jqBootstrapValidation.js"></script>

<!-- /contact form -->	
<!-- Calendar -->
<script src="js/jquery-ui.js"></script>
<script>
    $(function() {
    $( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
    });
</script>
<!-- //Calendar -->
<!-- gallery popup -->
<link rel="stylesheet" href="css/swipebox.css">
    <script src="js/jquery.swipebox.min.js"></script> 
        <script type="text/javascript">
            jQuery(function($) {
                $(".swipebox").swipebox();
            });
        </script>
<!-- //gallery popup -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
jQuery(document).ready(function($) {
$(".scroll").click(function(event){		
event.preventDefault();
$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
});
});
</script>
<!-- start-smoth-scrolling -->
<!-- flexSlider -->
    <script defer src="js/jquery.flexslider.js"></script>
    <script type="text/javascript">
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
<!-- //flexSlider -->
<script src="js/responsiveslides.min.js"></script>
<script>
            // You can also use "$(window).load(function() {"
            $(function () {
              // Slideshow 4
              $("#slider4").responsiveSlides({
                auto: true,
                pager:true,
                nav:false,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                  $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                  $('.events').append("<li>after event fired.</li>");
                }
              });
        
            });
</script>
<!--search-bar-->
<script src="js/main.js"></script>	
<!--//search-bar-->
<!--tabs-->
<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<!--//tabs-->
<!-- smooth scrolling -->
<script type="text/javascript">
$(document).ready(function() {
/*
var defaults = {
containerID: 'toTop', // fading element id
containerHoverID: 'toTopHover', // fading element hover id
scrollSpeed: 1200,
easingType: 'linear' 
};
*/								
$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>

<div class="arr-w3ls">
<a href="#home" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</div>

<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script>
 $('#confirmCancel').click(function() {
            // Simulate cancellation success
            $('#cancelModal').modal('hide');
            $('#cancelSuccessModal').modal('show');
        });
</script>
</body>
</html>