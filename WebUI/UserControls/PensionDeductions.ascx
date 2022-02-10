<%@ Control Language="c#" AutoEventWireup="True" Codebehind="PensionDeductions.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.PensionDeductions" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD bgColor="#6699cc" colSpan="7" align="center"><asp:label id="lblColHead1" Font-Names="Arial" ForeColor="White" runat="server" Font-Bold="True">Deductions</asp:label></TD>
	</TR>
	<TR>
		<TD  colSpan="4">
			<table width="100%" cellpadding="0" cellspacing="0" border="1">
				<tr bgColor="#6699cc">
					<td style="FONT: messagebox" align="center"><b>Desc.</b></td>
					<td style="FONT: messagebox" align="center"><b>Amount</b></td>
					<td style="FONT: messagebox" align="left"><b>SANO</b></td>
				</tr>
				<tr>
					<td><asp:dropdownlist id="cboRSANo" runat="server" Visible="False" CssClass="drptxt"></asp:dropdownlist><asp:label id="lblDeductionDPCode" runat="server" Visible="False" Width="32px"></asp:label><asp:dropdownlist id="cboDesc" runat="server" CssClass="drptxt" Width="82px" AutoPostBack="True" onselectedindexchanged="cboDesc_SelectedIndexChanged"></asp:dropdownlist><asp:requiredfieldvalidator id="rfvCode" runat="server" ControlToValidate="cboDesc" ErrorMessage="*"></asp:requiredfieldvalidator></td>
					<td><asp:textbox id="txtAmount" runat="server" CssClass="formlines" Width="72px" 
                            onblur="chkbadchar(this);" MaxLength="12">0</asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*" Display="Dynamic"></asp:requiredfieldvalidator></td>
					<td>
						<asp:textbox id="txtSANo" runat="server" CssClass="formlines" Width="36px" AutoPostBack="True"
							onblur="chkbadchar(this);" MaxLength="3" ontextchanged="txtSANo_TextChanged">0</asp:textbox>
						<asp:textbox id="txtServiceCode" runat="server" CssClass="formlines" Width="80px" MaxLength="15" onblur="chkbadchar(this);">0</asp:textbox>&nbsp;&nbsp;
						<asp:button id="btnAdd" runat="server" CssClass="formbuttons" Text="Add" Width="90px" onclick="btnAdd_Click"></asp:button></td>
				</tr>
			</table>
		</TD>
	</TR>
</TABLE>
<TABLE class="tableleftbgcolor" id="Table2" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR>
		<TD colSpan="4"><asp:datagrid id="dgRefP2" runat="server" CssClass="tableleftbgcolor" Width="100%" BorderColor="#CCCCCC"
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
		<TD colSpan="4"><asp:label id="lblBreakupTotal" runat="server"></asp:label></TD>
	</TR>
	<TR>
		<TD colSpan="4"><asp:label id="lblHint" runat="server"></asp:label></TD>
	</TR>
</TABLE>
