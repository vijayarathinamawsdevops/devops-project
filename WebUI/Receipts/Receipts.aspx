<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="Receipts.aspx.cs" SmartNavigation="True" AutoEventWireup="false" Inherits="eKaruvoolam.WebUI.Receipts.Receipts" %>
<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Receipts</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR  ">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Receipts" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="100%" border="0" 
                height="100%" style="text-align: left">
				<TR>
					<TD colSpan="4"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<TR>
					<TD width="15%"><asp:label id="lblVoucherNo" runat="server" CssClass="mandatory">Voucher Number</asp:label></TD>
					<TD width="35%"><asp:textbox id="txtVoucherNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
					<TD width="15%"><asp:label id="lblVoucherDate" runat="server" CssClass="mandatory">Voucher Date</asp:label></TD>
					<TD width="35%"><asp:textbox id="txtVoucherDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
				</TR>
				<TR>
					<TD width="15%"><asp:label id="lblDoCode" runat="server" CssClass="mandatory">DoCode</asp:label></TD>
					<TD width="35%"><asp:dropdownlist id="cboDoCode" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
					<TD width="15%"><asp:label id="lblReceiptType" runat="server" CssClass="mandatory">Receipt Type</asp:label></TD>
					<TD width="35%"><asp:dropdownlist id="cboReceiptType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
				</TR>
				<TR>
					<TD width="15%" colSpan="4">
						<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" 
                            Width="100px" onclick="btnSave_Click1"></asp:Button></TD>
				</TR>
				<TR>
					<TD colSpan="4"><asp:datagrid id="dgrdReceipt" runat="server" CssClass="formlines" AutoGenerateColumns="False"
							ShowFooter="True" Width="40%">
							<Columns>
								<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
								<asp:TemplateColumn HeaderText="DP Code">
									<ItemTemplate>
										<asp:Label id=lblDPCode Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'>
										</asp:Label>
									</ItemTemplate>
									<EditItemTemplate>
										<asp:TextBox id=txtDPCode runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'>
										</asp:TextBox>
									</EditItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderStyle-Width="40%" HeaderText="Amount" FooterText="Total:">
									<ItemTemplate>
										<asp:Label id=lblAmount Runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Amount")%>'>
										</asp:Label>
									</ItemTemplate>
									<EditItemTemplate>
										<asp:TextBox id=txtAmount runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'>
										</asp:TextBox>
									</EditItemTemplate>
								</asp:TemplateColumn>
								<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
							</Columns>
						</asp:datagrid></TD>
				</TR>
				<TR>
					<TD></TD>
					<TD>
						<asp:LinkButton id="lbtnList" runat="server">List</asp:LinkButton></TD>
					<TD colSpan="4">
						<asp:Button id="btnAdd" runat="server" Text="Add" CssClass="formbuttons" 
                            Width="100px" onclick="btnAdd_Click1"></asp:Button></TD>
				</TR>
				<TR>
					<TD colSpan="6">
						<asp:Label id="lblMessage" runat="server"></asp:Label>
                        <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
                    </TD>
				</TR>
				<TR>
					<TD colSpan="4" height="100%" valign="bottom"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
