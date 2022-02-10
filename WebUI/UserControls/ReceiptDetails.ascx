<%@ Control Language="c#" AutoEventWireup="True" CodeBehind="ReceiptDetails.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.ReceiptDetails" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
<table class="tableleftbgcolor" id="Table1" cellspacing="1" cellpadding="2" width="100%"
    border="0">
    <tr>
        <td align="center" bgcolor="#6699cc" colspan="4"><font style="font-size: 9pt" color="white"><b>Receipt 
					Break-up Details</b></font></td>
    </tr>
    <tr bgcolor="#6699cc" align="center">
        <td>
            <asp:Label ID="lblColHead1" ForeColor="White" runat="server">
				<b>DP Code&nbsp;
							(Except Major Head)</b></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblColHead2" Width="80px" ForeColor="White" runat="server">
				<b>Amount</b></asp:Label></td>
        <td>
            <asp:Label ID="lblColHead3" ForeColor="White" runat="server">
				<b>Remarks</b></asp:Label></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txtDPCode" Width="99px" runat="server" MaxLength="11" CssClass="formlines" onblur="chkbadchar(this);">0</asp:TextBox><asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtDPCode" ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;&nbsp;
            <asp:DropDownList ID="drpDPCode" AutoPostBack="true" runat="server" Width="150px" Visible="false" CssClass="formlines" OnSelectedIndexChanged="drpDPCode_SelectedIndexChanged"></asp:DropDownList>

        </td>
        <td>
            <asp:TextBox ID="txtAmount" Width="90px" runat="server" MaxLength="15" onblur="chkbadchar(this);" CssClass="formlines">0</asp:TextBox><asp:RequiredFieldValidator ID="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="revAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" ValidationExpression="\d+$"></asp:RegularExpressionValidator></td>
        <td>
            <asp:TextBox ID="txtRemarks" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:TextBox></td>
        <td>
            <asp:Button ID="btnAdd" Width="60px" runat="server" CssClass="formbuttons" Text="Add" OnClick="btnAdd_Click"></asp:Button></td>
    </tr>
</table>
<table class="tableleftbgcolor" id="Table2" cellspacing="0" cellpadding="0" width="80%"
    border="0">
    <tr>
        <td colspan="4">
            <asp:DataGrid ID="dgRefP2" Width="100%" runat="server" CssClass="tableleftbgcolor" ShowFooter="True"
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" OnSelectedIndexChanged="dgRefP2_SelectedIndexChanged">
                <SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
                <ItemStyle ForeColor="#000066"></ItemStyle>
                <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
                <FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
                <Columns>
                    <asp:ButtonColumn Text="Del" CommandName="Delete"></asp:ButtonColumn>
                    <asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
                </Columns>
                <PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
            </asp:DataGrid></td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Label ID="lblHint" runat="server" CssClass="validatemessage"></asp:Label></td>
    </tr>
</table>
