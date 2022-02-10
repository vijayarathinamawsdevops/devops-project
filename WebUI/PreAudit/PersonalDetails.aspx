<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Page language="c#" Codebehind="PersonalDetails.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.PersonalDetails" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Personal Details</title>
		<LINK href="../Styles/PreAudit.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<form id="frmPersonalDetails" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="100%" align="center">
				<tr>
					<td align="center" style="HEIGHT: 32px">
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader>&nbsp;<br>
					</td>
				</tr>
				<tr height="100" align="top">
					<td style="HEIGHT: 42px">
						<uc1:volume id="Volume1" runat="server"></uc1:volume></td>
				</tr>
				<tr>
					<td style="HEIGHT: 232px">
						<uc2:PersonalDetails id="PersonalDetails2" runat="server"></uc2:PersonalDetails></td>
				</tr>
				<tr>
					<td style="HEIGHT: 28px">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer>
						<uc2:ErrorLabel id="ErrorLabel1" runat="server"></uc2:ErrorLabel></td>
				</tr>
			</table>
		</form>
	</BODY>
</HTML>
