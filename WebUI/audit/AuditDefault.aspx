<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="AuditDefault.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.AuditDefault" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Auditing Default</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/printJS.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script language="javascript">
		function TokenNOFocus()
	{
		 document.getElementById("txtTokenNo").focus();
		}		
		function ShowDOSignature()
		{
			window.open('../DOSignatureView.aspx?&DOC=0', 'DOSignview','width=600,height=180,toolbar=false');
		}
		</script>
	</HEAD>
	<body id="Audit_BillProcess" MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="AuditDefault" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="2" width="98%">
                        <tr>
								<TD class="formtitle" align="center" colSpan="4"><asp:label id="frmtitle" runat="server" CssClass="formtitle">Bill Process</asp:label></TD>
							</tr>
							<tr>
								<TD width="15%" align="left"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label>&nbsp;&nbsp;</TD>
								<TD width="35%">
									<asp:DropDownList id="CboTokenYear" runat="server" CssClass="formlines"></asp:DropDownList>&nbsp;<asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" MaxLength="7"
										Width="125px" onkeypress="numeralsOnly(this);"  onblur="chkbadchar(this);"></asp:textbox>&nbsp;<asp:imagebutton 
                                        id="ibtnTokenGo" runat="server"  ImageAlign="AbsBottom" 
                                        ImageUrl="../Images/go.gif" CausesValidation="False" 
                                        onclick="ibtnTokenGo_Click" Width="18px"></asp:imagebutton>
                                        <asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtTokenNo" 
										ErrorMessage="Data required"></asp:requiredfieldvalidator></TD>
								<TD colSpan="2"><asp:label id="lblMessage" CssClass="validatemessage" ForeColor="Red" Runat="server"></asp:label></TD>
							</tr>
							<TR align="center">
								<TD colSpan="4" align="centre" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
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
