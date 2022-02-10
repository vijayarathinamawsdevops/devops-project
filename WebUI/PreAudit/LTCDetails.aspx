<%@ Page language="c#" Codebehind="LTCDetails.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.LTCDetails" %>
<%@ Register TagPrefix="uc1" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>LTC Details</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/Style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="LTCDetails" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></td>
				</tr>
				<tr>
					<td>
						<uc1:volume id="Volume1" runat="server"></uc1:volume></td>
				</tr>
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<tr>
								<td>
									<uc1:PersonalDetails id="PersonalDetails1" runat="server"></uc1:PersonalDetails></td>
							</tr>
							<tr>
								<td align="center">
									<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
										<TBODY>
											<tr class="formtitle">
												<td align="center" colSpan="8">LTC Details</td>
											</tr>
											<tr>
												<td style="HEIGHT: 43px"><asp:label id="lblEmpId" CssClass="mandatory" Runat="server">EmpId</asp:label></td>
												<td style="HEIGHT: 43px"><asp:textbox id="txtEmpIdNo" CssClass="formlines" Runat="server" AutoPostBack="True" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ControlToValidate="txtEMPIDNo"
														ErrorMessage="Enter EmpIdNo" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
												<td style="HEIGHT: 43px"><asp:label id="lblSuffix" runat="server" CssClass="mandatory">Suffix</asp:label></td>
												<td style="HEIGHT: 43px"><asp:TextBox id="txtEMPSuffix" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
													<asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId Suffix"
														ControlToValidate="txtEMPSuffix" Visible="False">
														<img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator>
												</td>
												<td style="HEIGHT: 43px"><asp:label id="lblltcno" runat="server" CssClass="mandatory">LTCNO</asp:label></td>
												<td style="HEIGHT: 43px"><asp:textbox id="txtLTCNo" runat="server" CssClass="formlines" Enabled="False"></asp:textbox></td>
												<td style="HEIGHT: 43px"><asp:label id="lblBlockyear" runat="server" CssClass="mandatory">Block Year</asp:label></td>
												<td style="HEIGHT: 43px"><asp:textbox id="txtBlockyear" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
													<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" CssClass="validatemessage" ErrorMessage="RegularExpressionValidator"
														ControlToValidate="txtBlockyear" ValidationExpression="^([0-9]{4})[-]([0-9]{4})$"></asp:RegularExpressionValidator></td>
											</tr>
											<tr>
												<td><asp:Label ID="lblNature" Runat="server" CssClass="mandatory">Nature</asp:Label></td>
												<td>
													<asp:radiobuttonlist id="radNature" CssClass="mandatory" AutoPostBack="True" Runat="server" RepeatDirection="Horizontal">
														<asp:ListItem Value="0">HomeTown</asp:ListItem>
														<asp:ListItem Value="1">All India</asp:ListItem>
													</asp:radiobuttonlist>
												</td>
												<td><asp:label id="lblOrderNodate" runat="server" CssClass="mandatory">Order No</asp:label></td>
												<td><asp:textbox id="txtOrderNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
												<td><asp:label id="lblOrderDate" runat="server" CssClass="mandatory">Order Date</asp:label></td>
												<td><asp:textbox id="txtOrderDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('LTCDetails.txtOrderDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                 <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtOrderDate"
                                                   CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                        |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                        </td>
												<td><asp:label id="lblPlace" runat="server" CssClass="mandatory">Place</asp:label></td>
												<td><asp:textbox id="txtPlace" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
													<asp:RegularExpressionValidator id="placevalidator" runat="server" ErrorMessage="Enter only placeName" ControlToValidate="txtPlace"
														ValidationExpression="^[a-zA-Z].[a-zA-Z]*$"></asp:RegularExpressionValidator></td>
											</tr>
											<tr>
												<td><asp:Label ID="lblFromDate" Runat="server" CssClass="mandatory">From Date<br>(dd/mm/yyyy)</asp:Label></td>
												<td><asp:TextBox ID="txtFromDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('LTCDetails.txtFromDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                   <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                                                   CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                    |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                        
                                                        
                                                        
                                                        </td>
												<td><asp:Label ID="lblToDate" Runat="server" CssClass="mandatory">To Date<br>(dd/mm/yyyy)</asp:Label></td>
												<td><asp:TextBox ID="txtToDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('LTCDetails.txtToDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                   <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtToDate"
                                                       CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                            |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                        </td>
												<td><asp:Label ID="lblLtcAvailed" Runat="server" CssClass="mandatory">Ltc Availed</asp:Label></td>
												<td>
													<asp:RadioButtonList ID="radLtcAvailed" Runat="server" CssClass="mandatory" RepeatDirection="Vertical">
														<asp:ListItem Value="0">Self With Family</asp:ListItem>
														<asp:ListItem Value="1">Self Alone</asp:ListItem>
														<asp:ListItem Value="2">Family Alone</asp:ListItem>
													</asp:RadioButtonList>
												</td>
												<td><asp:Label id="lblDescription" Runat="server" CssClass="mandatory">Description</asp:Label></td>
												<td><asp:TextBox ID="txtDescription" Runat="server" CssClass="formlines" TextMode="MultiLine" onblur="chkbadchar(this);"></asp:TextBox></td>
											</tr>
											<tr>
												<td align="right" colSpan="8"><asp:button id="btnAdd" CssClass="formbuttons" Runat="server" Text="Add New" Width="95px" CausesValidation="False" onclick="btnAdd_Click"></asp:button>&nbsp;&nbsp;
													<asp:button id="btnCance" CssClass="formbuttons" Runat="server" Text="Cancel" Width="95px" CausesValidation="False" onclick="btnCance_Click"></asp:button>&nbsp;
												</td>
											</tr>
											<tr>
												<td colSpan="8" align="center"><asp:datagrid id="dgrdLTC" Runat="server" PageSize="5" AutoGenerateColumns="False" BorderColor="#E7E7FF"
														BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Horizontal" Width="100%" AllowPaging="True">
														<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
														<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#99CCFF"></SelectedItemStyle>
														<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
														<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
														<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
														<Columns>
															<asp:TemplateColumn HeaderText="LTCNo">
																<ItemTemplate>
																	<asp:Label ID="lbldLtcno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"LTCNo")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Block Year">
																<ItemTemplate>
																	<asp:Label ID="lbldBlockYear" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BlockYear")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Nature">
																<ItemTemplate>
																	<asp:Label ID="lbldNature" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Nature")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="OrderNo">
																<ItemTemplate>
																	<asp:Label ID="lbldOrderno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"OrderNo")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="OrderDate">
																<ItemTemplate>
																	<asp:Label ID="lbldOrderDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"OrderDate")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="FromDate">
																<ItemTemplate>
																	<asp:Label ID="lbldFromDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"FromDate")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="ToDate">
																<ItemTemplate>
																	<asp:Label ID="lbldToDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ToDate")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Place">
																<ItemTemplate>
																	<asp:Label ID="lbldPlace" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Place")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="LtcAvailed">
																<ItemTemplate>
																	<asp:Label ID="lbldLtcAvailed" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"LtcAvailed")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Description">
																<ItemTemplate>
																	<asp:Label ID="lbldDescription" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Descript")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Actions">
																<ItemTemplate>
																	<asp:LinkButton id="lnkEdit" Runat="server" CausesValidation="False" CommandName="Edit">Edit</asp:LinkButton>&nbsp;|&nbsp;
																	<asp:LinkButton id="lnkDelete" Runat="server" CausesValidation="False" CommandName="Delete">Delete</asp:LinkButton>
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
						</table>
					</td
				</tr>
				<tr>
					<td><asp:ValidationSummary ID="valid" Runat="server" ShowMessageBox="True" ShowSummary="True" DisplayMode="BulletList"></asp:ValidationSummary></td>
				</tr>
				<tr>
					<td>
						<uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
