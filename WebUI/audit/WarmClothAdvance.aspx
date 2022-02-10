<%@ Page language="c#" Codebehind="WarmClothAdvance.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.WarmClothAdvance" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - WarmCloth Advance</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>

		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="TansiLoan" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD colSpan="4" style="HEIGHT: 47px" style="text-align:left">
									<uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
							<asp:Panel ID="pnlControls" Runat="server">
								<TR>
									<TD colSpan="4">
										<uc1:GPFNumber id="GPFNumber1" runat="server"></uc1:GPFNumber></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblFormSanctionOrder" runat="server" CssClass="mandatory"> Sanction Order</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtSanctionOrder" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this)"></asp:TextBox>
										<asp:RequiredFieldValidator id="rfvSanctionOrder" runat="server" CssClass="validatemessage" ForeColor=" " ErrorMessage="Data Required"
											Display="Dynamic" ControlToValidate="txtSanctionOrder"></asp:RequiredFieldValidator></TD>
									<TD width="15%">
										<asp:Label id="lblDate" runat="server" CssClass="mandatory">Sanction Date</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</TD>
									<TD width="35%">
										<asp:TextBox id="txtSanctionDate" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('TansiLoan.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" ForeColor=" " ErrorMessage="Data Required"
											Display="Dynamic" ControlToValidate="txtSanctionDate"></asp:RequiredFieldValidator>
										<asp:RegularExpressionValidator id="revSanctionDate" runat="server" CssClass="validatemessage" ForeColor=" " ErrorMessage="Date expected in dd/mm/yyyy"
											Display="Dynamic" ControlToValidate="txtSanctionDate" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblLoanType" runat="server" CssClass="mandatory">Nature Of Loan</asp:Label></TD>
									<TD width="35%">
										<asp:DropDownList id="cboLoanType" runat="server" CssClass="drptxt" Enabled="False" AutoPostBack="True"></asp:DropDownList>
										<asp:Label id="lblLoanAmount" runat="server"></asp:Label></TD>
									<TD width="15%">
										<asp:Label id="lblAmount" runat="server" CssClass="mandatory">Amount</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtAmount" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:TextBox>
										<asp:RequiredFieldValidator id="rfvAmount" runat="server" CssClass="validatemessage" ForeColor=" " ErrorMessage="Data Required"
											Display="Dynamic" ControlToValidate="txtAmount"></asp:RequiredFieldValidator>
										<asp:RangeValidator id="rnvAmount" runat="server" CssClass="validatemessage" ForeColor=" " ErrorMessage="Should be a number"
											Display="Dynamic" ControlToValidate="txtAmount" MaximumValue="99999999" MinimumValue="1" Type="Double"></asp:RangeValidator></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblnoinstall" CssClass="mandatory" Runat="server">No Of Installments</asp:Label></TD>
									<TD>
										<asp:TextBox id="txtnoinstall" CssClass="formlines" Runat="server" onblur="chkbadchar(this)"></asp:TextBox>&nbsp;
										<asp:RequiredFieldValidator id="Requiredfieldvalidator2" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											Display="Dynamic" ControlToValidate="txtnoinstall"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label></TD>
								</TR>
							</asp:Panel>
							<TR>
								<TD colspan='4'>
									<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:Button>&nbsp;
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>&nbsp;
									<asp:TextBox id="todaydate" runat="server" Width="94px" Visible="False"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
