<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Page language="c#" Codebehind="GrantsBill.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.GrantsBill" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - GrantsBill</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="GrantsBill" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD style="text-align:left">
									<uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
                            <tr><td> 
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr"> 
								<TR>
									<TD width="15%">
										<asp:label id="lblSanctionOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionOrder" runat="server" CssClass="formlines"  onblur="chkbadchar(this);" MaxLength="50"></asp:textbox>
										<asp:RequiredFieldValidator id="rfdSanctionOrder" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtSanctionOrder" ErrorMessage="Data  Required"></asp:RequiredFieldValidator></TD>
									<TD width="15%">
										<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionDate" runat="server" CssClass="formlines"  onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('GrantsBill.txtSanctionDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtSanctionDate" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblGrossAmount" runat="server" CssClass="mandatory">Gross Amount</asp:label></TD>
									<TD>
										<asp:textbox id="txtGross" runat="server" CssClass="formlines" MaxLength="12"  
                                            onblur="chkbadchar(this);"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvdGross" runat="server" CssClass="validatemessage" ControlToValidate="txtGross"
											ErrorMessage="Data Required" ForeColor=" "></asp:requiredfieldvalidator></TD>
									<TD>
										<asp:label id="lblDeduction" runat="server" CssClass="mandatory">Deductions</asp:label></TD>
									<TD>
										<asp:textbox id="txtDeductions" runat="server" CssClass="formlines" 
                                            MaxLength="12"  onblur="chkbadchar(this);"></asp:textbox>
										<asp:rangevalidator id="rngtxtdeductions" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtDeductions" ErrorMessage="Incorrect Data" ForeColor=" " MinimumValue="0" MaximumValue="99999999"
											Type="Integer"></asp:rangevalidator></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:Label id="lblMessage" runat="server" CssClass="validatemessage" Width="486px"></asp:Label>
										<asp:TextBox id="todaydate" runat="server" Visible="False"  onblur="chkbadchar(this);"></asp:TextBox></TD>
								</TR></table>
							</asp:Panel>
                            </td></tr>
							<TR>
								<TD>
									<asp:Button id="btnSave" runat="server" Text="Save" CssClass="formbuttons" Width="90px" onclick="btnSave_Click"></asp:Button>&nbsp;
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1" Width="133px"></asp:Label>&nbsp;</TD>
							</TR>
							<TR>
								<TD>
									<uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
