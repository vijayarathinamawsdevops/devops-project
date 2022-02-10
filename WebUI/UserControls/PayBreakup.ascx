<%@ Control Language="c#" AutoEventWireup="True" Codebehind="PayBreakup.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.PayBreakup" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
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
		<TD bgColor="#6699cc" colSpan="7" align="center"><asp:label id="lblColHead1" Font-Names="Arial" ForeColor="White" runat="server" Font-Bold="True">Pay Breakup</asp:label></TD>
	</TR>
	<TR>
		<TD colSpan="4">
			<table width="100%" cellpadding="0" cellspacing="0" border="1">
				<tr bgColor="#6699cc">
					<td style="FONT: messagebox" align="center"><b>Desc.</b></td>
					<td style="FONT: messagebox" align="center"><b>Code</b></td>
					<td style="FONT: messagebox" align="center"><b>Amount</b></td>
					<td style="FONT: messagebox" align="center"><b>Part</b></td>
				</tr>
				<tr>
					<td><asp:dropdownlist id="cboDesc" runat="server" AutoPostBack="True" Width="98px" CssClass="drptxt" onselectedindexchanged="cboDesc_SelectedIndexChanged"></asp:dropdownlist></td>
					<td><asp:textbox id="txtCode" runat="server" AutoPostBack="True" Width="39px" CssClass="formlines" onblur="chkbadchar(this);"
							MaxLength="4" ontextchanged="txtCode_TextChanged">0000</asp:textbox><asp:requiredfieldvalidator id="rfvCode" runat="server" ControlToValidate="txtCode" ErrorMessage="*"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="revCode" runat="server" ControlToValidate="txtCode" ErrorMessage="*" ValidationExpression="[0-9]{4}"
							Display="Dynamic"></asp:regularexpressionvalidator></td>
					<td><asp:textbox id="txtAmount" runat="server" Width="55px" CssClass="formlines" 
                            onblur="chkbadchar(this);" MaxLength="13">0</asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" Width="11px" ControlToValidate="txtAmount" ErrorMessage="*"
							Display="Dynamic"></asp:requiredfieldvalidator></td>
					<td>
						<asp:dropdownlist id="cboAccountPart" runat="server" Width="55px" CssClass="drptxt"></asp:dropdownlist>&nbsp;&nbsp;
						<asp:button id="btnAdd" runat="server" Width="45px" CssClass="formbuttons" Text="Add"  onclick="btnAdd_Click"></asp:button>
					</td>
				</tr>
			</table>
		</TD>
	</TR>
</TABLE>
<TABLE class="tableleftbgcolor" id="Table2" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD colSpan="4"><asp:datagrid id="dgRefP2" runat="server" Width="100%" CssClass="tableleftbgcolor" BorderColor="#CCCCCC"
				BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" ShowFooter="True">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:ButtonColumn Text="Del" FooterText="Total" CommandName="Delete"></asp:ButtonColumn>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:datagrid></TD>
	</TR>
	<TR>
		<TD colSpan="4" style="HEIGHT: 2px"></TD>
	</TR>
	<TR>
		<TD colSpan="4"><asp:label id="lblHint" runat="server" CssClass="validatemessage" ForeColor="Red"></asp:label></TD>
	</TR>
</TABLE>
