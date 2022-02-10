<%@ Page language="c#" Codebehind="ChangePassword.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.OnlineUser.ChangePassword" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="OnlineUserMenus" Src="../UserControls/OnlineUserMenus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Change Password</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmChangePassword" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table2" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" align="center" border="0">
				<tr>
					<td vAlign="top"><uc1:onlineusermenus id="OnlineUserMenus1" runat="server"></uc1:onlineusermenus></td>
				</tr>
				<TR>
					<td vAlign="top" height="100%">
						<table class="parabr" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
							<TR>
								<TD align="center" colSpan="2">
									<asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Change Password</asp:label></TD>
							</TR>
							<tr>
								<td align="right"><asp:Label ID="lblUserName" Runat="server" CssClass="mandatory">User Name</asp:Label></td>
								<td><asp:TextBox ID="txtUserName" Runat="server" CssClass="formlines" Enabled="False" ReadOnly="True" onblur="chkbadchar(this);"></asp:TextBox></td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="Label1" Runat="server" CssClass="mandatory">Old Password</asp:Label></td>
								<td><asp:TextBox ID="txtoldPassword" Runat="server" CssClass="formlines" TextMode="Password" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator ID="Requiredfieldvalidator1" CssClass="mandatory" Runat="server" ControlToValidate="txtoldPassword"
										ErrorMessage="*">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="lblPassword" Runat="server" CssClass="mandatory">New Password</asp:Label></td>
								<td><asp:TextBox ID="txtPassword" Runat="server" CssClass="formlines" TextMode="Password" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator ID="redpassword" CssClass="mandatory" Runat="server" ControlToValidate="txtPassword"
										ErrorMessage="*">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							<!--
							<tr>
								<td align="right"><asp:Label ID="lblSecpassword" Runat="server" CssClass="mandatory">Secondary Password</asp:Label></td>
								<td>
									<asp:TextBox ID="txtSecondarypassword" CssClass="formlines" Runat="server" TextMode="Password"></asp:TextBox>
									<asp:RequiredFieldValidator ID="reqsecpassword" Runat="server" ControlToValidate="txtSecondarypassword" ErrorMessage="*">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							-->
							<tr>
								<td colspan="2" align=center><asp:Label ID="lblMessage" Runat="server" CssClass="mandatory"></asp:Label></td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<asp:Button ID="btnSubmit" Runat="server" Text="Submit" CssClass="formbuttons" Width="95px" onclick="btnSubmit_Click"></asp:Button>&nbsp;&nbsp;
									<asp:Button ID="btnClear" Runat="server" Text="Clear" CssClass="formbuttons" Width="95px" CausesValidation="False" onclick="btnClear_Click"></asp:Button>
								</td>
							</tr>
						</table>
					</td>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
