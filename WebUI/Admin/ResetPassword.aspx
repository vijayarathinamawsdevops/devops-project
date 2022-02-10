<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Page language="c#" Codebehind="ResetPassword.aspx.cs" AutoEventWireup="True" SmartNavigation="True" Inherits="eKaruvoolam.WebUI.Admin.ResetPassword" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>ResetPassword</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmResetPassword" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td colspan="2" style="PADDING-LEFT:20px" class="rptHead"><img src="../Images/settings.gif" align="absMiddle">Administrator 
						Settings</td>
				</tr>
				<tr>
					<td vAlign="top" align="center" colSpan="2" height="100%">
						<table cellSpacing="1" cellPadding="0" width="80%" border="0" class="parabr">
							<TR>
								<TD align="center"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Reset User Password</asp:label></TD>
							</TR>
							<tr>
								<td>
									<table cellSpacing="4" cellPadding="2" width="90%" border="0">
										<tr>
											<td align="right"><asp:Label ID="lblUserName" Runat="server" CssClass="mandatory">User Id</asp:Label></td>
											<td>
												<asp:DropDownList ID="drpUserId" Runat="server" Width="190px" CssClass="formlines" AutoPostBack="true" OnSelectedIndexChanged="drpUserId_SelectedIndexChanged"></asp:DropDownList>
												<asp:RequiredFieldValidator ID="reqUserId" CssClass="mandatory" Runat="server" ControlToValidate="drpUserId"
													ErrorMessage="*">*</asp:RequiredFieldValidator>&nbsp;
												<asp:CheckBox ID="chkEnableSecPassword" Runat="server" Text="Reset Secondary Password" CssClass="mandatory"></asp:CheckBox>
											</td>
										</tr>
										<tr>
											<td align="right"><asp:Label ID="Label1" Runat="server" CssClass="mandatory">Password</asp:Label></td>
											<td><asp:TextBox ID="txtPassword" Runat="server" CssClass="formlines" TextMode="Password" onblur="chkbadchar(this);"></asp:TextBox>
												<asp:RequiredFieldValidator ID="reqUserpwd" CssClass="mandatory" Runat="server" ControlToValidate="txtPassword"
													ErrorMessage="*">*</asp:RequiredFieldValidator>
											</td>
										</tr>
                                        <tr><td align="right"><asp:Label ID="lblTocode" runat="server" CssClass="mandatory">TOCode</asp:Label></td>
                                        <td><asp:TextBox runat="server" ID="txtTOCode" CssClass="mandatory" Enabled="false"></asp:TextBox>
                                        </td></tr>
                                         
										<tr>
											<td>&nbsp;</td>
											<td align="left">
												<asp:Button ID="btnSubmit" Runat="server" Text="Submit" CssClass="formbuttons" Width="95px" onclick="btnSubmit_Click"></asp:Button>&nbsp;&nbsp;
												<asp:Button ID="btnClear" Runat="server" Text="Clear" CssClass="formbuttons" Width="95px" CausesValidation="False" onclick="btnClear_Click"></asp:Button>
											</td>
										</tr>
										<tr>
											<td colspan="2"><asp:Label ID="lblMessage" Runat="server" CssClass="mandatory" Visible="False"></asp:Label></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
