<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AMReciptDetails.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.AMReciptDetails" %>
<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="1" cellPadding="2" width="100%"
	border="0">
	<tr>
		<td align="center" bgColor="#6699cc" colSpan="4"><font style="FONT-SIZE: 9pt" color="white"><b>Receipt 
					Break-up Details</b></font></td>
	</tr>
	<TR>
		<TD bgColor="#6699cc"><asp:label id="lblColHead1" Width="50px" ForeColor="White" runat="server">
				<b>DPCode</b></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:label id="lblColHead2" Width="80px" ForeColor="White" runat="server">
				<b>Amount</b></asp:label>&nbsp;&nbsp;&nbsp;
			<asp:label id="lblColHead3" ForeColor="White" runat="server">
				<b>Remarks</b></asp:label></TD>
	</TR>
	<TR>
		<TD colSpan="4"><asp:textbox id="txtDPCode" Width="99px" runat="server" MaxLength="11" CssClass="formlines" ontextchanged="txtDPCode_TextChanged">0</asp:textbox><asp:requiredfieldvalidator id="rfvCode" runat="server" ControlToValidate="txtDPCode" ErrorMessage="*"></asp:requiredfieldvalidator><asp:textbox id="txtAmount" Width="90px" runat="server" MaxLength="15" CssClass="formlines">0</asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" Display="Dynamic"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="revAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" ValidationExpression="\d+$"></asp:regularexpressionvalidator><asp:textbox id="txtRemarks" runat="server" CssClass="formlines"></asp:textbox>&nbsp;&nbsp;<asp:button id="btnAdd" Width="60px" runat="server" CssClass="formbuttons" Text="Add" onclick="btnAdd_Click"></asp:button></TD>
	</TR>
</TABLE>
<TABLE class="tableleftbgcolor" id="Table2" cellSpacing="0" cellPadding="0" width="80%"
	border="0">
	<TR>
		<TD colSpan="4"><asp:datagrid id="dgRefP2" Width="100%" runat="server" CssClass="tableleftbgcolor" ShowFooter="True"
				BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" onselectedindexchanged="dgRefP2_SelectedIndexChanged">
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
		<TD colSpan="4"><asp:label id="lblHint" runat="server" CssClass="validatemessage"></asp:label></TD>
	</TR>
</TABLE>