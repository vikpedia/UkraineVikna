<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Manageprofile.aspx.vb" Inherits="UkrainVikna.Manageprofile" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Manage Customer's Profile</title>
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
			<div class="container_12">
                <div class="grid_3 prefix_1">
                    <h5><asp:Label ID="lblusername" runat="server" Text="Modify Profile"></asp:Label></h5>
                    <div class="extra_wrapper">
							
						</div>
<!--==============================Form - Modify Profile=================================-->
                 <form id="modify" runat="server">
                            <asp:Table ID="Table1" runat="server" Width="312px">
                                <asp:TableRow>
                                    <asp:TableCell>ID:</asp:TableCell>
                                    <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="id" runat="server" placeholder="ID" ReadOnly="true"></asp:TextBox></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Username:</asp:TableCell>
                                    <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="username" runat="server" placeholder="Username" ReadOnly="true"></asp:TextBox></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Password:</asp:TableCell>
                                    <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="password" runat="server" placeholder="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Em@il:</asp:TableCell>
                                    <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="email" runat="server" placeholder="Em@il"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell></asp:TableCell>
                                    <asp:TableCell>&nbsp;&nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" />&nbsp;&nbsp;<asp:Button ID="clear" runat="server" Text="Clear" /></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell></asp:TableCell>
                                    <asp:TableCell>&nbsp;&nbsp;<asp:Label ID="lblNotification" runat="server" ForeColor="Green"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                 </form>
				</div>
<!--==============================Content=================================-->
				<div class="grid_7">
					<h3 class="head1" style="margin-left:300px; "></h3>
					<div class="blog" style="margin-left:300px; ">
						
                        <img src="images/page2_img1.jpg" alt="" class="img_inner">
						
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
						
					</div>
					<div class="copy">
						Ukraine Airlines 2017 | <a href="#">Privacy Policy</a> | Website Designed by Vikna Raj
					</div>
				</div>
			</div>
		</footer>
		
	</body>
</html>