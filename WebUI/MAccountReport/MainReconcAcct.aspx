<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<%@ Page language="c#" Codebehind="MainReconcAcct.aspx.cs" AutoEventWireup="True" Inherits="WebUI.MAccountReport.MainReconcAcct" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Main Reconcillation Account</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="frmMainReconcAcct" method="post" runat="server">
			<table id="Table1" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td colSpan="2"><br>
					</td>
				</tr>
				<tr>
					<td width="2%">&nbsp;</td>
					<td vAlign="top"><uc1:reportpage id="ReportPage1" runat="server"></uc1:reportpage></td>
					<td width="2%">&nbsp;</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
