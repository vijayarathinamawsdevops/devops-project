<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Page language="c#" Codebehind="SpecialProvidentFund.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.SpecialProvidentFund" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Special Provident Fund</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="SpecialProvidentFund" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
                         </table>
							<asp:Panel ID="pnlControls" Runat="server" >
                              <table class="parabr">
								<TR>
									<TD colSpan="4"><uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
								</TR>
								<TR>
									<TD width="15%"><asp:label id="lblSanctionOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
									<TD width="35%"><asp:textbox id="txtSanctionOrder" runat="server" onblur="chkbadchar(this)" MaxLength="50" TabIndex="3" CssClass="formlines"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvSanctionOrder" runat="server" ErrorMessage="Data Required" ControlToValidate="txtSanctionOrder"
											Display="Dynamic" CssClass="validatemessage"></asp:RequiredFieldValidator></TD>
									<TD width="15%"><asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
									<TD width="35%"><asp:textbox id="txtSanctionDate" runat="server" onblur="chkbadchar(this)" CssClass="formlines" TabIndex="4"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('SpecialProvidentFund.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
										<asp:RequiredFieldValidator id="rfvSanctionDate" runat="server" ErrorMessage="Data Required" ControlToValidate="txtSanctionDate"
											Display="Dynamic"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD width="15%"><asp:label id="lblSpf" runat="server" CssClass="mandatory">Type of SPF</asp:label></TD>
									<TD width="35%"><asp:dropdownlist id="cboSpfType" runat="server" CssClass="drptxt" AutoPostBack="True" Width="155px"
											TabIndex="5" onselectedindexchanged="cboSpfType_SelectedIndexChanged"></asp:dropdownlist></TD>
									<TD width="15%"><asp:label id="Label1" runat="server" CssClass="mandatory" Width="138px"> Type of Withdrawal</asp:label></TD>
									<TD width="35%"><asp:dropdownlist id="cboTypeWD" runat="server" CssClass="drptxt" Width="156px" TabIndex="6"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
										<asp:TextBox id="todaydate" runat="server" onblur="chkbadchar(this)" Visible="False"></asp:TextBox></TD>
								</TR>
                              </table>
							</asp:Panel>
							<TR>
								<TD colSpan="4"><asp:button id="btnSave" runat="server" Text="Save" CssClass="formbuttons" Width="100px" TabIndex="7" onclick="btnSave_Click"></asp:button>
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
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
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
