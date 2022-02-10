<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="GPFVolume.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.GPFVolume" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>GPFVolume</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/PreAudit.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="GPFVolume" method="post" runat="server">
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
													<td align="center" colSpan="8"><FONT size="4">GPFVolume</FONT></td>
												</tr>
												<tr>
													<td align="center" colSpan="8"><asp:datagrid id="dgrdGPFVolume" Runat="server" Width="100%" GridLines="Horizontal" CellPadding="3"
															BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False">
															<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
															<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
															<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
															<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
															<Columns>
																<asp:TemplateColumn HeaderText="TokenNo">
																	<ItemTemplate>
																		<asp:Label ID="lbldtokenno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Date">
																	<ItemTemplate>
																		<asp:Label ID="lbldDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Date")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="SanctionOrder">
																	<ItemTemplate>
																		<asp:Label ID="Label1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SanctionOrder")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="SanctionDate">
																	<ItemTemplate>
																		<asp:Label ID="lbldSanctionDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SanctionDate")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Type">
																	<ItemTemplate>
																		<asp:Label ID="lbldtype" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Category")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Purpose">
																	<ItemTemplate>
																		<asp:Label ID="lbldpurpose" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Purpose")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Amount">
																	<ItemTemplate>
																		<asp:Label ID="Label2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="NoOfInstallments">
																	<ItemTemplate>
																		<asp:Label ID="Label3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NoOfInstallments")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
															</Columns>
															<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
														</asp:datagrid></td>
												</tr>
											</TBODY>
										</table>
									</td>
								</tr>
							</TBODY>
						</table>
					</td>
				</tr>
				<tr>
					<td><asp:validationsummary id="valid" Runat="server" DisplayMode="BulletList" ShowSummary="True" ShowMessageBox="True"></asp:validationsummary></td>
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
