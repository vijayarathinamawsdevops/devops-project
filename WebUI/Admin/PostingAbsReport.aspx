<%@ Page language="c#" Codebehind="PostingAbsReport.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.PostingAbsReport" %>

<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>

<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>SAReportHome</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmSAReportHome" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="T1" height="100%" cellSpacing="0" cellPadding="0" width="100%"
				border="0">
				
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table class="parabr" cellSpacing="5" cellPadding="2" width="80%" align="center" border="0">
							<tr>
								<td class="rptHead" colSpan="4" align="right"><A class=linktxt href="../Reports/AGReportMenus.aspx" > <STRONG><FONT 
            color=#9900ff size=3><U>Back</U></FONT></STRONG></A></td>
							</tr>
							<tr>
								<td class="rptHead" colSpan="4"><IMG src="../Images/report.gif" align="absMiddle">Posting 
									Abstract Report</td>
							</tr>
							<TR>
								<td align="right"><asp:label id="lbldate" CssClass="mandatory" Runat="server"> Enter FromDate(DD/MM/YYYY)</asp:label></td>
								<td><asp:textbox id="txtFromDate" CssClass="formlines" Runat="server" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('frmSAReportHome.txtFromDate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A><asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ErrorMessage="*" ControlToValidate="txtFromDate"></asp:requiredfieldvalidator>
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                        </td>
								<td align="right"><asp:label id="lbltodate" CssClass="mandatory" Runat="server"> Enter ToDate(DD/MM/YYYY)</asp:label></td>
								<td><asp:textbox id="txtTodate" CssClass="formlines" Runat="server" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('frmSAReportHome.txtTodate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
                                        <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" ErrorMessage="*" ControlToValidate="txtTodate"></asp:requiredfieldvalidator>
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtTodate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                        </td>
							</TR>
							<tr>
								<td align="right" colSpan="4"><asp:button id="btnSubmit" CssClass="formbuttons" Runat="server" Width="95px" Text="Genarate Report" onclick="btnSubmit_Click"></asp:button></td>
							</tr>
							<tr>
								<td colSpan="4">
									<table id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td colSpan="2"><br>
											</td>
										</tr>
										<tr>
											<td width="2%">&nbsp;</td>
											<td valign="top"><uc1:ReportPage id="ReportPage1" runat="server"></uc1:ReportPage></td>
											<td width="2%">&nbsp;</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
