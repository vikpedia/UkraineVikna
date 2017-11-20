<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Passengers.aspx.vb" Inherits="UkrainVikna.Passengers" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Passengers Details</title>
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
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
				</div>
			</div>
		</header>
<!--==============================Content=================================-->
		<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - February 10, 2014!</div>
			<div class="container_12" style="margin-right:80px;">
                <div class="grid_3 prefix_1" style="   margin-left:-100px; ">
                    <h5><asp:Label ID="lblusername" runat="server" Text="Passengers Details"></asp:Label></h5>
                    <div class="extra_wrapper">
							
						</div>
<!--==============================Form - Passengers Details=================================-->
                 <form id="modify" runat="server">
                            <asp:Table ID="Table1" runat="server" Width="500px">
                                <asp:TableRow>
                                    <asp:TableCell>First Name:</asp:TableCell>
                                    <asp:TableCell><asp:TextBox ID="txtFname" runat="server" Width="170" placeholder="Example: Natalie"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtFname"></asp:RequiredFieldValidator></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Last Name:</asp:TableCell>
                                    <asp:TableCell><asp:TextBox ID="txtLname" runat="server" Width="170" placeholder="Example: Christopher"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtLname"></asp:RequiredFieldValidator></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Gender:</asp:TableCell>
                                    <asp:TableCell>
                                        <asp:DropDownList ID="ddlGender" runat="server" Width="170">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Date of Birth:</asp:TableCell>
                                    <asp:TableCell><asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="170"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtDOB"></asp:RequiredFieldValidator></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Nationality:</asp:TableCell>
                                    <asp:TableCell>
                                         <asp:DropDownList ID="ddlNationality" runat="server" Width="170">
                                         </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Passport Number:</asp:TableCell>
                                    <asp:TableCell><asp:TextBox ID="txtPnumber" runat="server" Width="170" placeholder="Example: RY4114452"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtPnumber"></asp:RequiredFieldValidator></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Expiry Date:</asp:TableCell>
                                    <asp:TableCell><asp:TextBox ID="txtEDate" runat="server" TextMode="Date" Width="170"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtEDate"></asp:RequiredFieldValidator></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Issue State:</asp:TableCell>
                                    <asp:TableCell>
                                        <asp:DropDownList ID="ddlIssueState" runat="server" Width="170">
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                            </asp:Table>
                            <p><asp:Button ID="Button3" runat="server" style="width: 30px" Text="A1" />
                            &nbsp;<asp:Button ID="Button4" runat="server" Text="B1" />
                            &nbsp;<asp:Button ID="Button5" runat="server" Text="C1" />
                            &nbsp;<asp:Button ID="Button6" runat="server" Text="D1" />
                            &nbsp;<asp:Button ID="Button7" runat="server" Text="E1" /></p><br />
                            <p> &nbsp;<asp:Button ID="Button8" runat="server" Text="F1" />
                                 &nbsp;<asp:Button ID="Button9" runat="server" Text="G1" />
                                 &nbsp;<asp:Button ID="Button10" runat="server" Text="H1" />
                                 &nbsp;<asp:Button ID="Button11" runat="server" Text="I1" />
                                 &nbsp;<asp:Button ID="Button12" runat="server" Text="J1" />
                            </p>
                            
                            <p>
                                <asp:Label ID="Label2" runat="server" Text="Seat Number"></asp:Label>
                            </p>
                            <p>
                                <asp:Button ID="Button1" runat="server" Text="Save and Continue" />
                                <asp:Button ID="Button2" runat="server" Text="Save and add passengers" />
                            </p>
        
                 </form>
				</div>
<!--==============================Content=================================-->
                <div class="grid_7">
					<h3 class="head1" style="margin-left:300px; ">Ads</h3>
					<div class="blog" style="margin-left:300px; ">
						<time datetime="2014-10-01">New<span>Arrival</span></time>
						<div class="extra_wrapper">
							<div class="text1 col1">Post your Adverstiment here</div>
						</div>
						<div class="clear"></div>
                        <img src="images/page4_img2.jpg" alt="" class="img_inner">
						<p>Enhancing the routes. <a href="Manageprofile.aspx">Read More</a></p>
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