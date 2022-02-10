<%@ Control Language="c#" AutoEventWireup="True" Codebehind="ContingencyVoucher.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.ContingencyVoucher" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<table width="100%" border="0" cellpadding="2" cellspacing="0" class="tblborder">
	<tr>
		<td width="25%">
			<asp:Label id="lblVoucherNo" runat="server" CssClass="mandatory">Sub Voucher No</asp:Label>&nbsp;&nbsp;
			<asp:TextBox id="txtVoucherNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="9" Width="75px"></asp:TextBox>
		</td>
		<td width="25%">
			<asp:Label id="lblvamount" runat="server" CssClass="mandatory">Amount(Rs.)</asp:Label>&nbsp;&nbsp;
			<asp:TextBox id="txtAmount" runat="server" CssClass="formlines" 
                onblur="chkbadchar(this);" MaxLength="12" Width="100px"></asp:TextBox>
		</td>
		<td width="25%">
			<asp:Label id="lblOfficeName" runat="server" CssClass="mandatory">Office Name</asp:Label>&nbsp;&nbsp;
			<asp:TextBox id="txtOfficeName" runat="server" CssClass="formlines" MaxLength="9" 
               onblur="chkbadchar(this);" Width="100px"></asp:TextBox>
		</td>
		<td width="20%">
			<asp:Button ID="btnAdd" Runat="server" Text='Add' CssClass='formbuttons' Width="90px" CausesValidation="False" onclick="btnAdd_Click"></asp:Button>
		</td>
	</tr>
	<tr>
		<td align="right" colspan="4"><asp:Label ID="lblgtotal" Runat="server" Visible="False" Font-Size="X-Small"></asp:Label></td>
	</tr>
	<tr>
		<td colspan="4" align="left">
			<asp:datagrid id="dgrdVouchers" DataKeyField="VoucherId" ShowFooter="True" AutoGenerateColumns="False"
				runat="server" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="White"
				CellPadding="3" Width="95%" CssClass="tableleftbgcolor">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:TemplateColumn HeaderText="Sub Voucher No" ItemStyle-Width="15%">
						<ItemTemplate>
							<asp:Label id="lblSubvouno" Text='<%# DataBinder.Eval(Container.DataItem,"VoucherNo") %>' Runat="server">
							</asp:Label>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Amount" ItemStyle-Width="25%">
						<ItemTemplate>
							<asp:Label id="lblAmount" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>' Runat="server">
							</asp:Label>
						</ItemTemplate>
					</asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Office Name" ItemStyle-Width="25%">
						<ItemTemplate>
							<asp:Label id="lblOfficeName" Text='<%# DataBinder.Eval(Container.DataItem,"OfficeName") %>' Runat="server">
							</asp:Label>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Action" ItemStyle-Width="20%">
						<ItemTemplate>
							<asp:LinkButton ID="lnkDelete" Runat="server" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
		</td>
	</tr>
</table>
