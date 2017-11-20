<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Flightschedule.aspx.vb" Inherits="UkrainVikna.Flightschedule" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Flight Schedule</title>
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
                                <li class="current"><a href="Flightschedule.aspx">Flight Schedule</a></li>
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
                <div class="grid_3 prefix_1" style="   margin-left:-50px; ">
                    <h5><asp:Label ID="lblusername" runat="server" Text="Select Flight"></asp:Label></h5>
                    <div class="extra_wrapper">
							
						</div>
<!--==============================Select flight=================================-->
                 <form id="modify" runat="server">
                            <p>Origin
            <asp:DropDownList ID="ddlorigin" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Origin" DataValueField="Origin" Height="24px" Width="200px">
            </asp:DropDownList>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FlyEasy1702ConnectionString %>" SelectCommand="SELECT DISTINCT [Origin] FROM [tblFlightSchedule]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <sortedascendingcellstyle backcolor="#FDF5AC" />
                <sortedascendingheaderstyle backcolor="#4D0000" />
                <sorteddescendingcellstyle backcolor="#FCF6C0" />
                <sorteddescendingheaderstyle backcolor="#820000" />
            </asp:GridView>
        </p>
        <p>
            Number of Passengers
            <asp:DropDownList ID="ddl_NOP" runat="server">
                <asp:ListItem>Please select</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnNext" runat="server" Text="Next" />
        </p>
                 </form>
				</div>
<!--==============================Content=================================-->

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
		
	</body>
</html>