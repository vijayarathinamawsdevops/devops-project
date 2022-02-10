<%@ Control Language="c#" AutoEventWireup="True" Codebehind="PensionBreakup.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.PensionBreakup" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD bgColor="#6699cc" colSpan="4" align="center">
			<asp:Label id="lblColHead1" Font-Names="Arial" ForeColor="White" runat="server" Font-Bold="True">Pension Breakups</asp:Label></TD>
	</TR>
	<TR>
		<TD  colSpan="4">
			<table width="100%" cellpadding="0" cellspacing="0" border="1">
				<tr bgColor="#6699cc">
					<td style="FONT: messagebox" align="center"><b>DP Code&nbsp;
							(Except Major Head)</b></td>
					<td style="FONT: messagebox" align="center"><b>Amount</b></td>
					<td style="FONT: messagebox" align="center"><b>Remarks</b></td>
				</tr>
				<tr>
					<td><asp:textbox id="txtDPCode" runat="server" Width="99px" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="11" ontextchanged="txtDPCode_TextChanged">000</asp:textbox><asp:requiredfieldvalidator id="rfvCode" runat="server" ErrorMessage="*" ControlToValidate="txtDPCode"></asp:requiredfieldvalidator></td>
					<td><asp:textbox id="txtAmount" runat="server" Width="40px" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="13">000</asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" ErrorMessage="*" ControlToValidate="txtAmount" Display="Dynamic"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="revAmount" runat="server" ErrorMessage="*" ControlToValidate="txtAmount" ValidationExpression="\d+$"></asp:regularexpressionvalidator></td>
					<td><asp:textbox id="txtRemarks" runat="server" CssClass="formlines" Width="100px" MaxLength="6" onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;<asp:button id="btnAdd" runat="server" CssClass="formbuttons" Text="Add" Width="60px" onclick="btnAdd_Click"></asp:button></td>
				</tr>
			</table>
		</TD>
	</TR>
</TABLE>
<TABLE class="tableleftbgcolor" id="Table2" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD colSpan="4">
			<asp:datagrid id="dgRefP2" runat="server" Width="100%" CssClass="tableleftbgcolor" CellPadding="3"
				BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" ShowFooter="True" onselectedindexchanged="dgRefP2_SelectedIndexChanged">
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
		<TD colSpan="4">
			<asp:label id="lblBreakupTotal" runat="server"></asp:label></TD>
	</TR>
	<TR>
		<TD colSpan="4">
			<asp:label id="lblHint" runat="server"></asp:label></TD>
	</TR>
</TABLE>
