<%@ Control Language="c#" AutoEventWireup="True" Codebehind="PayCR_OR.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.PayCR_OR" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<script type="text/javascript">
    function check() {
        if (document.getElementById("txtAmount").value == 0) {
            alert("Amount 0 Not allow");
            return;
        }
    }
</script>
<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD bgColor="#6699cc" colSpan="4" align="center">
			<asp:Label id="lblColHead3" runat="server" ForeColor="White" Font-Bold="True">Cash Recovery / OR</asp:Label></TD>
	</TR>
	<TR>
		<TD colSpan="4">
			<table width="100%" cellpadding="0" cellspacing="0" border="1">
				<tr bgColor="#6699cc">
					<td style="FONT: messagebox" align="center"><b>Code</b></td>
					<td style="FONT: messagebox" align="center"><b>Amount</b></td>
				</tr>
				<tr>
					<td><asp:textbox id="txtDPCode" MaxLength="15" CssClass="formlines" runat="server" onblur="chkbadchar(this);" Width="99px" ontextchanged="txtDPCode_TextChanged">0</asp:textbox><asp:requiredfieldvalidator id="rfvCode" runat="server" ControlToValidate="txtDPCode" ErrorMessage="*"></asp:requiredfieldvalidator></td>
					<td><asp:textbox id="txtAmount" MaxLength="13" CssClass="formlines" runat="server" 
                            onblur="chkbadchar(this);" Width="40px">0</asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" Display="Dynamic"></asp:requiredfieldvalidator>&nbsp;&nbsp;<asp:button id="btnAdd" CssClass="formbuttons" runat="server" OnClientClick="return check();" Text="Add" onclick="btnAdd_Click"></asp:button><asp:RegularExpressionValidator id="revAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" ValidationExpression="\d+$"></asp:RegularExpressionValidator></td>
				</tr>
			</table>
		</TD>
	</TR>
</TABLE>
<TABLE class="tableleftbgcolor" id="Table2" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD colSpan="4"><asp:datagrid id="dgRefP2" CssClass="tableleftbgcolor" runat="server" Width="100%" BorderColor="#CCCCCC"
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
		<TD colSpan="4"><asp:label id="lblHint" runat="server" ForeColor="Red" Width="128px"></asp:label></TD>
	</TR>
</TABLE>
