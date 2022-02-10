<%@ Control Language="c#" AutoEventWireup="True" Codebehind="PaoChequeMenus.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.PaoChequeMenus" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<script language="JavaScript" src="../Scripts/ekvm.js"></script>
<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" class="tableleftborder"	border="0">
	<TR>
		<td background="../Images/bg.gif" colspan="4"><img src="../Images/banner.jpg" width="680" height="70"></td>
	</TR>
	<TR class="tpheadstyle" style="TEXT-INDENT: 15px">
		<TD width="15%" style="HEIGHT: 26px" align="right"><span id="divdate"></span>
			<asp:Label id="lblCurrentDate" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="Black"
				Font-Bold="True" Visible="True">lblCurrentDate</asp:Label></TD>
		<TD width="85%" style="HEIGHT: 26px;padding-right:5px;" align="right">
			<asp:Label id="Label1" Font-Bold="True" ForeColor="Black" CssClass="mandatory" runat="server"
				Font-Size="XX-Small">Operation:</asp:Label>
			<asp:Label id="lblFormMode" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small" CssClass="mandatory"
				runat="server"></asp:Label>&nbsp;&nbsp; <img src="../Images/user.gif" align="absMiddle">
			<asp:Label id="Label2" ForeColor="Black" CssClass="mandatory" runat="server" Font-Size="XX-Small">User ID:</asp:Label>&nbsp;<asp:Label id="lblUserID" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="#C00000"
				Font-Bold="True"></asp:Label>
			<asp:Label id="Label3" ForeColor="#400000" CssClass="mandatory" runat="server"> -</asp:Label>
			<asp:Label id="lbtnlevel" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small" CssClass="mandatory"
				runat="server"></asp:Label>&nbsp;&nbsp;<img src="../Images/helpicon.jpg" align="absMiddle">&nbsp;<asp:LinkButton ID="lnkhelp" Runat="server" CssClass="lnkButton" CausesValidation="False">Help</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/password.gif" align="absMiddle">&nbsp;<asp:LinkButton ID="lnkPassword" Runat="server" CssClass="lnkButton" CausesValidation="False" onclick="lnkPassword_Click">Change Password</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/logout.gif" align="absMiddle">&nbsp;<asp:LinkButton id="lbtnLogout" CssClass="lnkButton" CausesValidation="False" runat="server" tabIndex="-1" onclick="lbtnLogout_Click">Logout</asp:LinkButton>
		</TD>
	</TR>
	<TR class="footer">
		<td colspan="4">
			<table border="0" cellpadding="1" cellspacing="2" width="95%" align="left">
				<tr>
					<td width="2%">&nbsp;</td>
					<td><asp:Image ID="imgchqentry" Runat="server" ImageAlign="AbsMiddle" ImageUrl="../Images/Bills_edit.gif"></asp:Image>&nbsp;<asp:LinkButton id="lbtnChequeEntry" runat="server" CausesValidation="False" CssClass="mmenuheadstyle"
							tabIndex="-1" onclick="lbtnChequeEntry_Click">Cheque Entry</asp:LinkButton></td>
					<td><asp:Image ID="imgchqpre" Runat="server" ImageAlign="AbsMiddle" ImageUrl="../Images/cheque_prepare.gif"></asp:Image>&nbsp;<asp:LinkButton id="lbtnChequePrepare" runat="server" CausesValidation="False" CssClass="mmenuheadstyle"
							tabIndex="-1" onclick="lbtnChequePrepare_Click">Cheque Preparation</asp:LinkButton></td>
					<td><asp:Image ID="imgchqprinting" Runat="server" ImageAlign="AbsMiddle" ImageUrl="../Images/cheque.gif"></asp:Image>&nbsp;<asp:LinkButton id="lnkChequeprt" CssClass="mmenuheadstyle" runat="server" CausesValidation="False"
							tabIndex="-1" onclick="lnkChequeprt_Click">Cheque Printing</asp:LinkButton></td>
					<td><asp:Image ID="imgchqcancel" Runat="server" ImageAlign="AbsMiddle" ImageUrl="../Images/Input.gif"></asp:Image>&nbsp;<asp:LinkButton id="lbtnChequeCancel" CssClass="mmenuheadstyle" runat="server" CausesValidation="False"
							tabIndex="-1" onclick="lbtnChequeCancel_Click">Cheque Cancellation</asp:LinkButton></td>
				</tr>
			</table>
		</td>
	</TR>
</TABLE>
