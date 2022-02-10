<%@ Page language="c#" Codebehind="ReceiptAbstract.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.SAReports.ReceiptAbstract" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>ReceiptAbstract</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</head>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<form id="frmrptAbstract" method="post" runat="server">
			<table id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">				
				<tr>
					<td colspan="2"><br></td>
				</tr>
				<tr>
					<td width="2%">&nbsp;</td>
					<td valign="top"><uc1:ReportPage id="ReportPage1" runat="server" Width="100%"></uc1:ReportPage></td>
					<td width="2%">&nbsp;</td>
				</tr>
			</table>
		</form>
	</body>
</html>
