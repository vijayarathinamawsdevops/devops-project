<%@ Control Language="c#" AutoEventWireup="True" Codebehind="PayDeductions.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.PayDeductions" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
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
		<TD align="center" bgColor="#6699cc" colSpan="7"><asp:label id="lblColHead1" Font-Bold="True" Font-Names="Arial" ForeColor="White" runat="server">Deductions</asp:label></TD>
	</TR>
	<TR>
		<TD colSpan="4">
			<table cellSpacing="0" cellPadding="0" width="100%" border="1">
				<tr bgColor="#6699cc">
					<td style="FONT: messagebox" align="center"><b>Desc.</b></td>
					<td style="FONT: messagebox" align="center"><b>Code</b></td>
					<td style="FONT: messagebox" align="center"><b>Amount</b></td>
				</tr>
				<tr>
					<td><asp:dropdownlist id="cboRSANo" runat="server" Visible="False" CssClass="drptxt"></asp:dropdownlist><asp:label id="lblDeductionDPCode" runat="server" Visible="False" Width="32px"></asp:label><asp:dropdownlist id="cboDesc" runat="server" CssClass="drptxt" Width="82px" AutoPostBack="True" onselectedindexchanged="cboDesc_SelectedIndexChanged"></asp:dropdownlist><asp:requiredfieldvalidator id="rfvCode" runat="server" ControlToValidate="cboDesc" ErrorMessage="*"></asp:requiredfieldvalidator></td>
					<td><asp:textbox id="txtCode" runat="server" CssClass="formlines" Width="46px" AutoPostBack="True"
							onblur="chkbadchar(this);" MaxLength="2" ontextchanged="txtCode_TextChanged">00</asp:textbox></td>
					<td><asp:textbox id="txtAmount" runat="server" CssClass="formlines" Width="97px" 
                            MaxLength="13" onblur="chkbadchar(this);">0</asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" Display="Dynamic"></asp:requiredfieldvalidator>&nbsp;&nbsp;
						<asp:button id="btnAdd" runat="server" CssClass="formbuttons" Text="Add" OnClientClick="return check();" onclick="btnAdd_Click"></asp:button></td>
				</tr>
			</table>
		</TD>
	</TR>
</TABLE>
<TABLE class="tableleftbgcolor" id="Table2" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD colSpan="4"><asp:datagrid id="dgRefP2" runat="server" CssClass="tableleftbgcolor" Width="100%" ShowFooter="True"
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
		<TD colSpan="4"><asp:label id="lblHint" ForeColor="Red" runat="server"></asp:label></TD>
	</TR>
</TABLE>
