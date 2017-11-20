<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Demo.aspx.vb" Inherits="UkrainVikna.Demo" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Demo</title>
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
	<body>
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
							<img src="images/logo.png" alt="Ukraine Airlines">
						</a>
					</h1>
				</div>
			</div>
		</header>
<!--==============================Content=================================-->
		<div class="content"><div class="ic"></div>
			<div class="container_12"  style="margin-right:80px;">
                <div class="grid_3 prefix_1" style="   margin-left:-100px;">
                    <h5><asp:Label ID="lblusername" runat="server" Text="Booking/Payments"></asp:Label></h5>
                    <div class="extra_wrapper">
							
						</div>
<!--==============================Form - Passengers Confirmation=================================-->
                 <form id="modify" runat="server">
                     <p>User ID: <asp:Label ID="userid" runat="server" Text="Label"></asp:Label></p>
                     <p>Passenger ID: <asp:Label ID="pid" runat="server" Text="Label"></asp:Label></p>
                     <p>Passenger Name: <asp:Label ID="pname" runat="server" Text="Label"></asp:Label></p>
                     <p>Passport number: <asp:Label ID="passnumber" runat="server" Text="Label"></asp:Label></p>
                     <p>Booking ID: <asp:Label ID="bid" runat="server" Text="Label"></asp:Label></p>
                     <p>Booking Code: <asp:Label ID="bcode" runat="server" Text="Label"></asp:Label></p>
                     <p>Flight Number: <asp:Label ID="fnumber" runat="server" Text="Label"></asp:Label></p>
                     <p>Seat: <asp:Label ID="seat" runat="server" Text="Label"></asp:Label></p>
                     <p>AirFare: <asp:Label ID="Label1" runat="server" Text="RM 450.00"></asp:Label></p>
                     <p>Luggage Allowance: <asp:Label ID="Label2" runat="server" Text="15KG/Person"></asp:Label></p>
                     <p>
                         <asp:Button ID="Button1" runat="server" Text="Confirm Booking" /></p>
                     <p>
                         <asp:Button ID="Button2" runat="server" Text="Pay Now" /></p>
                     <p>
                         &nbsp;</p>
                 </form>
				</div>
<!--==============================Content=================================-->
                <div class="grid_7">
					<h3 class="head1" style="margin-left:300px; "></h3>
					<div class="blog" style="margin-left:300px; ">
						
                        <img src="images/page2_img6.jpg" alt="" class="img_inner">
						
						<!--<a href="#" class="link1">LEARN MORE</a>-->
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
		</script>
	</body>
</html>