<%@ Control Language="c#" AutoEventWireup="True" Codebehind="CRDetails.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.CRDetails" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="ErrorLabel.ascx" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<script type="text/javascript">
    function check() {
        if (document.getElementById("txtAmount").value = 0) {
            alert("Amount 0 Not allow");
            return;
        }
    }
</script>
<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<tr>
		<td>
			<TABLE class="tableleftbgcolor" id="Table11" cellSpacing="1" cellPadding="2" width="85%"
				align="left" border="0">
				<TR>
					<TD bgColor="#6699cc" colSpan="4"><asp:label id="lblColHead1" runat="server" ForeColor="White">Pay Breakups</asp:label></TD>
				</TR>
				<tr bgColor="#6699cc">
					<td> <asp:label id="Label1"  ForeColor="White" runat="server"> 
				<b>DPCode&nbsp;(Except Major head)</b></asp:label></td> 
			<td><asp:label id="lblColHead2" Width="80px" ForeColor="White" runat="server">
				<b>Amount</b></asp:label></td>
			<td><asp:label id="lblColHead3" ForeColor="White" runat="server">
				<b>Remarks</b></asp:label></td>
				</tr>
				<TR>
                <td><asp:textbox id="txtDPCode" Width="99px" runat="server" onblur="chkbadchar(this);" MaxLength="11" CssClass="formlines" ontextchanged="txtDPCode_TextChanged">0</asp:textbox><asp:requiredfieldvalidator id="rfvCode" runat="server" ControlToValidate="txtDPCode" ErrorMessage="*"></asp:requiredfieldvalidator></td><td><asp:textbox id="txtAmount" Width="90px" runat="server" MaxLength="15" onblur="chkbadchar(this);" CssClass="formlines">0</asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" Display="Dynamic"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="revAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" ValidationExpression="\d+$"></asp:regularexpressionvalidator></td><td><asp:textbox id="txtRemarks" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox>&nbsp;&nbsp;<asp:button id="btnAdd" Width="60px" runat="server" OnClientClick="return check();" CssClass="formbuttons" Text="Add" onclick="btnAdd_Click"></asp:button></TD>
					
                    
                    
                    
                    
                    
                    <%--<TD colSpan="4">  
                    <asp:textbox id="txtDPCode" runat="server" Width="99px" CssClass="formlines" MaxLength="15" ontextchanged="txtDPCode_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvCode" runat="server" ErrorMessage="*" ControlToValidate="txtDPCode" Display="Dynamic"></asp:requiredfieldvalidator>&nbsp;&nbsp<asp:textbox id="txtAmount" runat="server" Width="40px" CssClass="formlines" MaxLength="7"></asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" ErrorMessage="*" ControlToValidate="txtAmount" Display="Dynamic"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="revAmount" runat="server" ErrorMessage="*" ControlToValidate="txtAmount" ValidationExpression="\d+$"></asp:regularexpressionvalidator><asp:textbox id="txtRemarks" runat="server" CssClass="formlines"></asp:textbox>&nbsp;&nbsp;<asp:button id="btnAdd" runat="server" Width="80px" CssClass="formbuttons" Text="Add" onclick="btnAdd_Click"></asp:button>
					</TD>--%>
				</TR>
			</TABLE>
		</td>
	</tr>
	<tr>
		<td>
			<TABLE class="tableleftbgcolor" id="Table2" cellSpacing="2" cellPadding="1" width="80%"
				border="0">
				<TR>
					<TD colSpan="4"><asp:datagrid id="dgRefP2" runat="server" ForeColor="Black" Width="100%" CssClass="tableleftbgcolor"
							GridLines="Vertical" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#DEDFDE" onselectedindexchanged="dgRefP2_SelectedIndexChanged">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#CE5D5A"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
							<ItemStyle BackColor="#F7F7DE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6B696B"></HeaderStyle>
							<FooterStyle BackColor="#CCCC99"></FooterStyle>
							<Columns>
								<asp:ButtonColumn Text="Del" CommandName="Delete"></asp:ButtonColumn>
								<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#F7F7DE" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
				<TR>
					<TD colSpan="4"><asp:label id="lblBreakupTotal" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD colSpan="4"><asp:label id="lblHint" runat="server"></asp:label><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></TD>
				</TR>
			</TABLE>
		</td>
	</tr>
</TABLE>
