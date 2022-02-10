<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Page language="c#" Codebehind="HandLoomLoan.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.HandLoomLoan" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - HandLoomLoan</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>

	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="HandLoomLoan" method="post" runat="server">
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
								<TD  colSpan="4" style="text-align:left"><uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
                          </tble>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr">
								<TR>
									<TD colSpan="4">
										<uc1:GPFNumber id="GPFNumber1" runat="server"></uc1:GPFNumber></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblFormSanctionOrder" runat="server" CssClass="mandatory"> Sanction Order</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtSanctionOrder" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="50"></asp:TextBox>
										<asp:RequiredFieldValidator id="rfvSanctionOrder" runat="server" CssClass="validatemessage" ControlToValidate="txtSanctionOrder"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
									<TD width="15%">
										<asp:Label id="lblDate" runat="server" CssClass="mandatory">Sanction Date</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtSanctionDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="10"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('HandLoomLoan.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" ControlToValidate="txtSanctionDate"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblLoanType" runat="server" CssClass="mandatory">Nature Of Loan</asp:Label></TD>
									<TD width="35%">
										<asp:DropDownList id="cboLoanType" runat="server" CssClass="drptxt" AutoPostBack="True"></asp:DropDownList></TD>
									<TD>
										<asp:Label id="lblnoinstall" CssClass="mandatory" Runat="server">No Of Installments</asp:Label></TD>
									<TD>
										<asp:TextBox id="txtnoinstall" CssClass="formlines" onblur="chkbadchar(this);" Runat="server"></asp:TextBox>&nbsp;
										<asp:RequiredFieldValidator id="reqinstallment" runat="server" CssClass="validatemessage" ControlToValidate="txtnoinstall"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblBasic" CssClass="mandatory" Runat="server">Basic + DA</asp:Label></TD>
									<TD>
										<asp:TextBox id="txtBasic" CssClass="formlines" onblur="chkbadchar(this);" Runat="server">0</asp:TextBox>&nbsp;
										<asp:RequiredFieldValidator id="reqbasicda" runat="server" CssClass="validatemessage" ControlToValidate="txtBasic"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
									<TD>
										<asp:Label id="lblAuthority" CssClass="mandatory" Runat="server">Authority</asp:Label></TD>
									<TD>
										<asp:TextBox id="txtAuthority" CssClass="formlines" Runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
										<asp:TextBox id="todaydate" runat="server" onblur="chkbadchar(this);" Visible="False"></asp:TextBox></TD>
								</TR>
                                </table>
							</asp:Panel>
							<TR>
								<TD>
									<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:Button>&nbsp;
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:ImageButton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" ImageAlign="AbsBottom" onclick="ImageButton1_Click"></asp:ImageButton></TD>
							</TR>
							<TR>
								<TD>
									<asp:PlaceHolder id="PlaceHolder1" runat="server"></asp:PlaceHolder></TD>
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
