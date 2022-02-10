<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="OnlineBills.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.OnlineBills" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
  <HEAD>
		<title>eKaruvoolam - Online Bills</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
  </HEAD>
	<body leftmargin="0" rightmargin="0">
		<form id="frmOnlinebills" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top"><br>
						<table border="0" cellpadding="0" cellspacing="2" width="98%">
							<tr>
								<td>
									<asp:DataGrid id="dgrdBillStatuslist" Runat="server" CssClass="tableleftbgcolor" Width="95%" BorderColor="#CCCCCC"
										BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="2" PageSize="10" PagerStyle-Mode="NumericPages"
										AllowPaging="True" AutoGenerateColumns="False" ShowFooter="True" PagerStyle-HorizontalAlign="left">
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Token No">
												<ItemTemplate>
													<asp:Label ID="dgTokenno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Token No") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DOCode">
												<ItemTemplate>
													<asp:Label ID="dgDOCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DPCode">
												<ItemTemplate>
													<asp:Label ID="dgDPCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Bill Type">
												<ItemTemplate>
													<asp:Label ID="dgBillType" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Bill Type") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Bill Amount (Rs.)">
												<ItemTemplate>
													<asp:Label ID="dgBillAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Bill Amount") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="ECS or Not">
												<ItemTemplate>
													<asp:Label ID="dgEcsType" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Ecstype") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Bill Status">
												<ItemTemplate>
													<asp:Label ID="dgBillStatus" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Bill Status") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Actions">
												<ItemTemplate>
													<asp:LinkButton ID="lnkDetails" Runat="server" CommandName="BillProcess" CausesValidation="False">Bill Process</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</asp:DataGrid>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
