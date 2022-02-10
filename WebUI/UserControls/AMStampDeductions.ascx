<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AMStampDeductions.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.AMStampDeductions" %>
<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="1" cellPadding="2" width="100%"
	border="0">
	<tr>
		<td bgColor="#6699cc" colspan="4" align="center"><font color="white" style="FONT-SIZE:9pt">
        <b>Stamps Discount</b></font></td>
	</tr>
	<TR>
		<TD bgColor="#6699cc" colSpan="4">
			<asp:Label id="lblColHead1" ForeColor="White" runat="server">
				<b>DP Code</b></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Label id="Label1" ForeColor="White" runat="server">
				<b>Amount</b></asp:Label>
		</TD>
	</TR>
	<TR>
		<TD colSpan="4">
			<asp:textbox id="txtDPCode" MaxLength="15" CssClass="formlines" runat="server" Width="110px">0</asp:textbox>
			<asp:requiredfieldvalidator id="rfvCode" runat="server" ControlToValidate="txtDPCode" ErrorMessage="*"></asp:requiredfieldvalidator>
			<asp:textbox id="txtAmount" MaxLength="7" CssClass="formlines" runat="server" Width="90px">0</asp:textbox>
			<asp:requiredfieldvalidator id="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" Display="Dynamic"></asp:requiredfieldvalidator>
			<asp:button id="btnAdd" CssClass="formbuttons" runat="server" Text="Add" Width="70px" onclick="btnAdd_Click"></asp:button>
			<asp:RegularExpressionValidator id="revAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" ValidationExpression="\d+$"></asp:RegularExpressionValidator></TD>
	</TR>
</TABLE>
<TABLE class="tableleftbgcolor" id="Table2" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD colSpan="4">
			<asp:datagrid id="dgRefP2" CssClass="tableleftbgcolor" runat="server" Width="100%" BorderColor="#CCCCCC"
				BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" ShowFooter="True" onselectedindexchanged="dgRefP2_SelectedIndexChanged">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:ButtonColumn Text="Del" CommandName="Delete"></asp:ButtonColumn>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:datagrid></TD>
	</TR>
	<TR>
		<TD colSpan="4"></TD>
	</TR>
	<TR>
		<TD colSpan="4">
			<asp:label id="lblHint" runat="server"></asp:label></TD>
	</TR>
</TABLE>