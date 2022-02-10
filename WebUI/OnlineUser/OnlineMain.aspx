<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="LookUp" Src="../UserControls/LookUp.ascx" %>
<%@ Page language="c#" Codebehind="OnlineMain.aspx.cs" AutoEventWireup="false" Inherits="eKaruvoolam.WebUI.OnlineMain" SmartNavigation="True" %>
<%@ Register TagPrefix="uc1" TagName="OnlineUserMenus" Src="../UserControls/OnlineUserMenus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Online User</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
		<script language="javascript">
        //Commented By Nibedita on 23/12/2011

					
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Counter" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table2" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" align="center" border="0">
				<tr>
					<td vAlign="top"><uc1:onlineusermenus id="OnlineUserMenus1" runat="server"></uc1:onlineusermenus></td>
				</tr>
				<TR>
					<td vAlign="top" height="100%">
						<table class="parabr" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
							<tr>
								<td align="left" width="15%"><asp:label id="lblDrawingOfficer" runat="server" CssClass="mandatory">Drawing Officer&nbsp;</asp:label></td>
								<TD><asp:textbox id="txtDOCode" tabIndex="2" runat="server" CssClass="formlines" ReadOnly="True"
										MaxLength="5" Width="50px" onblur="chkbadchar(this);"></asp:textbox><asp:dropdownlist id="cboDrawingOfficer" tabIndex="2" runat="server" CssClass="formlines" Width="260px"
										Enabled="False"></asp:dropdownlist></TD>
							</tr>
							<tr>
								<TD align="left"><asp:label id="lblBillType" runat="server" CssClass="mandatory">Bill Type</asp:label></TD>
								<TD><asp:dropdownlist id="cboBillType" tabIndex="1" runat="server" CssClass="formlines" AutoPostBack="True"
										Width="200px"></asp:dropdownlist></TD>
							</tr>
							<TR>
								<TD align="left"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="***" ControlToValidate="txtDPCode"></asp:requiredfieldvalidator></TD>
								<TD><asp:textbox id="txtDPCode" tabIndex="9" runat="server" CssClass="formlines" MaxLength="15" AutoPostBack="True" onblur="chkbadchar(this);"></asp:textbox><asp:dropdownlist id="cbodpcode" tabIndex="4" runat="server" CssClass="formlines" AutoPostBack="True"
										Width="110px" Font-Names="Arial"></asp:dropdownlist><asp:dropdownlist id="drpsubdpcode" tabIndex="5" runat="server" CssClass="formlines" AutoPostBack="True"
										Width="60px" Font-Names="Arial"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD><asp:label id="lblDPDescription" runat="server" CssClass="textblackbold11px"></asp:label></TD>
							</TR>
							<TR>
								<TD>
									<asp:label id="lblEcs" runat="server" CssClass="mandatory" Width="112px">Whether ECS or Not</asp:label></TD>
								<TD>
									<asp:DropDownList id="CboEcs" runat="server" CssClass="formlines">
										<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
										<asp:ListItem Value="1">ECS Non Salary</asp:ListItem>
										<asp:ListItem Value="2">ECS Salary</asp:ListItem>
									</asp:DropDownList></TD>
							</TR>
							<TR>
								<TD align="left"><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount (Rs.)</asp:label><asp:requiredfieldvalidator id="rfvBillAmount" runat="server" ErrorMessage="***" ControlToValidate="txtBillAmount"></asp:requiredfieldvalidator></TD>
								<TD valign="top"><asp:textbox id="txtBillAmount" tabIndex="6" runat="server" CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox><asp:requiredfieldvalidator id="billrequired" CssClass="validatemessage" ControlToValidate="txtBillAmount" Runat="server">Bill Amount is Required</asp:requiredfieldvalidator><asp:rangevalidator id="rvdBillAmount" runat="server" CssClass="validatemessage" ControlToValidate="txtBillAmount"
										Type="Double" MaximumValue="99999999999" MinimumValue="0" Display="Dynamic">Incorrect Amount</asp:rangevalidator></TD>
							</TR>
							<TR>
								<TD colSpan="2"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD><asp:button id="btnSave" tabIndex="7" runat="server" CssClass="formbuttons" Width="110px" Text="Continue"></asp:button></TD>
								<td><u><asp:label id="lblBudgetlabel" runat="server" CssClass="validatemessage"></asp:label></u></td>
							</TR>
						</table>
					</td>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
