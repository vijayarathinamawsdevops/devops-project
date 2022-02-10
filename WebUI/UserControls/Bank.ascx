<%@ Control Language="c#" AutoEventWireup="True" Codebehind="Bank.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.Bank" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="100%" border="0">
	<TR>
		<TD width="13%">
			<asp:Label id="lblBank" runat="server" CssClass="mandatory">Bank</asp:Label></TD>
		<TD width="35%">
			<asp:DropDownList id="cboBank" runat="server" CssClass="formlines" 
                AutoPostBack="True" Width="255px" 
                onselectedindexchanged="cmbBank_SelectedIndexChanged"></asp:DropDownList></TD>
		<TD width="15%">
			<asp:Label id="lblBranch" runat="server" CssClass="mandatory">Branch</asp:Label></TD>
		<TD width="35%">
			<asp:DropDownList id="cboBranch" runat="server" CssClass="formlines" 
                Width="251px" onselectedindexchanged="cboBranch_SelectedIndexChanged"></asp:DropDownList></TD>
	</TR>
</TABLE>
