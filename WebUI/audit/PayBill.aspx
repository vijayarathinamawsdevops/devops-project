<%@ Page language="c#" Codebehind="PayBill.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.PayBill" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - PayBill</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body id = "Audit_BillProcess1" leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="PayBill" method="post" runat="server">
			<TABLE class="tableleftbgcolor" width="100%" border="0" cellpadding="0" cellspacing="0"
				height="100%">
				<TR>
					<TD style="HEIGHT: 18px"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table cellSpacing="2" cellPadding="1" width="97%" border="0">
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
                            <tr> <td  align="left"> 
							<asp:Panel ID="pnlControls" Runat="server" HorizontalAlign="Left" style="padding-left:0px">
                            <table class="parabr" style="padding-left:0px"> 
								<TR>
									<TD width="15%">
										<asp:label id="lblFromMonth" runat="server" CssClass="mandatory"> From Month</asp:label></TD>
									<TD width="35%">
										<uc1:monthcombo id="MonthCombo1" runat="server" CssClass="formlines"></uc1:monthcombo></TD>
									<TD width="15%">
										<asp:label id="lblToMonth" runat="server" CssClass="mandatory"> To Month</asp:label></TD>
									<TD width="35%">
										<uc1:monthcombo id="MonthCombo2" runat="server" CssClass="formlines"></uc1:monthcombo></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblFromYr" runat="server" CssClass="mandatory">From Year</asp:label></TD>
									<TD width="35%">
										<uc1:yearcombo id="YearCombo1" runat="server" CssClass="formlines"></uc1:yearcombo></TD>
									<TD width="15%">
										<asp:label id="lblToYr" runat="server" CssClass="mandatory">To Year</asp:label></TD>
									<TD width="35%">
										<uc1:yearcombo id="YearCombo2" runat="server" CssClass="formlines"></uc1:yearcombo></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDOType" runat="server" CssClass="mandatory" Visible="False">DOType</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboDOType" runat="server" CssClass="drptxt" AutoPostBack="True" Visible="False"></asp:dropdownlist></TD>
									<TD width="15%">
										<asp:label id="Label4" runat="server" CssClass="mandatory">Number of Days </asp:label><BR>
										<asp:label id="Label1" runat="server" CssClass="mandatory" Font-Size="XX-Small" Font-Bold="True"
											ForeColor="Red">(If Partial Pay)</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtdays" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" Width="26px"
											MaxLength="10" ontextchanged="txtdays_TextChanged">0</asp:textbox>&nbsp;
										<asp:label id="Label2" runat="server" CssClass="mandatory">Rate</asp:label>&nbsp;
										<asp:textbox id="txtrate" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" Width="68px"
											MaxLength="10" ontextchanged="txtrate_TextChanged">0</asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblGross" runat="server" CssClass="mandatory">Gross</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtGross" runat="server" CssClass="formlines" MaxLength="12" 
                                            onblur="chkbadchar(this);"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvdGross" runat="server" CssClass="validatemessage" ForeColor=" " ControlToValidate="txtGross"
											ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
									<TD width="15%">
										<asp:label id="lnldeductions" runat="server" CssClass="mandatory">Deductions</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDeductions" runat="server" CssClass="formlines" 
                                            MaxLength="12" onblur="chkbadchar(this);"></asp:textbox>
										<asp:rangevalidator id="rngtxtdeductions" runat="server" CssClass="validatemessage" ForeColor=" " ControlToValidate="txtDeductions"
											ErrorMessage="Incorrect Data" Display="Dynamic" MinimumValue="0" MaximumValue="99999999" Type="Integer"></asp:rangevalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblptax" runat="server" CssClass="mandatory">Professional Tax</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPtax" runat="server" CssClass="formlines" MaxLength="12" 
                                            onblur="chkbadchar(this);">0</asp:textbox>
										<asp:rangevalidator id="rngtxtPTax" runat="server" CssClass="validatemessage" ForeColor=" " ControlToValidate="txtPtax"
											ErrorMessage="Incorrect Data" Display="Dynamic" MinimumValue="0" MaximumValue="99999999" Type="Integer"></asp:rangevalidator></TD>
									<TD width="15%">
										<asp:label id="lblnsdtotal" runat="server" CssClass="mandatory">NSD Total</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtNsdtotal" runat="server" CssClass="formlines" 
                                            MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox>
										<asp:rangevalidator id="rngtxtNSDTotal" runat="server" CssClass="validatemessage" ForeColor=" " ControlToValidate="txtNsdtotal"
											ErrorMessage="Incorrect Data" Display="Dynamic" MinimumValue="0" MaximumValue="99999999" Type="Integer"></asp:rangevalidator></TD>
								</TR>
								<TR>
									<TD>
										<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button></TD>
									<TD colSpan="3">&nbsp;</TD>
								</TR></table>
							    </asp:Panel></td></tr>
							<TR>
								<TD width="25%" colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<tr>
								<td colSpan="4"><asp:label id="lblsaved" runat="server" CssClass="validatemessage1" Font-Bold="True"></asp:label></td>
							</tr>
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
