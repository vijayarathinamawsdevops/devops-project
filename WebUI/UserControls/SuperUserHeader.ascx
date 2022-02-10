<%@ Control Language="c#" AutoEventWireup="True" Codebehind="SuperUserHeader.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.SuperUserHeader" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<table id="MainTable1" cellSpacing="0" cellPadding="0" width="100%" border="0">
	<TR>
		<td background="../Images/bg.gif" colspan="4"><img src="../Images/banner.jpg" width="680" height="70"></td>
	</TR>
	<TR class="tpheadstyle" style="TEXT-INDENT: 15px">
		<TD width="20%" style="HEIGHT: 26px"><div id="divdate"></div>
			<asp:Label id="lblCurrentDate" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="Black" Font-Bold="True" Visible="True">lblCurrentDate</asp:Label></TD>
		<TD width="30%" style="HEIGHT: 26px">
			<asp:Label id="Label1" Font-Bold="True" ForeColor="Black" CssClass="mandatory" runat="server" Font-Size="XX-Small">Operation:</asp:Label>
			<asp:Label id="lblFormMode" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small" CssClass="mandatory" runat="server"></asp:Label></TD>
		<TD width="30%" style="HEIGHT: 26px">
			<asp:Label id="Label2" ForeColor="Black" CssClass="mandatory" runat="server" Font-Size="XX-Small">User ID:</asp:Label><asp:Label id="lblUserID" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="#C00000" Font-Bold="True"></asp:Label>
			<asp:Label id="Label3" ForeColor="#400000" CssClass="mandatory" runat="server"> -</asp:Label>
			<asp:Label id="lbtnlevel" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small" CssClass="mandatory" runat="server"></asp:Label></TD>
		<TD width="20%" style="HEIGHT: 26px">
			<asp:LinkButton id="lbtnLogout" CssClass="mandatory" CausesValidation="False" runat="server" ForeColor="#C00000" tabIndex="-1" onclick="lbtnLogout_Click">[Logout]</asp:LinkButton>
		</TD>
	</TR>
</table>
