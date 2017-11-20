<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="UkrainVikna._Default" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Welcome to Ukraine Airlines</title>
		<meta charset="utf-8">
		<meta name="format-detection" content="telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script>
		    $(document).ready(function () {
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
	<body>
        <form id="form1" runat="server">
<!--==============================header=================================-->
		<header>
			<div class="container_12">
				<div class="grid_12">
					<div class="menu_block">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
                                <li><a href="Checkin.aspx">Online Check-In</a></li>
                                <li><a href="Flightschedule.aspx">Flight Schedule</a></li>
                                <li><a href="Manageprofile.aspx">Manage Profile</a></li>
								<li><a href="login.aspx">Logout</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
				<div class="grid_12">
					<h1>
						<a href="index.aspx">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
				</div>
			</div>
		</header>
        
<!--==============================Content=================================-->
		<div class="content"><div class="ic"></div>
			<div class="container_12">
                <div class="grid_3 prefix_1">
					
                    <h5><asp:Label ID="lblusername" runat="server"></asp:Label></h5>
                    <div class="extra_wrapper">
							<div class="text1 col1">Navigatation</div><br />
						</div>
<!--==============================Links=================================-->
                   <p><a href="Manageprofile.aspx">Manage Profile</a></p>
                    <p><a href="Flightschedule.aspx">Flight Schedule</a></p>
                    <p><a href="Checkin.aspx">Online Checkin</a></p>
                    <p><a href="Demo.aspx">View Details</a></p>
				</div>
<!--==============================Content=================================-->
				<div class="grid_7">
					
					<div class="blog" style="margin-left:60px; ">
						<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
						<img src="images/page4_img2.jpg" alt="" class="img_inner">
						
						<!--<a href="#" class="link1">LEARN MORE</a>-->
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
		</script>
            </form>
	</body>
</html>
