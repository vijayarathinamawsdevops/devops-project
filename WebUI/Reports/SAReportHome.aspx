<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="SAReportHome.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.SAReportHome" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>SAReportHome</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<form id="frmSAReportHome" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table width="80%" cellpadding="2" cellspacing="5" border="0" class="parabr" align="center">
							<tr>
								<td colspan="5" class="rptHead" align="right"><A class=linktxt href="../Reports/AGReportMenus.aspx" > <STRONG><FONT 
            color=#9900ff size=3><U>Back</U></FONT></STRONG></A></td>
							</tr>
							<tr>
								<td colspan="5" class="rptHead"><img src="../Images/report.gif" align="absMiddle">Sub 
									Account Report Parameters</td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="lblUserName" Runat="server" CssClass="mandatory">Enter Transaction Date</asp:Label></td>
								<td align="right"><asp:Label ID="lblFromDate" Runat="server" CssClass="mandatory">From Date</asp:Label></td>
								<td><asp:TextBox ID="txtFromDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('frmSAReportHome.txtFromDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ControlToValidate="txtFromDate"
										ErrorMessage="*"></asp:requiredfieldvalidator>
                                        
                                         <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>

                                        
                                        </td>
								<td align="right"><asp:Label ID="lblTODate" Runat="server" CssClass="mandatory">To Date</asp:Label></td>
								<td><asp:TextBox ID="txtToDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('frmSAReportHome.txtToDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" CssClass="validatemessage" ControlToValidate="txtToDate"
										ErrorMessage="*"></asp:requiredfieldvalidator>
                                        
                                         <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtToDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>

                                        
                                        </td>
							</tr>
							<tr>
								<td align="right" colspan="2"><asp:Label ID="lblSubaccno" Runat="server" CssClass="mandatory">Enter Sub Account Number (3 Char)</asp:Label></td>
								<td colspan="3"><asp:TextBox ID="txtSUBAccno" Runat="server" CssClass="formlines" MaxLength="3" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator ID="Requiredfieldvalidator1" CssClass="mandatory" Runat="server" ControlToValidate="txtSUBAccno"
										ErrorMessage="*">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td align="right" colspan="5"><asp:Button ID="btnSubmit" Runat="server" Text="Next >>" CssClass="formbuttons" Width="95px" onclick="btnSubmit_Click"></asp:Button></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="HEIGHT: 24px"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td colspan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
