<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Easy Stay</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resort Inn Responsive , Smartphone Compatible web template , Samsung, LG, Sony Ericsson, Motorola web design" />
<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script> -->
<!-- //for-mobile-apps -->
<!-- <link href="assets/css/bootstrap.css" rel="stylesheet" /> -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/reservation.css">
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Federo" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
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
    <jsp:include page="/front/menu.jsp"></jsp:include>
    <!-- Phòng start-->
    <div class="plans-section" id="rooms">
        <div class="container">
        <!-- <h3 class="title-w3-agileits title-black-wthree">Phòng và giá</h3> -->
        <div class="pricing-table-main">
            <div class="price-grid">
                <div class="price-image">
                    <img src="images/doi.jfif" alt="Room Image" class="room-image" />
                </div>
                <div class="price-info">
                    <h4>PHÒNG SANG TRỌNG</h4>
                    <p class="price">1,325,000₫ / NGÀY</p>
                    <p class="price-tt">Không gian phòng được ưu đãi ban công thoáng mát với hướng nhìn toàn cảnh ra biển giúp tâm hồn bạn được vỗ về, an yên. Thêm đó, sự kết...</p>
                    <ul>
                        <li>Số lượng: 4 người</li>
                        <li>Diện tích: 37m²</li>
                        <li>Hướng nhìn: Một phần biển</li>
                        <li>Loại giường: Double và Twin</li>
                    </ul>
                    <a class="view-more-btn" type="button" href="<%=request.getContextPath()%>/front/xemChiTiet.jsp?type=1&&price=1325000">Xem thêm</a>
                </div>
                
            </div>
        </div>
        <div class="pricing-table-main">
            <div class="price-grid">
                <div class="price-image">
                    <img src="images/a3.jpg" alt="Room Image" class="room-image" />
                </div>
                <div class="price-info-2">
                    <h4>PHÒNG ĐƠN</h4>
                    <p class="price">450,000₫ / NGÀY</p>
                    <p class="price-tt">Không gian phòng được ưu đãi ban công thoáng mát với hướng nhìn toàn cảnh ra biển giúp tâm hồn bạn được vỗ về, an yên. Thêm đó, sự kết...</p>
                    <ul>
                        <li>Số lượng: 4 người</li>
                        <li>Diện tích: 37m²</li>
                        <li>Hướng nhìn: Một phần biển</li>
                        <li>Loại giường: Double và Twin</li>
                    </ul>
                    <a class="view-more-btn" type="button" href="<%=request.getContextPath()%>/front/xemChiTiet.jsp?type=2&&price=450000">Xem thêm</a>
                </div>
                
            </div>
        </div>
        <div class="pricing-table-main">
            <div class="price-grid">
                <div class="price-image">
                    <img src="images/doi.jfif" alt="Room Image" class="room-image" />
                </div>
                <div class="price-info">
                    <h4>PHÒNG CAO CẤP</h4>
                    <p class="price">1,050,000₫ / NGÀY</p>
                    <p class="price-tt">Không gian phòng được ưu đãi ban công thoáng mát với hướng nhìn toàn cảnh ra biển giúp tâm hồn bạn được vỗ về, an yên. Thêm đó, sự kết...</p>
                    <ul>
                        <li>Số lượng: 4 người</li>
                        <li>Diện tích: 37m²</li>
                        <li>Hướng nhìn: Một phần biển</li>
                        <li>Loại giường: Double và Twin</li>
                    </ul>
                    <a class="view-more-btn" type="button" href="<%=request.getContextPath()%>/front/xemChiTiet.jsp?type=3&&price=1050000">Xem thêm</a>
                </div>
                
            </div>
        </div>
        <div class="pricing-table-main">
            <div class="price-grid">
                <div class="price-image">
                    <img src="images/a3.jpg" alt="Room Image" class="room-image" />
                </div>
                <div class="price-info-2">
                    <h4>PHÒNG KHÁCH</h4>
                    <p class="price">700,000₫ / NGÀY</p>
                    <p class="price-tt">Không gian phòng được ưu đãi ban công thoáng mát với hướng nhìn toàn cảnh ra biển giúp tâm hồn bạn được vỗ về, an yên. Thêm đó, sự kết...</p>
                    <ul>
                        <li>Số lượng: 4 người</li>
                        <li>Diện tích: 37m²</li>
                        <li>Hướng nhìn: Một phần biển</li>
                        <li>Loại giường: Double và Twin</li>
                    </ul>
                    <a class="view-more-btn" type="button" href="<%=request.getContextPath()%>/front/xemChiTiet.jsp?type=4&&price=700000">Xem thêm</a>
                </div>
                
            </div>
        </div>
        </div>
    </div>
    <!-- end -->
     <!-- contact start -->
<section class="contact-w3ls" id="contact">
	<div class="container">
		<jsp:include page="/front/contact.jsp"></jsp:include>
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


</script>
</body>
</html>