<%@ Page language="c#" Codebehind="MainForm.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.MainForm" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>MainFrom</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<tr>
					<td style="HEIGHT: 22px">
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader>
					</td>
				</tr>
				<tr>
					<td style="HEIGHT: 35px">&nbsp;&nbsp;&nbsp;
						<uc1:volume id="Volume1" runat="server"></uc1:volume>
					</td>
				</tr>
				<tr>
					<td style="HEIGHT: 474px"></td>
				</tr>
				<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
