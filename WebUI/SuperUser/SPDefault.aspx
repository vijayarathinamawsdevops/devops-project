<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SuperUserHeader" Src="../UserControls/SuperUserHeader.ascx" %>
<%@ Page language="c#" Codebehind="SPDefault.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.SuperUser.SPDefault" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Super User</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script>
		function setFocus()
		{
			document.SPDefault.txtDOCode.focus();		  
		}
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" onload="setFocus();">
		<form id="SPDefault" method="post" runat="server">
			<table class="tableleftbgcolor" id="Table2" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
				<tr>
					<td><uc1:SuperUserHeader id="SuperUserHeader1" runat="server"></uc1:SuperUserHeader></td>
				</tr>
				<TR class="formtitle">
					<TD align="middle"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">Budget Check - [DP Code]</asp:label></TD>
				</TR>
				<tr>
					<td vAlign="top" height="100%">
						<table class="parabr" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
							<tr>
								<td align="left" width="15%"><asp:label id="lblDrawingOfficer" runat="server" CssClass="mandatory">Drawing Officer&nbsp;</asp:label></td>
								<TD><asp:textbox id="txtDOCode" tabIndex="2" runat="server" CssClass="formlines" Width="50px" onblur="chkbadchar(this);" AutoPostBack="True" MaxLength="5" ontextchanged="txtDOCode_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvDOCode" runat="server" ControlToValidate="txtDOCode" ErrorMessage="***" Display="Dynamic"></asp:requiredfieldvalidator><asp:dropdownlist id="cboDrawingOfficer" tabIndex="2" runat="server" CssClass="formlines" Width="260px" AutoPostBack="True" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist><asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" ControlToValidate="cboDrawingOfficer" ErrorMessage="***"></asp:requiredfieldvalidator></TD>
							</tr>
							<TR>
								<td align="left" width="15%"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></td>
								<td><asp:dropdownlist id="cbodpcode" tabIndex="4" runat="server" CssClass="formlines" Width="210px" AutoPostBack="True" Font-Names="Arial" onselectedindexchanged="cbodpcode_SelectedIndexChanged"></asp:dropdownlist><asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" ControlToValidate="cbodpcode" ErrorMessage="***"></asp:requiredfieldvalidator></td>
							</TR>
							<tr>
								<td align="left" width="15%"><asp:label id="lblbudgetcheck" runat="server" CssClass="mandatory" Visible="False">DP Code</asp:label></td>
								<td><asp:checkbox id="chBudgetcheck" CssClass="formlines" Width="180px" Runat="server" Text="Enable Budget Check"></asp:checkbox></td>
							</tr>
							<TR>
								<td colSpan="2"><asp:button id="btnSave" tabIndex="7" runat="server" 
                                        CssClass="formbuttons" Width="110px" Text="Save" onclick="btnSave_Click"></asp:button></td>
							</TR>
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
