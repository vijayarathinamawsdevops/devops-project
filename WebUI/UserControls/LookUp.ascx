<%@ Control Language="c#" AutoEventWireup="True" Codebehind="LookUp.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.LookUp" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<TABLE id="Table1" cellSpacing="0" cellPadding="0" class="tableleftbgcolor" width="100%"
	border="1">
	<TR class='tableheadercolor'>
		<TD>
			<asp:Label id="lblLookUpHeader" runat="server">Look up form...</asp:Label></TD>
	</TR>
	<TR>
		<TD>
			<asp:DataGrid id="DataGrid1" runat="server" CssClass='tableleftbgcolor' BorderColor="#DEDFDE"
				BorderStyle="None" BorderWidth="1px" BackColor="White" Width='100%' CellPadding="4" GridLines="Vertical"
				ForeColor="Black" EnableViewState="False">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#CE5D5A"></SelectedItemStyle>
				<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
				<ItemStyle BackColor="#F7F7DE"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6B696B"></HeaderStyle>
				<FooterStyle BackColor="#CCCC99"></FooterStyle>
				<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#F7F7DE" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid></TD>
	</TR>
</TABLE>
