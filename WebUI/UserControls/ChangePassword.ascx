<%@ Control Language="c#" AutoEventWireup="True" Codebehind="ChangePassword.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.ChangePassword" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<script language="JavaScript" src="../Scripts/ekvm.js"></script>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<TABLE class="tableleftbgcolor" id="Table2" height="100%" cellSpacing="0" cellPadding="0"
	width="100%" align="center" border="0">
	<TR>
		<td vAlign="top" height="100%">
			<table class="parabr" cellSpacing="0" cellPadding="0" width="70%" align="center" border="0">
				<TR>
					<TD align="center"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Change Password</asp:label></TD>
				</TR>
				<TR>
					<td valign="top" height="100%">
						<table width="98%" cellpadding="2" cellspacing="5" border="0" align="center">
							<tr>
								<td align="right"><asp:Label ID="lblUserName" Runat="server" CssClass="mandatory">User Id</asp:Label></td>
								<td><asp:TextBox ID="txtUserName" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Enabled="False" ReadOnly="True"></asp:TextBox></td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="Label1" Runat="server" CssClass="mandatory">Old Password</asp:Label></td>
								<td><asp:TextBox ID="txtoldPassword" Runat="server" CssClass="formlines" TextMode="Password" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator ID="Requiredfieldvalidator1" CssClass="mandatory" Runat="server" ControlToValidate="txtoldPassword"
										ErrorMessage="*">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="lblPassword" Runat="server" CssClass="mandatory">Password</asp:Label></td>
								<td><asp:TextBox ID="txtPassword" Runat="server" CssClass="formlines" TextMode="Password" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator ID="redpassword" CssClass="mandatory" Runat="server" ControlToValidate="txtPassword"
										ErrorMessage="*">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="lblSecpassword" Runat="server" CssClass="mandatory">Confirm Password</asp:Label></td>
								<td>
									<asp:TextBox ID="txtConfirmpassword" CssClass="formlines" Runat="server" TextMode="Password" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator ID="reqsecpassword" Runat="server" ControlToValidate="txtConfirmpassword" ErrorMessage="*">*</asp:RequiredFieldValidator>
									<asp:CompareValidator ID="passwordcompare" Runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmpassword"
										ErrorMessage="Password is not same" CssClass="mandatory"></asp:CompareValidator>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td align="left">
									<asp:Button ID="btnSubmit" Runat="server" Text="Submit" CssClass="formbuttons" Width="95px" onclick="btnSubmit_Click"></asp:Button>&nbsp;&nbsp;
									<asp:Button ID="btnClear" Runat="server" Text="Clear" CssClass="formbuttons" Width="95px" CausesValidation="False" onclick="btnClear_Click"></asp:Button>
								</td>
							</tr>
						</table>
					</td>
				</TR>
				<tr>
					<td align="right"><asp:Label ID="lblInformation" Runat="server" CssClass="lblMessage">Note: This is will change only your Password not the Secondary Password</asp:Label></td>
				</tr>
				<tr>
					<td style="PADDING-LEFT:15px"><asp:Label ID="lblMessage" Runat="server"></asp:Label></td>
				</tr>
			</table>
		</td>
	</TR>
</TABLE>
