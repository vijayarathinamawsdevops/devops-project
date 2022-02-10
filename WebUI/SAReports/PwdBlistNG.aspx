<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PwdBlistNG.aspx.cs" Inherits="eKaruvoolam.WebUI.SAReports.PwdBlistNG" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PwdBlistNG</title>
    <link href="../Styles/Style1.css" rel="stylesheet" />
</head>
<body MS_POSITIONING="GridLayout">
		<form id="frmPwdBlistng" method="post" runat="server">
			<table id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<tr>
					<td colspan="2"><br>
					</td>
				</tr>
				<tr>
					<td width="2%">&nbsp;</td>
					<td valign="top"><uc1:ReportPage id="ReportPage1" runat="server"></uc1:ReportPage></td>
					<td width="2%">&nbsp;</td>
				</tr>
			</table>
		</form>
	</body>
</html>
