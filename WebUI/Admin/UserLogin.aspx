<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="UserLogin.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.UserLogin.UserLogin" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="LoginFooter" Src="../UserControls/LoginFooter.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Login</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script>
			var actualtitle=document.title+" " 
			if (document.all||document.getElementById) 
				scroll() 
			function scroll() 
			{ 

						today = new Date(); 
						sec = today.getSeconds(); 
						hr = today.getHours(); 
						min = today.getMinutes(); 
						if (hr < 12) { timeday = " AM"; } 
						else { timeday = " PM"; } 
						if (hr > 12) hr = hr - 12;
						if (hr <= 9) hr = "0" + hr; 
						if (min <= 9) min = "0" + min; 
						if (sec <= 9) sec = "0" + sec; 
						var clocktext = " - " + hr + ":" + min + ":" + sec + timeday; 
						clocktimer = setTimeout("scroll()", 1000); 
						document.title = actualtitle + clocktext; 
			} 
//			function setFocus()
//			{
//				document.getElementById("txtUserID").focus();
//			}
		</script>
	</HEAD>
	<body background="../Images/gray_pinstripe_bkg.gif" leftmargin="0" rightmargin="0" topmargin="0"
		onload="setFocus()">
		<form id="frmUserLogin" method="post" runat="server">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
				<tr>
					<td background="../images/bg_new.gif"><img src="../images/header.gif" width="700" height="60"></td>
				</tr>
				<tr>
					<td valign="top" height="100%">
						<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
							<tr>
								<td width="25%" valign="top" bgcolor="#ffffff"><img src="../images/main.jpg" width="254" height="350"></td>
								<td width="75%" valign="top" bgcolor="#ffffff">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td background="../images/shadow.gif"><img src="../images/shadow.gif" width="19" height="11"></td>
										</tr>
									</table>
									<div align="center">
										<p><img src="../images/name.gif" width="274" height="53"></p>
										<table border="0" cellspacing="0" cellpadding="0" width="85%" class="parabr">
											<tr>
												<td>
													<img src="../Images/login-2.jpg" border="0" align="absMiddle" height="195">
												</td>
												<td width="75%">
													<table border="0" cellspacing="2" cellpadding="2" width="100%">
														<tr>
															<td colspan="2"><div align="center"><asp:Label ID="lblAppversion" Runat="server" Font-Size="10" Font-Bold="True" Font-Name="Tahoma"></asp:Label></div>
															</td>
														</tr>
														<tr>
															<td align="right" class="lbl" width="50%">Choose language</td>
															<td>
																<asp:DropDownList ID="drplanguage" Runat="server" AutoPostBack="True" CssClass="lbl" Width="120px" onselectedindexchanged="drplanguage_SelectedIndexChanged">
																	<asp:ListItem Value="ENGLISH" Selected="True">English</asp:ListItem>
																	<asp:ListItem Value="TAMIL">Tamil</asp:ListItem>
																</asp:DropDownList>
															</td>
														</tr>
														<tr>
															<td class="lbl"><asp:Label ID="lblUserName" Runat="server" CssClass="lbl" ToolTip="User Name">UserID</asp:Label></td>
															<td>
																<asp:TextBox id="txtUserID" runat="server" CssClass="txtbx" onblur="chkbadchar(this);"></asp:TextBox>
																<asp:RequiredFieldValidator id="rfvUserID" runat="server" ErrorMessage="Data required" ControlToValidate="txtUserID"
																	CssClass="validatemessage">*</asp:RequiredFieldValidator>
															</td>
														</tr>
														<tr>
															<td class="lbl" width="40%"><asp:Label ID="lblPassword" Runat="server" CssClass="lbl" ToolTip="Password">Password</asp:Label></td>
															<td>
																<asp:TextBox id="txtPassword" runat="server" CssClass="txtbx" TextMode="Password" onblur="chkbadchar(this);">input</asp:TextBox>
																<asp:RequiredFieldValidator id="rfvPassword" runat="server" ErrorMessage="Data Required" ControlToValidate="txtPassword"
																	CssClass="validatemessage">*</asp:RequiredFieldValidator>
															</td>
														</tr>
														<tr>
															<td colspan="2"><asp:ValidationSummary ID="errsummary" Runat="server" DisplayMode="BulletList" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary></td>
														</tr>
														<tr>
															<td align="right" valign="top"><asp:ImageButton ID="cmdLogin" BorderWidth="0" Runat="server" ImageUrl="../Images/login.gif" ImageAlign="AbsMiddle"
																	AlternateText="Click to Login" ToolTip="Login" onclick="cmdLogin_Click"></asp:ImageButton></td>
															<td><asp:Button id="Button1" runat="server" Text="Reset" CssClass="formbuttons" CausesValidation="False"
																	Width="100px" onclick="Button1_Click"></asp:Button></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td colspan="2" align="center">
													<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
							</tr>
							<tr>
								<td colspan="2" valign="bottom">
									<table width="100%" height="18" align="center" border="0" cellpadding="0" cellspacing="0">
										<tr background="../images/footer.gif" valign="middle">
											<td width="45%" background="../images/footer.gif" class="ftr"><div align="left">© 
													NIC,Tamil Nadu State Unit, Chennai</div>
											</td>
											<td width="55%" background="../images/footer.gif" class="ftr"><div align="right">© All 
													rights reserved</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
