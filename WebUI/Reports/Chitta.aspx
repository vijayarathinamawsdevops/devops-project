<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="Chitta.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.Chitta" %>
<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Chitta</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Chitta" method="post" runat="server">
			<TABLE  id="Table2" cellSpacing="0" cellPadding="0" width="100%"
				border="0" align="center" height="100%">
				<TR>
					<TD colspan="2"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td valign="top" width="20%">
						<uc1:ReportMenuItems id="ReportMenuItems1" runat="server"></uc1:ReportMenuItems></td>
					<td valign="top" height="100%">
						<table width="98%" cellpadding="2" cellspacing="0" border="0" align="center">
							<TR class="formtitle">
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">Chitta - Report</asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="2"><asp:label id="LblFromDate" runat="server" CssClass="mandatory">Enter From Date</asp:label></TD>
								<TD colSpan="2"><asp:textbox id="txtFromDate" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Chitta.txtFromDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
									<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" CssClass="mandatory" ErrorMessage="From Date is required"
										Display="Dynamic" ControlToValidate="txtFromDate"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                        </TD>
							</TR>
							<TR>
								<TD colSpan="2"><asp:label id="LblToDate" runat="server" CssClass="mandatory">Enter To Date</asp:label></TD>
								<TD colSpan="2"><asp:textbox id="txtToDate" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Chitta.txtToDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
									<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" CssClass="mandatory" ErrorMessage="To Date is required"
										Display="Dynamic" ControlToValidate="txtToDate"></asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtToDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                        </TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<asp:Button id="btnGenerate1" runat="server" CssClass="formbuttons" Text="Generate Report" Width="120px" onclick="btnGenerate1_Click"></asp:Button></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD colspan="2"><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
