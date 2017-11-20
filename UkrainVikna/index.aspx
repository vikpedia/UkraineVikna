﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="UkrainVikna.index" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Home</title>
		<meta charset="utf-8">
		<meta name="format-detection" content="telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="booking/css/booking.css">
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/owl.carousel.js"></script>
		<script src="js/camera.js"></script>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script src="booking/js/booking.js"></script>
		<script>
		    $(document).ready(function () {
		        jQuery('#camera_wrap').camera({
		            loader: false,
		            pagination: false,
		            minHeight: '444',
		            thumbnails: false,
		            height: '48.375%',
		            caption: true,
		            navigation: true,
		            fx: 'mosaic'
		        });
		        /*carousel*/
		        var owl = $("#owl");
		        owl.owlCarousel({
		            items: 2, //10 items above 1000px browser width
		            itemsDesktop: [995, 2], //5 items between 1000px and 901px
		            itemsDesktopSmall: [767, 2], // betweem 900px and 601px
		            itemsTablet: [700, 2], //2 items between 600 and 0
		            itemsMobile: [479, 1], // itemsMobile disabled - inherit from itemsTablet option
		            navigation: true,
		            pagination: false
		        });
		        $().UItoTop({ easingType: 'easeOutQuart' });
		    });
		</script>
		<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
				<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
			</a>
		</div>
		<![endif]-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
	</head>
	<body class="page1" id="top">
<!--==============================header=================================-->
		<header>
			<div class="container_12">
				<div class="grid_12">
					<div class="menu_block">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
                                <li class="current"><a href="index.aspx">Home</a></li>
								<li><a href="About.aspx">About</a></li>
                                <li><a href="Special_Offer.aspx">SPECIAL OFFERS</a></li>
								<li><a href="Contact.aspx">CONTACTS</a></li>
								<li><a href="Login.aspx">Login</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
				<div class="grid_12">
					<h1>
						<a href="index.html">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
				</div>
			</div>
		</header>
		<div class="slider_wrapper">
			<div id="camera_wrap" class="">
				<div data-src="images/slide.jpg">
					<div class="caption fadeIn">
						<h2>LONDON</h2>
						<div class="price">
							FROM
							<span>RM1000</span>
						</div>
						<a href="#">LEARN MORE</a>
					</div>
				</div>
				<div data-src="images/slide1.jpg">
					<div class="caption fadeIn">
						<h2>Maldives</h2>
						<div class="price">
							FROM
							<span>RM2000</span>
						</div>
						<a href="#">LEARN MORE</a>
					</div>
				</div>
				<div data-src="images/slide2.jpg">
					<div class="caption fadeIn">
						<h2>Venice</h2>
						<div class="price">
							FROM
							<span>RM1600</span>
						</div>
						<a href="#">LEARN MORE</a>
					</div>
				</div>
			</div>
		</div>
<!--==============================Content=================================-->
		<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - February 10, 2014!</div>
			<div class="container_12">
				<div class="grid_4"  style="margin-top:90px;">
					<div class="banner">
						<img src="images/ban_img1.jpg" alt="">
						<div class="label">
							<div class="title">Barcelona</div>
							<div class="price">FROM<span>RM 1000</span></div>
							<a href="#">LEARN MORE</a>
						</div>
					</div>
				</div>
				<div class="grid_4" style="margin-top:90px;">
					<div class="banner">
						<img src="images/ban_img2.jpg" alt="">
						<div class="label">
							<div class="title">GOA</div>
							<div class="price">FROM<span>RM 1.500</span></div>
							<a href="#">LEARN MORE</a>
						</div>
					</div>
				</div>
				<div class="grid_4" style="margin-top:90px;">
					<div class="banner">
						<img src="images/ban_img3.jpg" alt="">
						<div class="label">
							<div class="title">PARIS</div>
							<div class="price">FROM<span>RM 1.600</span></div>
							<a href="#">LEARN MORE</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
				<div class="grid_6" style="margin-top:-70px;">
					<h3>Recent News</h3>
<!--==============================Content=================================-->
				<div class="grid_7" style="margin-left:-45px;">
					<div class="blog" style="margin-left:60px; ">
						<time datetime="2014-10-01">15<span>Feb</span></time>
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">Fly to you</a>r destination with Ukraine Airlines</div>Posted by
							<a href="#">Admin</a>
						</div>
						<div class="clear"></div>
						<img src="images/page4_img2.jpg" alt="" class="img_inner">
						<p>Regardless of the type of hotel you’d prefer to stay in when on your next trip, Ukraine Airlines members can now earn or spend their Miles for stays in dozens of countries across six continents. </p>We are commtitted to provide the best service with the very reasonable airfares where you can easily travel miles.
						<br>
						<!--<a href="#" class="link1">LEARN MORE</a>-->
					</div>
				</div>
				</div>
				<div class="grid_5 prefix_1">
					<h3>Welcome</h3>
					<img src="images/page1_img1.jpg" alt="" class="img_inner fleft">
					<div class="extra_wrapper">
						<p>Fly with Ukraine Airlines where you find comfort that meets your level best.</p>
						Reach your destination with comfort.</div>
					<div class="clear cl1"></div>
					<p>Hope to see you soon on board. </p>
				  <h4>Clients’ Quotes</h4>
					<blockquote class="bq1">
						<img src="images/page1_img2.jpg" alt="" class="img_inner noresize fleft">
						<div class="extra_wrapper">
							<p>The best flying experience i've been through.</p>
							<div class="alright">
								<div class="col1">Miranda Brown</div>
								<a href="#" class="btn">More</a>
							</div>
						</div>
					</blockquote>
				</div>
				<div class="grid_12">
					<h3 class="head1">Latest News</h3>
				</div>
				<div class="grid_4">
					<div class="block1">
						<time datetime="2014-01-01">10<span>Jan</span></time>
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">Commitment</a></div>
							We are promising for the statements, we stick to the client satisfaction.
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="block1">
						<time datetime="2014-01-01">21<span>Jan</span></time>
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">Best Service</a></div>
							We are known to be the best service provider, based on the client's feedback.
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="block1">
						<time datetime="2014-01-01">15<span>Feb</span></time>
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">Well Known</a></div>
							Lead among the air academies, fly with best experience.
						</div>
					</div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="socials">
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						Ukraine Airlines 2017 | <a href="#">Privacy Policy</a> | Website Designed by Vikna Raj
					</div>
				</div>
			</div>
		</footer>
		<script>
		    $(function () {
		        $('#bookingForm').bookingForm({
		            ownerEmail: '#'
		        });
		    })
		    $(function () {
		        $('#bookingForm input, #bookingForm textarea').placeholder();
		    });
		</script>
	</body>
</html>


