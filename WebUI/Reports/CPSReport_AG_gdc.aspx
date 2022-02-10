<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CPSReport_AG_gdc.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.CPSReport_AG_gdc" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CPS_Report</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
</head>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<tr>
					<td colspan="2"><br>
					</td>
				</tr>
                <tr><td></td><td colspan="4" align="right"><a href="../MAccountReport/ReportMenulist.aspx">Back </a></td></tr>
				<tr>
					<td width="2%">&nbsp;</td>
					<td valign="top"><uc1:ReportPage id="ReportPage1" runat="server"></uc1:ReportPage></td>
					<td width="2%">&nbsp;</td>
				</tr>
			</table>
		</form>
	</body>

</html>
