<%@ Page language="c#" Codebehind="WagesBill.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.WagesBill" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - WagesBill</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/printJS.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="WagesBill" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD colSpan="4" style="text-align:left">
									<uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
                            </table>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr">
								<TR>
									<TD width="15%">
										<asp:Label id="lblMonth" runat="server" CssClass="mandatory">Wages Bill Month</asp:Label></TD>
									<TD width="35%">
										<uc1:MonthCombo id="MonthCombo1" runat="server"></uc1:MonthCombo></TD>
									<TD width="15%">
										<asp:Label id="lblYear" runat="server" CssClass="mandatory">Year</asp:Label></TD>
									<TD width="35%">
										<uc1:YearCombo id="YearCombo1" runat="server"></uc1:YearCombo></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblGross" runat="server" CssClass="mandatory">Gross</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtGross" runat="server" CssClass="formlines" MaxLength="12" 
                                            onblur="chkbadchar(this)"></asp:TextBox>
										<asp:RequiredFieldValidator id="rfvdGross" runat="server" ErrorMessage="Data Required" ControlToValidate="txtGross"
											Display="Dynamic" CssClass="validatemessage" ForeColor=" "></asp:RequiredFieldValidator>
										<asp:RangeValidator id="rngGross" runat="server" ControlToValidate="txtGross" ErrorMessage="Incorrect Data"
											Display="Dynamic" MinimumValue="1" MaximumValue="999999999" CssClass="validatemessage" ForeColor=" "></asp:RangeValidator></TD>
									<TD width="15%">
										<asp:Label id="lnldeductions" runat="server" CssClass="mandatory">Deductions</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtDeductions" runat="server" CssClass="formlines" 
                                            onblur="chkbadchar(this)" MaxLength="12"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label></TD>
								</TR>
                               </table>
							</asp:Panel>
							<TR>
								<TD colSpan="4">
									<asp:Button id="btnSave" runat="server" Text="Save" CssClass="formbuttons" Width="90px" onclick="btnSave_Click"></asp:Button>
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></TD>
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
