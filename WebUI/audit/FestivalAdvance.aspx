<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Page language="c#" Codebehind="FestivalAdvance.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.FestivalAdvance" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - FestivalAdvance</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="FestivalAdvance" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
                            </table>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr">
								<TR>
									<TD width="15%">
										<asp:label id="lblSanctionOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionOrder" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="50"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('FestivalAdvance.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblFestival" runat="server" CssClass="mandatory">Festival</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboFestival" runat="server" CssClass="drptxt" Width="140px"></asp:dropdownlist></TD>
									<TD width="15%">
										<asp:label id="lblNumberofPersons" runat="server" CssClass="mandatory">Number of Persons</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtNumberofPersons" runat="server" CssClass="formlines" MaxLength="4" onblur="chkbadchar(this);"></asp:textbox>
										<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
											ControlToValidate="txtNumberofPersons"></asp:requiredfieldvalidator>
										<asp:rangevalidator id="rngBillAmount" runat="server" CssClass="validatemessage" ErrorMessage="Data Invalid"
											ControlToValidate="txtNumberofPersons" MaximumValue="9999999999" MinimumValue="1" Type="Double"
											Display="Dynamic"></asp:rangevalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblAuthority" runat="server" CssClass="mandatory">Competent Authority</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtAuthority" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="50"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="Label2" runat="server" CssClass="mandatory">Department</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDepartment" runat="server" CssClass="formlines" MaxLength="200"></asp:textbox></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
										<asp:TextBox id="todaydate" runat="server" Visible="False" onblur="chkbadchar(this);"></asp:TextBox></TD>
								</TR>
                                </table>
							</asp:Panel>
							<TR>
								<TD colSpan="4"><asp:button id="lblSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="lblSave_Click"></asp:button>&nbsp;
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label>&nbsp;</TD>
							<TR>
								<TD colSpan="4"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><br>
						<uc1:footer id="Footer1" runat="server"></uc1:footer>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
