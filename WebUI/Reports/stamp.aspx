<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<%@ Page language="c#" Codebehind="stamp.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.stamp" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Stamp</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<FORM id="stamp" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td valign="top" width="20%">
						<uc1:ReportMenuItems id="ReportMenuItems1" runat="server"></uc1:ReportMenuItems></td>
					<td align="left" valign="top" height="100%" style="PADDING-LEFT:20px;PADDING-TOP:20px">
						<table border="0" cellpadding="2" cellspacing="2" width="90%" class="brdr">
							<TR class="formtitle">
								<TD align="center" colSpan="2"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">Stamp - Report</asp:label></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 76px">
									<asp:Label id="lblFromDate" runat="server" CssClass="mandatory">From Date</asp:Label></TD>
								<TD>
									<asp:TextBox id="txtFromDate" runat="server"  onblur="chkbadchar(this);" CssClass="formlines" MaxLength="10"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('stamp.txtFromDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
									<asp:RequiredFieldValidator id="rvfFromDate" runat="server" ErrorMessage="From Date is Must" ControlToValidate="txtFromDate"></asp:RequiredFieldValidator>
									<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date expected in dd/mm/yyyy"
										ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtFromDate"></asp:RegularExpressionValidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 76px">
									<asp:Label id="lblToDate" runat="server" CssClass="mandatory">To Date</asp:Label></TD>
								<TD>
									<P>
										<asp:TextBox id="txtToDate" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="10"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('stamp.txtToDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvToDate" runat="server" ErrorMessage="To Date is also Required" ControlToValidate="txtToDate"></asp:RequiredFieldValidator>
										<asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date expected in dd/mm/yyyy"
											ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
											ControlToValidate="txtToDate"></asp:RegularExpressionValidator></P>
								</TD>
							</TR>
							<TR>
								<TD style="WIDTH: 76px">
									<asp:Label id="lbldpcode" runat="server" CssClass="mandatory">DP Code</asp:Label></TD>
								<TD>
									<asp:TextBox id="txtDpcode" runat="server" onblur="chkbadchar(this);" CssClass="formlines" ontextchanged="txtDpcode_TextChanged"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 76px" colSpan="2">
									<asp:Label id="lbl_message" runat="server"></asp:Label></TD>
							</TR>
							<TR>
								<TD colSpan="2">
									<asp:Button id="btnGo" runat="server" CssClass="formbuttons" Text="Generate Report" Width="120px" onclick="btnGo_Click"></asp:Button>
									<asp:button id="cmdImport" runat="server" CssClass="formbuttons" Text="Download" Width="120px" onclick="cmdImport_Click"></asp:button></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td colspan="2"><uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</TABLE>
		</FORM>
	</body>
</HTML>
