<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MiseReportsHeader.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.MiseReportsHeader" %>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<TABLE id="Table1" cellSpacing="0" cellPadding="4" width="100%" class="tableleftborder"
	border="0">
	<TR>
		<td background="../Images/bg.gif" colspan="4"><div align="center"><img src="../Images/banner.jpg" width="680" height="70"></div>
		</td>
	</TR>
	<TR class="footer" align="center">
		<TD width="25%"><asp:Label id="lblCurrentDate" runat="server" CssClass="mandatory">lblCurrentDate</asp:Label></TD>
		<TD width="25%">
			<img src="../Images/user.gif" align="absMiddle">&nbsp;&nbsp;<asp:Label id="Label2" ForeColor="Black" CssClass="mandatory" runat="server" Font-Size="XX-Small">User ID :</asp:Label>&nbsp;<asp:Label id="lblUserID" runat="server" CssClass="mandatory"></asp:Label></TD>
            <td width="50%">TOCode : <asp:Label ID="lblTOCode" CssClass="mandatory" runat="server"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <asp:LinkButton id="lbtnAdminMain" runat="server" CausesValidation="False" CssClass="lnkButton" onclick="lbtnAdminMain_Click">Main Menu</asp:LinkButton>&nbsp;
			<img src="../Images/helpicon.jpg" align="absMiddle">&nbsp;<asp:LinkButton ID="lnkhelp" Runat="server" CssClass="lnkButton" CausesValidation="False">Help</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/password.gif" align="absMiddle">&nbsp;<asp:LinkButton ID="lnkPassword" Runat="server" CssClass="lnkButton" CausesValidation="False" onclick="lnkPassword_Click">Change Password</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/logout.gif" align="absMiddle">&nbsp;
			<asp:LinkButton id="lbtnLogout" CssClass="lnkButton" CausesValidation="False" runat="server" onclick="lbtnLogout_Click">Logout</asp:LinkButton>
		</TD>
	</TR>
	<TR class="footer">
		<TD width="25%"></TD>
		<TD width="25%"></TD>
		<TD width="25%"></TD>
	</TR>
</TABLE>
<br>
