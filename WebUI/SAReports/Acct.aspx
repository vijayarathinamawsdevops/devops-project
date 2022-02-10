<%@ Page language="c#" Codebehind="Acct.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.SAReports.clsAcct" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Account-Disbursement Report</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="frmAcct" method="post" runat="server">
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
