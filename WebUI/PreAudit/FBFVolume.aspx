<%@ Page language="c#" Codebehind="FBFVolume.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.FBFVolume" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>FBFVolume</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/Style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="FBFVolume" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<TBODY>
								<tr>
									<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
								</tr>
								<tr>
									<td align="center">
										<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
											<TBODY>
												<tr class="formtitle">
													<td align="center" colSpan="8">FBFVolume</td>
												</tr>
												<tr>
													<td style="HEIGHT: 57px"><asp:label id="lblGPFNo" Runat="server" CssClass="mandatory">GPFNo</asp:label></td>
													<td style="HEIGHT: 57px"><asp:textbox id="txtGPFNo" Runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" Visible="False" ControlToValidate="txtEmpIdNo"
															ErrorMessage="Enter EmpId No"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td style="HEIGHT: 57px"><asp:label id="lblGPFSuffix" runat="server" CssClass="mandatory">GPFSuffix</asp:label></td>
													<td style="HEIGHT: 57px"><asp:textbox id="txtGPFSuffix" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" Visible="False" ControlToValidate="txtEMPSuffix"
															ErrorMessage="Enter EmpId Suffix"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td style="HEIGHT: 57px"><asp:label id="lblGODate" Runat="server" CssClass="mandatory">G.O.Date<br>(dd/mm/yyyy)</asp:label></td>
													<td style="HEIGHT: 57px"><asp:textbox id="txtGODate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
                                                    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
                                                         href="javascript:show_calendar('txtGODate');"><IMG src="../Images/show-calendar.gif" border="0"></A>


                                                    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtGODate"
                                                          CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                          |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                    </td>
													<td style="HEIGHT: 57px"><asp:label id="lblGONo" Runat="server" CssClass="mandatory"> G.O.No</asp:label></td>
													<td style="HEIGHT: 57px"><asp:textbox id="txtGONo" Runat="server" CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);"></asp:textbox></td>
												</tr>
												<tr>
													<td><asp:label id="lblTokenNo" Runat="server" CssClass="mandatory"> TokenNo</asp:label></td>
													<td><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
													<td><asp:label id="lblEmpName" Runat="server" CssClass="mandatory">EmpName</asp:label></td>
													<td><asp:textbox id="txtEmpName" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
													<td><asp:label id="lblDesig" Runat="server" CssClass="mandatory">Designation</asp:label></td>
													<td><asp:textbox id="txtDesig" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
													<td><asp:label id="lblDept" Runat="server" CssClass="mandatory">Department</asp:label></td>
													<td><asp:textbox id="txtDept" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
												</tr>
												<tr>
													<td align="center" colSpan="8"><asp:datagrid id="dgrdfbfvolume" Runat="server" Width="100%" GridLines="Horizontal" CellPadding="3"
															BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False">
															<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
															<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
															<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
															<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
															<Columns>
																<asp:TemplateColumn HeaderText="TokenNo">
																	<ItemTemplate>
																		<asp:Label ID="lbldTokenNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="TypeOfClaim">
																	<ItemTemplate>
																		<asp:Label ID="lbldTypeofClaim" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TypeofClaim")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="SanctionOrder">
																	<ItemTemplate>
																		<asp:Label ID="lbldSanctionOrder" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SanctionOrder")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="SanctionDate">
																	<ItemTemplate>
																		<asp:Label ID="lbldSanctionDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SanctionDate")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="BillAmount">
																	<ItemTemplate>
																		<asp:Label ID="lbldBillAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillAmount")%>'>
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
