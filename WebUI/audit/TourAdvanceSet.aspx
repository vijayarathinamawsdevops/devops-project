<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="TourAdvanceSet.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.TourAdvanceSet" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - TourAdvanceSet</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="TourAdvanceSet" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<TR>
								<TD colSpan="4" style="HEIGHT: 47px" style="text-align:left">
									<uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
							<asp:Panel ID="pnlControls" Runat="server">
								<TR>
									<TD colSpan="4">
										<uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblAmountClaimed" runat="server" CssClass="mandatory">Advance Amount</asp:label></TD>
									<TD colSpan="3">
										<asp:textbox id="txtAdvanceAmount" runat="server" CssClass="formlines" onblur="chkbadchar(this)" AutoPostBack="True" ontextchanged="txtAdvanceAmount_TextChanged"></asp:textbox>
										<asp:requiredfieldvalidator id="rvAdvanceAmount" runat="server" ControlToValidate="txtAdvanceAmount" Display="Dynamic"
											ErrorMessage="Data Required"></asp:requiredfieldvalidator>
										<asp:RangeValidator id="rngAdvAmount" runat="server" ControlToValidate="txtAdvanceAmount" Display="Dynamic"
											ErrorMessage="Incorrect Data" MaximumValue="99999999" MinimumValue="0"></asp:RangeValidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblChalanNo" runat="server" CssClass="mandatory">Challan No.</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChalanNo" runat="server" onblur="chkbadchar(this)" CssClass="formlines"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblChalanDate" runat="server" CssClass="mandatory">Challan Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChalanDate" runat="server" onblur="chkbadchar(this)" CssClass="formlines"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvChallanDate" runat="server" ControlToValidate="txtChalanDate" Display="Dynamic"
											ErrorMessage="Data Required"></asp:requiredfieldvalidator>
										<asp:regularexpressionvalidator id="revSanctionDate" runat="server" ControlToValidate="txtChalanDate" Display="Dynamic"
											ErrorMessage="Date expected in dd/mm/yyyy" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:regularexpressionvalidator>
										<asp:panel id="pnlDtp" runat="server" Width="34px" Height="13px">
											<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
												href="javascript:show_calendar('Water.txtBillDate')"></A><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
												href="javascript:show_calendar('TourAdvanceSet.txtChalanDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
										</asp:panel></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblChalanAmt" runat="server" CssClass="mandatory" Width="99px">Recovery Amount</asp:label></TD>
									<TD colSpan="3">
										<asp:textbox id="txtChalanAmt" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvAmount" runat="server" ControlToValidate="txtChalanAmt" Display="Dynamic"
											ErrorMessage="Data Required"></asp:requiredfieldvalidator>
										<asp:RangeValidator id="rngRecAmount" runat="server" ControlToValidate="txtChalanAmt" Display="Dynamic"
											ErrorMessage="Incorrect Data"></asp:RangeValidator></TD>
								</TR>
								<TR>
									<TD width="15%" colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
								</TR>
								<TR>
									<TD colSpan="2">
										<asp:button id="btnCheck" runat="server" CssClass="formbuttons" Width="90px" Text="CheckAmount"
											Visible="False"></asp:button></TD>
									<TD colSpan="2">
										<asp:button id="btnDelete" runat="server" CssClass="formbuttons" Width="90px" Text="Delete"></asp:button>
										<asp:TextBox id="todaydate" runat="server" Visible="False" onblur="chkbadchar(this)"></asp:TextBox></TD>
								</TR>
							</asp:Panel>
							<TR>
								<td colSpan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:button></td>
							<tr>
								<TD colSpan="4"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
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
