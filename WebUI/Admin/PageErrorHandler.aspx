<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="LoginFooter" Src="../UserControls/LoginFooter.ascx" %>
<%@ Page language="c#" Codebehind="PageErrorHandler.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.PageErrorHandler" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>PageErrorHandler</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="../Images/gray_pinstripe_bkg.gif" leftmargin="0" topmargin="0">
		<form id="Login" method="post" runat="server">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td background="../Images/bg.gif"><div align="center"><img src="../Images/banner.jpg" width="780" height="80"></div>
					</td>
				</tr>
				<tr>
					<td height="100%" valign="top">
						<table width="100%" border="0" align="center" cellpadding="4" cellspacing="0">
							<tr>
								<td>
									<asp:Label ID="lblerror" Runat="server" style="FONT-FAMILY: Arial, Serif; LETTER-SPACING: normal; BACKGROUND-COLOR: white" Font-Size="11" ForeColor="#ff0033"></asp:Label>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr valign="top">
					<td><uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
