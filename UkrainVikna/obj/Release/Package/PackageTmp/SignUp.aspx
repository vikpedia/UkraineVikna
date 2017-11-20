<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignUp.aspx.vb" Inherits="UkrainVikna.SignUp" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Sign Up</title>
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
        <form id="form1" runat="server">
		<header>
			<div class="container_12">
				<div class="grid_12">
					<%--<div class="menu_block">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li class="current"><a href="Login.aspx">Login</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>--%>
				</div>
				<div class="grid_12">
					<h1>
                        <br />
						<a href="index.aspx">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
				</div>
			</div>
		</header>
<!--==============================Content=================================-->
        <div class="content"><div class="ic"></div>
			<div class="container_12" style="margin-right:150px;">
             <div class="grid_7" style="margin-left:300px; margin-bottom:-500px;">
					<br />
                 <br />
                 <br />
					<div class="blog" style="margin-left:300px; ">
						
						<div class="clear"></div>
                        <img src="images/page2_img7.jpg" alt="" class="img_inner">
						
						<!--<a href="#" class="link1">LEARN MORE</a>-->
					</div>
				</div>
				<div class="grid_7">
					<h3>Sign up </h3>
                    <asp:Table ID="Table1" runat="server" >
                        <asp:TableRow>
                            <asp:TableCell>Name:</asp:TableCell>
                            <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="name" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>Username:</asp:TableCell>
                            <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="username" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>Password:</asp:TableCell>
                            <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="password" runat="server" TextMode="Password" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator></asp:TableCell>
                        </asp:TableRow> 
                        <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>Confirm Password:</asp:TableCell>
                            <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="cnfpassword" runat="server" TextMode="Password" ></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToCompare="password" ControlToValidate="cnfpassword"></asp:CompareValidator></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>Email:</asp:TableCell>
                            <asp:TableCell>&nbsp;&nbsp;<asp:TextBox ID="email" runat="server" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell><asp:CheckBox ID="conditions" runat="server" Text="Agree Terms & Conditions" /></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow><asp:TableCell>&nbsp;&nbsp;</asp:TableCell></asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell><asp:Button ID="signup" runat="server" Text="SignUp" />&nbsp;&nbsp;<asp:Button ID="reset" runat="server" Text="Clear" /><br />
                                <br />
                                 <p>&nbsp; Already a member! &nbsp; <a href="Login.aspx">Sign In</a></p>
                            </asp:TableCell>
                        </asp:TableRow>   
                        <asp:TableRow>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell><asp:Label ID="Label1" runat="server"></asp:Label></asp:TableCell>
                        </asp:TableRow>              
                    </asp:Table>
					</div>
                
				</div>
			</div>
            </form>

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
		   
		</script>
	</body>
</html>
