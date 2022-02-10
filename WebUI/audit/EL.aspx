<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="EL.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.EL" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - EL</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="EL" method="post" runat="server">
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
							</TR></table>
                             
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr"> 
								<TR>
									<TD colSpan="4">
										<uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblName" runat="server" CssClass="mandatory">Name</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtName" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="40"></asp:textbox></TD>
									<TD width="15%"></TD>
									<TD width="35%"></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblSanctionOrderNo" runat="server" CssClass="mandatory">Sanction Order No</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionOrderNo" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="50"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvSanctionOrder" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											Display="Dynamic" ControlToValidate="txtSanctionOrderNo"></asp:requiredfieldvalidator></TD>
									<TD width="15%">
										<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('EL.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:requiredfieldvalidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											Display="Dynamic" ControlToValidate="txtSanctionDate"></asp:requiredfieldvalidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblElDays" runat="server" CssClass="mandatory">E.L Days</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtElDays" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="999"></asp:textbox>
										<asp:comparevalidator id="cfvElDays" runat="server" CssClass="validatemessage" ErrorMessage="Should be a number"
											Display="Dynamic" ControlToValidate="txtElDays" Operator="DataTypeCheck" Type="Integer"></asp:comparevalidator>
										<asp:requiredfieldvalidator id="rfvELDays" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											Display="Dynamic" ControlToValidate="txtElDays"></asp:requiredfieldvalidator></TD>
									<TD width="15%">
										<asp:label id="lblElAmount" runat="server" CssClass="mandatory">E.L Amount</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtElAmount" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="10"></asp:textbox>
										<asp:comparevalidator id="cfvElAmount" runat="server" CssClass="validatemessage" ErrorMessage="Should be Number"
											Display="Dynamic" ControlToValidate="txtElAmount" Operator="DataTypeCheck"></asp:comparevalidator>
										<asp:requiredfieldvalidator id="rfvELAmount" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											Display="Dynamic" ControlToValidate="txtElAmount"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblELPAdays" runat="server" CssClass="mandatory">ELPA Days</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtELPADays" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="10"></asp:textbox>
										<asp:comparevalidator id="cfvELPADays" runat="server" CssClass="validatemessage" ErrorMessage="Should be a number"
											Display="Dynamic" ControlToValidate="txtELPADays" Operator="DataTypeCheck" Type="Integer"></asp:comparevalidator></TD>
									<TD width="15%">
										<asp:label id="lblELPAamt" runat="server" CssClass="mandatory">ELPA Amount</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtELPAAmount" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="10"></asp:textbox>
										<asp:comparevalidator id="cfvELPAAmount" runat="server" CssClass="validatemessage" ErrorMessage="Should be a number"
											Display="Dynamic" ControlToValidate="txtELPAAmount" Operator="DataTypeCheck" Type="Integer"></asp:comparevalidator></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
										<asp:TextBox id="todaydate" runat="server" onblur="chkbadchar(this);" Visible="False"></asp:TextBox></TD>
								</TR></table>
							</asp:Panel>
							<TR>
								<TD>
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="btnsave_Click"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" onclick="ImageButton1_Click"></asp:imagebutton>&nbsp;</TD>
							</TR>
							<tr>
								<td><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></td>
							</tr>
							<TR>
								<TD><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder></TD>
							</TR>
							<TR>
								<TD><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
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
