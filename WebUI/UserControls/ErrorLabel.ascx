<%@ Control Language="c#" AutoEventWireup="True" Codebehind="ErrorLabel.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.ErrorLabel" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="2%"><img src="../Images/error.gif" border="0"></td>
		<td align="left"><asp:Label ID="errmsg" ForeColor="red" CssClass="errtext" Runat="server"></asp:Label></td>
	</tr>
</table>
