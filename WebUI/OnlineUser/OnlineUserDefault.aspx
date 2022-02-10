<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="OnlineUserDefault.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.OnlineUserDefault" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Auditing Default</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
		<script language="javascript">
		function TokenNOFocus()
		{
		  document.getElementById("txtTokenNo").focus();
		}		
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0" onload="TokenNOFocus();">
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
								<TD width="15%" align="right"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label><asp:label id="lblTokenPrefix" runat="server" CssClass="labelformlines" Visible="False">20072801</asp:label>&nbsp;&nbsp;</TD>
								<TD width="35%">&nbsp;&nbsp;<asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="7"
										Width="125px" ReadOnly="True" ontextchanged="txtTokenNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;<asp:imagebutton id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" Enabled="False" onclick="ibtnTokenGo_Click"></asp:imagebutton><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtTokenNo"
										ErrorMessage="Data required"></asp:requiredfieldvalidator></TD>
								<TD colSpan="2"><asp:label id="lblMessage" CssClass="validatemessage" ForeColor="Red" Runat="server"></asp:label></TD>
							</tr>
							<TR align="center">
								<TD colSpan="4" align="centre"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
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
