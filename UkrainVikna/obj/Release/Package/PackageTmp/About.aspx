<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="About.aspx.vb" Inherits="UkrainVikna.About" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>About</title>
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
		        //$().UItoTop({ easingType: 'easeOutQuart' });
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
                               <li><a href="Login.aspx">Home</a></li>
								<li><a href="About.aspx">About</a></li>
                               
								<li class="current"><a href="Contact.aspx">CONTACTS</a></li>
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
		<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
<!--==============================Content=================================-->
		<div class="content"><div class="ic"></div>
			<div class="container_12">
			
				<div class="clear"></div>
				<div class="grid_6" style="margin-top:-70px;">
                    <br />
                    <br />
					<h3>About Ukraine Airlines</h3>
<!--==============================Content=================================-->
				<div class="grid_7" style="margin-left:-45px; width:1000px;">
					<div class="blog" style="margin-left:60px; ">
						
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">Fly to you</a>r destination with Ukraine Airlines</div>
							
						</div>
						<div class="clear"></div>
						<img src="images/slide1.jpg" alt="" class="img_inner">
						<p>Ukraine International Airlines (UIA), PJSC (Ukrainian: Авіакомпанія Міжнародні Авіалінії України, Aviakompaniya Mizhnarodni Avialiniyi Ukrayiny, [ˌɑwijɑkɔmˈpɑɲijɑ miʒnɑˈrɔdɲi ˌɑwijɑˈʎiɲiji ukrɑˈjɪnɪ]) is the flag carrier and the largest airline of Ukraine,[3] with its head office in Kiev[4] with its main hub at Boryspil International Airport outside Kiev. It operates domestic and international passenger flights and cargo services to Europe, the Middle East, the United States and Asia.
						<br>
						<!--<a href="#" class="link1">LEARN MORE</a>-->
					</div>
				</div>
				</div>
				
				<div class="grid_12">
					<h3 class="head1">History</h3>
				</div>
				<div class="grid_4" style="width:950px;">
					<div class="block1">
						
						<div class="extra_wrapper">
							<div class="text1 col1"><a href="#">Ukraine Airlines journey</a></div>
							The airline was established on 1 October 1992, and started operations on 25 November 1992 with a Kiev-London flight. It was one of the first "joint ventures with foreign capital" in Ukraine and the first airline in the former Soviet Union to use new Boeing 737-400 aircraft.[citation needed] The founding shareholders were the Ukrainian Association of Civil Aviation and Guinness Peat Aviation (GPA), an Irish aircraft-leasing company. In 1996, Austrian Airlines and Swissair became shareholders, investing US$9 million in new equity.
						</div>
					</div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					
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


