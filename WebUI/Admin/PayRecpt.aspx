<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Page language="c#" Codebehind="PayRecpt.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.PayRecpt" smartNavigation="True"%>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Payment and Receipt </title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="PayRecpt" method="post" runat="server">
			<table id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD colSpan="2">
						<asp:label id="Label3" runat="server" CssClass="mandatory" Width="96px">STO Name</asp:label>
						<asp:dropdownlist id="DrpStocode" runat="server" Width="160px" CssClass="formlines" onselectedindexchanged="DrpStocode_SelectedIndexChanged"></asp:dropdownlist></TD>
				</TR>
				<tr>
					<td colSpan="2">
						<asp:Label id="Label1" runat="server" Width="96px" CssClass="mandatory">Choose Month</asp:Label>
						<uc1:MonthCombo id="MonthCombo1" runat="server"></uc1:MonthCombo></td>
				</tr>
				<tr>
					<td colSpan="2">
						<asp:Label id="Label2" runat="server" Width="96px" CssClass="mandatory">Choose Year</asp:Label>
						<uc1:YearCombo id="YearCombo1" runat="server"></uc1:YearCombo></td>
				</tr>
				<tr>
					<td colspan="2">
						<asp:Button id="btngenerate" runat="server" CssClass="formbuttons" Text="Generate Report" onclick="btngenerate_Click"></asp:Button>
					</td>
				</tr>
				<tr>
					<td valign="top" colSpan="2">&nbsp;
						<uc1:ReportPage id="ReportPage1" runat="server"></uc1:ReportPage></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
