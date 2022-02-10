<%@ Register TagPrefix="uc1" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<%@ Page language="c#" Codebehind="EarningsAndDeductions.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.EarningsAndDeductions" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Earnings</title>
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
		<form id="EarningsAndDeductions" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<TBODY>
								<tr>
									<td>
										<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></td>
								</tr>
								<TR>
									<TD>
										<uc1:volume id="Volume1" runat="server"></uc1:volume></TD>
								</TR>
								<tr>
									<td>
										<uc1:PersonalDetails id="PersonalDetails1" runat="server"></uc1:PersonalDetails></td>
								</tr>
								<tr>
									<td align="center">
										<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
											<TBODY>
												<tr class="formtitle">
													<td align="center" colSpan="8">Earnings</td>
												</tr>
												<tr>
													<td style="HEIGHT: 57px"><asp:label id="lblEmpIdNo" CssClass="mandatory" Runat="server">EmpIdNo</asp:label></td>
													<td style="HEIGHT: 57px"><asp:textbox id="txtEmpIdNo" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId No"
															ControlToValidate="txtEmpIdNo" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td style="HEIGHT: 57px"><asp:label id="lblSuffix" runat="server" CssClass="mandatory">Suffix</asp:label></td>
													<td style="HEIGHT: 57px">
														<asp:TextBox id="txtEMPSuffix" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:TextBox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId Suffix"
															ControlToValidate="txtEMPSuffix" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td style="HEIGHT: 57px"><asp:label id="lblDate" CssClass="mandatory" Runat="server">EarnDate<br>(dd/mm/yyyy)</asp:label></td>
													<td style="HEIGHT: 57px"><asp:textbox id="txtDate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvEarningsDate" runat="server" CssClass="validatemessage" ControlToValidate="txtDate"
															ErrorMessage="Enter Earnings Date"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('EarningsAndDeductions.txtDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                            
                                                         <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Format is dd/mm/yyyy"  ControlToValidate="txtDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                                            </td>
													<td style="HEIGHT: 57px"><asp:label id="lblMcNo" CssClass="mandatory" Runat="server">Money Column No<br>(MC No)</asp:label></td>
													<td style="HEIGHT: 57px"><asp:textbox id="txtMcNo" CssClass="formlines" Runat="server" AutoPostBack="True" ontextchanged="txtMcNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" ControlToValidate="txtMcNo"
															ErrorMessage="Enter Money Column No"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator>
														<asp:RegularExpressionValidator id="mcvalidator" runat="server" ControlToValidate="txtMcNo" ErrorMessage="RegularExpressionValidator"
															ValidationExpression="^[1-9]*$"></asp:RegularExpressionValidator></td>
												</tr>
												<tr>
													<td><asp:label id="lblPayBreakUp" CssClass="mandatory" Runat="server">Pay BreakUp</asp:label>&nbsp;</td>
													<td><asp:dropdownlist id="ddlPayBreakUp" tabIndex="-1" CssClass="drptxt" Runat="server" Width="160px"></asp:dropdownlist></td>
													<td><asp:label id="lblAmount" CssClass="mandatory" Runat="server">Amount</asp:label></td>
													<td><asp:textbox id="txtAmount" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="amyvalidator" runat="server" ControlToValidate="txtAmount" ErrorMessage="Enter Decimal Value"
															ValidationExpression="^[1-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
													<td><asp:label id="lblReason" CssClass="mandatory" Runat="server">Reason</asp:label></td>
													<td><asp:textbox id="txtReason" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
												</tr>
												<tr>
													<td align="right" colSpan="8"><asp:button id="btnAdd" CssClass="formbuttons" Runat="server" Text="Add New" CausesValidation="False" onclick="btnAdd_Click"></asp:button>&nbsp;&nbsp;
														<asp:button id="btnClear" CssClass="formbuttons" Runat="server" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button>&nbsp;
													</td>
												</tr>
												<tr>
													<td colSpan="8" align="center"><asp:datagrid id="dgrdPayBreakUp" Runat="server" AutoGenerateColumns="False" BorderColor="#E7E7FF"
															BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Horizontal" Width="100%">
															<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
															<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
															<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
															<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
															<Columns>
																<asp:TemplateColumn HeaderText="Reason">
																	<ItemTemplate>
																		<asp:Label ID="lbldReason" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Reason")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="PayBreakUp">
																	<ItemTemplate>
																		<asp:Label ID="lbldPayBreakUp" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PayBreakUp")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Amount">
																	<ItemTemplate>
																		<asp:Label ID="lbldAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount")%>'>
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
												<tr>
													<td colspan="8" align="right">
														<asp:Label ID="lblTotal" Runat="server" CssClass="mandatory">Total :-</asp:Label>&nbsp;&nbsp;
														<asp:Label ID="txtTotal" Runat="server" CssClass="totaltext"></asp:Label>
													</td>
												</tr>
												<tr>
													<td align="center" colSpan="8"><asp:button id="btnApply" CssClass="formbuttons" Runat="server" Text="Apply the Same For Next Month" onclick="btnApply_Click"></asp:button></td>
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
