<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="InputDefault.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Input.InputDefault" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
  <HEAD>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
		<script>
			function setFocus()
			{
				document.getElementById("txtTokenNo").focus();
			}
		</script>
</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0" onload="setFocus()">
		<form id="InputDefault" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<TR>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="2" cellspacing="2" width="98%">
							<tr>
								<td colspan="2" align="right">
									<asp:Label ID="dt1" Runat="server" CssClass="mandatory">Date</asp:Label>
								</td>
								<td colspan="3" align="left">
									<asp:Label ID="lbldt" Runat="server" CssClass="mandatory"></asp:Label>
								</td>
							</tr>
							<tr>
								<TD width="141" style="WIDTH: 141px"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label>
								</TD>
								<TD width="230" style="WIDTH: 230px"><asp:dropdownlist id="CboTokenYear" runat="server" CssClass="formlines" Width="60">

									</asp:dropdownlist>
									<asp:dropdownlist id="DrpStocode" runat="server" CssClass="formlines" Width="160px" onselectedindexchanged="DrpStocode_SelectedIndexChanged"></asp:dropdownlist>
								<TD width="35%"><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" MaxLength="7" Width="176px" onblur="chkbadchar(this);"></asp:textbox><asp:imagebutton id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnTokenGo_Click"></asp:imagebutton><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" ControlToValidate="txtTokenNo" ErrorMessage="Data required"
										CssClass="validatemessage"></asp:requiredfieldvalidator></TD>
								<TD colSpan="2"><asp:label id="lblMessage" Runat="server">&nbsp;</asp:label></TD>
							</tr>
						</table>
					</td>
				</TR>
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
