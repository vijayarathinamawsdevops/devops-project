<%@ Register TagPrefix="uc1" TagName="OtherBillBreakup" Src="../UserControls/OtherBillBreakup.ascx" %>
<%@ Page language="c#" Codebehind="OtherBillInput.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Input.OtherBillInput" %>
<%@ Register TagPrefix="uc1" TagName="PensionDeductions" Src="../UserControls/PensionDeductions.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PensionBreakup" Src="../UserControls/PensionBreakup.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CRDetails" Src="../UserControls/CRDetails.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PayDeductions" Src="../UserControls/PayDeductions.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PayCR_OR" Src="../UserControls/PayCR_OR.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Other BillBreakup Input</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="OtherBillInput" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td align="middle" valign="top" height="100%">
						<table border="0" cellpadding="2" cellspacing="0" width="98%">
							<TR>
								<TD width="15%"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" MaxLength="15" AutoPostBack="True" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"></TD>
								<TD width="35%"></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDOCode" runat="server" CssClass="mandatory">DO Code</asp:label></TD>
								<TD width="35%"><asp:label id="txtDOCode" runat="server" CssClass="formlines"></asp:label></TD>
								<TD width="15%"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDPCode" runat="server" CssClass="formlines" MaxLength="4" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"></TD>
								<TD width="35%"></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblPPO" runat="server" CssClass="mandatory">PPO</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtPPO" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblTransType" runat="server" CssClass="mandatory">Payment Type</asp:label></TD>
								<TD width="35%"><asp:dropdownlist id="cboPaymentType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD vAlign="top" colspan="4">
									<uc1:OtherBillBreakup id="OtherBillBreakup1" runat="server"></uc1:OtherBillBreakup>
								</TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="btnSave_Click"></asp:button>
									<asp:label id="lblMessage" runat="server"></asp:label>
								</TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td><br>
						<uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
