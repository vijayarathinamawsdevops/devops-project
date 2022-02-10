<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PayCR_OR" Src="../UserControls/PayCR_OR.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PayDeductions" Src="../UserControls/PayDeductions.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CRDetails" Src="../UserControls/CRDetails.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PensionBreakup" Src="../UserControls/PensionBreakup.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PensionDeductions" Src="../UserControls/PensionDeductions.ascx" %>
<%@ Page language="c#" Codebehind="PensionBillInput.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Input.PensionBillInput" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - PensionBill Input</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="PensionBillInput" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD width="15%" colSpan="4"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td valign="top" height="100%">
						<asp:Panel ID="pnlControls" Runat="server">
							<TABLE cellSpacing="0" cellPadding="2" width="98%" align="center" border="0">
								<TR>
									<TD width="15%">
										<asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" ReadOnly="True" AutoPostBack="True"
											MaxLength="15" ontextchanged="txtTokenNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
									<TD width="15%"></TD>
									<TD width="35%"></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDOCode" runat="server" CssClass="mandatory">DO Code</asp:label></TD>
									<TD width="35%">
										<asp:label id="txtDOCode" runat="server" CssClass="formlines" Width="240px"></asp:label></TD>
									<TD width="15%">
										<asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDPCode" runat="server" CssClass="formlines" ReadOnly="True" MaxLength="4" onblur="chkbadchar(this);"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
									<TD width="15%"></TD>
									<TD width="35%"></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblPPO" runat="server" CssClass="mandatory">PPO</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPPO" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblTransType" runat="server" CssClass="mandatory">Payment Type</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboPaymentType" runat="server" CssClass="formlines"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<TABLE cellSpacing="0" cellPadding="1" width="100%" border="0">
											<TR>
												<TD vAlign="top" width="40%">
													<uc1:pensionbreakup id="PensionBreakup1" runat="server"></uc1:pensionbreakup></TD>
												<TD vAlign="top" width="40%">
													<uc1:pensiondeductions id="PensionDeductions1" runat="server"></uc1:pensiondeductions></TD>
												<TD vAlign="top" width="20%">
													<uc1:paycr_or id="PayCR_OR1" runat="server"></uc1:paycr_or></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD colSpan="4"></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="100px" Text="Save" onclick="btnSave_Click"></asp:button>
										<asp:label id="lblMessage" runat="server"></asp:label></TD>
								</TR>
							</TABLE>
						</asp:Panel>
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
