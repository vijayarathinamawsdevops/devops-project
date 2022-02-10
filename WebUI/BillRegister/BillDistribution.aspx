<%@ Page language="c#" Codebehind="BillDistribution.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.BillRegister.BillDistribution" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>BillDistribution</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/PreAudit.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="BillDistribution" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<TBODY>
								<tr>
									<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
								</tr>
								<TR>
									<TD></TD>
								</TR>
								<tr>
									<td align="center">
										<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
											<TBODY>
												<tr class="formtitle">
													<td align="center" colSpan="8"><FONT size="3">Bill Distribution-TNTC-70A</FONT></td>
												</tr>
												<tr>
													<td align="center" colSpan="8"><asp:datagrid id="dgrdBillDistribution" AutoGenerateColumns="False" BorderColor="#E7E7FF" BorderStyle="None"
															BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="None" Width="100%" Runat="server" AllowSorting="True"
															ShowFooter="True" AllowPaging="True" onselectedindexchanged="dgrdBillDistribution_SelectedIndexChanged">
															<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
															<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
															<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
															<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
															<Columns>
																<asp:TemplateColumn HeaderText="TokenNo">
																	<ItemTemplate>
																		<asp:Label ID="lbldTokenNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="DOCode">
																	<ItemTemplate>
																		<asp:Label ID="lblddocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOCode")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="DODescription">
																	<ItemTemplate>
																		<asp:Label ID="lbldodesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DODESC")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="DPCode">
																	<ItemTemplate>
																		<asp:Label ID="lblddpcode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="PresentedDate">
																	<ItemTemplate>
																		<asp:Label ID="lbldPresentedDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PresentedDate")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="BillType">
																	<ItemTemplate>
																		<asp:Label id=lbldBillType Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillType")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Amount">
																	<ItemTemplate>
																		<asp:Label ID="lbldAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillAmount")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="BillReceived">
																	<ItemTemplate>
																		&nbsp;&nbsp;&nbsp;&nbsp;
																		<asp:CheckBox id="chkreceive" runat="server"></asp:CheckBox>&nbsp;
																	</ItemTemplate>
																</asp:TemplateColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
														</asp:datagrid></td>
												</tr>
											</TBODY>
										</table>
										<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="SAVE" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:Button id="btnreport" runat="server" Text="Report" CssClass="formbuttons" 
                                             ></asp:Button></td>
								</tr>
							</TBODY>
						</table>
					</td>
				</tr>
				<tr>
					<td><asp:validationsummary id="valid" Runat="server" ShowMessageBox="True" ShowSummary="True" DisplayMode="BulletList"></asp:validationsummary></td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
