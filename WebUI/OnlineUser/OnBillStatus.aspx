<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="OnlineUserMenus" Src="../UserControls/OnlineUserMenus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="OnBillStatus.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.OnlineUser.OnBillStatus" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>OnBill Status</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmonlinebillstatus" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table2" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" align="center" border="0">
				<tr>
					<td vAlign="top"><uc1:onlineusermenus id="OnlineUserMenus1" runat="server"></uc1:onlineusermenus></td>
				</tr>
				<TR>
					<td vAlign="top" height="100%">
						<table cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
							<tr>
								<td class="mandatory" align="right">Token Number</td>
								<td><asp:textbox id="txtQueryTokenNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
								<td width="50%"><asp:Button ID="btnSubmitbyToken" Runat="server" Text="Submit" CssClass="formbuttons" Width="95px" onclick="btnSubmitbyToken_Click"></asp:Button></td>
							</tr>
							<tr>
								<td colspan="3">
									<asp:Panel ID="pnlTokenDetails" Runat="server" Visible="False">
										<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
											<TR>
												<TD align="center" colSpan="4">
													<asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Bill Status Details</asp:label></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:label id="Label1" runat="server" CssClass="mandatory">Token </asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" ReadOnly="True" Enabled="False" onblur="chkbadchar(this);"></asp:textbox></TD>
												<TD width="15%">
													<asp:label id="lblDoCode" runat="server" CssClass="mandatory">Drawing Officer </asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtDoCode" runat="server" CssClass="mandatory" ReadOnly="True" Enabled="False"></asp:textbox></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtDPCode" runat="server" CssClass="mandatory" ReadOnly="True" Enabled="False"></asp:textbox></TD>
												<TD width="15%">
													<asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtBillAmount" runat="server" CssClass="mandatory" ReadOnly="True" Enabled="False"></asp:textbox></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:label id="lblBillPresDt" runat="server" CssClass="mandatory">Bill Presented Date</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtBillPresDt" runat="server" CssClass="mandatory" ReadOnly="True" Enabled="False"></asp:textbox></TD>
												<TD width="15%">
													<asp:label id="lblBillType" runat="server" CssClass="mandatory">Bill Type</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtBillType" runat="server" CssClass="mandatory" ReadOnly="True" Enabled="False"></asp:textbox></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:label id="lblEcs" runat="server" CssClass="mandatory" Width="112px">Whether ECS or Not</asp:label></TD>
												<TD width="35%">
													<asp:DropDownList id="CboEcs" runat="server" CssClass="formlines" Enabled="False">
														<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
														<asp:ListItem Value="1">ECS Non Salary</asp:ListItem>
														<asp:ListItem Value="2">ECS Salary</asp:ListItem>
													</asp:DropDownList></TD>
												<TD width="15%"></TD>
												<TD width="35%"></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:label id="lblBillStatus" runat="server" CssClass="mandatory">Bill Status</asp:label></TD>
												<TD colSpan="3">
													<asp:textbox id="txtBillStatus" runat="server" CssClass="mandatory" Width="100%" ReadOnly="True"
														Enabled="False"></asp:textbox></TD>
											</TR>
										</TABLE>
									</asp:Panel>
								</td>
							</tr>
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
