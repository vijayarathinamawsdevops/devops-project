<%@ Page language="c#" Codebehind="ChangePassword.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.ChangePassword" %>
<%@ Register TagPrefix="uc1" TagName="ChangePassword" Src="../UserControls/ChangePassword.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Counter</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body leftmargin="0" rightmargin="0" topmargin="0">
		<form id="frmChangePassword" method="post" runat="server">
			<table class="tableleftbgcolor" id="Table2" cellSpacing="0" cellPadding="0" width="100%"
				border="0" align="center" height="100%">
				<tr>
					<td valign="top"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
				</tr>
				<tr>
					<td valign="top" height="100%">
						<table width="98%" cellpadding="2" cellspacing="2" border="0" align="center">
							<tr>
								<td><uc1:ChangePassword id="ChangePassword2" runat="server"></uc1:ChangePassword></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</tr>
			</table>
		</form>
	</body>
</HTML>
