<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="Datewise_BillDetails.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Query.Datewise_BillDetails" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Datewise_BillDetails</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Datewise_BillDetails" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" cellSpacing="1" cellPadding="1" width="100%" border="1">
				<TR>
					<TD colSpan="4">
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="lblFromDate" runat="server" CssClass="mandatory">From Date</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtFromDate" runat="server" CssClass="formlines"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;" href="javascript:show_calendar('Datewise_BillDetails.txtFromDate');"><IMG src="../Images/show-calendar.gif" border="0"></a></TD>
                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                        CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                         |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
					<TD>
						<asp:Label id="lblToDate" runat="server" CssClass="mandatory">To Date</asp:Label></TD>
					<TD>
						<asp:TextBox id="txtToDate" runat="server" CssClass="formlines"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;" href="javascript:show_calendar('Datewise_BillDetails.txtToDate');"><IMG src="../Images/show-calendar.gif" border="0"></a></TD>
                        <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtToDate"
CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
 |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
				</TR>
				<TR>
					<TD></TD>
					<TD></TD>
					<TD></TD>
					<TD></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
