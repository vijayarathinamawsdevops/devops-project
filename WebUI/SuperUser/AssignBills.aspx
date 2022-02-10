<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SuperUserHeader" Src="../UserControls/SuperUserHeader.ascx" %>
<%@ Page language="c#" Codebehind="AssignBills.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.SuperUser.AssignBills" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Super User - Assign Bills</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script>
		function setFocus()
		{
			document.AssignBills.txtDOCode.focus();		  
		}
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="AssignBills" method="post" runat="server">
			<table class="tableleftbgcolor" id="Table2" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
				<tr>
					<td>
						<uc1:SuperUserHeader id="SuperUserHeader1" runat="server"></uc1:SuperUserHeader></td>
				</tr>
				<tr>
					<td vAlign="top" height="100%">
						<table class="parabr" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
							<tr>
								<td align="left" width="15%"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token Number</asp:label></td>
								<TD><asp:textbox id="txtQTokenNo" tabIndex="2" runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="150px" MaxLength="5"></asp:textbox>&nbsp;&nbsp;<asp:imagebutton id="ibtnTokenGo" runat="server" CausesValidation="False" ImageUrl="../Images/go.gif" ImageAlign="AbsBottom" onclick="ibtnTokenGo_Click"></asp:imagebutton><asp:requiredfieldvalidator id="rfvDOCode" runat="server" ControlToValidate="txtQTokenNo" ErrorMessage="***" Display="Dynamic"></asp:requiredfieldvalidator></TD>
							</tr>
							<TR class="formtitle">
								<TD align="middle" colSpan="2"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">Re-Assign Bills</asp:label></TD>
							</TR>
							<tr>
								<td colspan="2">
									<asp:Panel ID="pnlTokendetails" Runat="server" Visible="False">
										<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
											<TR>
												<TD width="15%">
													<asp:label id="lbldTokenNo" runat="server" CssClass="mandatory">Token Number</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" Enabled="False" ReadOnly="True"></asp:textbox></TD>
												<TD width="15%">
													<asp:label id="lblDoCode" runat="server" CssClass="mandatory">Drawing Officer </asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtDoCode" runat="server" CssClass="mandatory" Enabled="False" ReadOnly="True"></asp:textbox></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtDPCode" runat="server" CssClass="mandatory" Enabled="False" ReadOnly="True"></asp:textbox></TD>
												<TD width="15%">
													<asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtBillAmount" runat="server" CssClass="mandatory" Enabled="False" ReadOnly="True"></asp:textbox></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:label id="lblBillPresDt" runat="server" CssClass="mandatory">Bill Presented Date</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtBillPresDt" runat="server" CssClass="mandatory" Enabled="False" ReadOnly="True"></asp:textbox></TD>
												<TD width="15%">
													<asp:label id="lblBillType" runat="server" CssClass="mandatory">Bill Type</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtBillType" runat="server" CssClass="mandatory" Enabled="False" ReadOnly="True"></asp:textbox></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:label id="lblBillStatus" runat="server" CssClass="mandatory">Bill Status</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtBillStatus" runat="server" CssClass="mandatory" Enabled="False" ReadOnly="True"></asp:textbox></TD>
											</TR>
											<TR>
												<TD>
													<asp:label id="lblBillAssignto" runat="server" CssClass="mandatory">Bill Assign To</asp:label></TD>
												<TD>
													<asp:TextBox id="txtBillAssignto" runat="server" CssClass="mandatory" Enabled="False" ReadOnly="True"></asp:TextBox></TD>
												<TD>
													<asp:label id="lblBillReassign" runat="server" CssClass="mandatory">Bill Re-Assign To</asp:label></TD>
												<TD>
													<asp:DropDownList id="drpUserid" CssClass="formlines" Width="150px" Runat="server"></asp:DropDownList></TD>
											</TR>
											<TR>
												<TD colSpan="3">
													<asp:Button id="btnUpdate" CssClass="formbuttons" Width="110px" Runat="server" Text="Update" onclick="btnUpdate_Click"></asp:Button>&nbsp;&nbsp;
													<asp:Button id="btnClear" CssClass="formbuttons" Width="110px" Runat="server" Text="Clear" onclick="btnClear_Click"></asp:Button></TD>
											</TR>
										</TABLE>
									</asp:Panel>
								</td>
							</tr>
							<TR>
								<TD colSpan="2"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</table>
		</form>
	</body>
</HTML>
