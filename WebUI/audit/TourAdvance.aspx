<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Page language="c#" Codebehind="TourAdvance.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.TourAdvance" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
    
		<title>eKaruvoolam - TourAdvance</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="TourAdvance" method="post" runat="server">
			<TABLE class="tableleftbgcolor" width="100%" border="0" cellpadding="0" cellspacing="0"
				height="100%">
				<TR>
					<TD style="HEIGHT: 18px"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td style="text-align:left">
							<uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo>
                            <table cellSpacing="1" cellPadding="2" width="98%" border="0">
							<asp:Panel ID="pnlControls" Runat="server">
								<TR>
									<TD width="15%">
										&nbsp;</TD>
									<TD width="35%">
										&nbsp;</TD>
									<TD width="15%">
										&nbsp;</TD>
									<TD width="35%">
										&nbsp; </TD>
								</TR>
								<TR>
									<TD colspan="4">
										<TABLE class="tblborder" border="0" cellSpacing="3" cellPadding="2" width="65%">
											<TR>
												<TD width="10%">
										<asp:label id="lblSanctionedOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
												<TD width="20%">
										<asp:textbox id="txtSanctionOrder" runat="server" CssClass="formlines" MaxLength="50"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvSanctionOrder" runat="server" CssClass="validatemessage" ForeColor=" " Display="Dynamic"
											ControlToValidate="txtSanctionOrder" ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
												<TD width="10%">
										<asp:label id="lblSanctionedDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
												<TD align="left" width="25%">
										<asp:textbox id="txtSanctionDate" runat="server" CssClass="formlines"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('TourAdvance.txtSanctionDate');"><IMG border="0" src="../Images/show-calendar.gif"></A>&nbsp;
										<asp:requiredfieldvalidator id="rfdSanctionOrder" runat="server" CssClass="validatemessage" ForeColor=" " Display="Dynamic"
											ControlToValidate="txtSanctionOrder" ErrorMessage="Data Required"></asp:requiredfieldvalidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<TABLE class="tblborder" border="0" cellSpacing="3" cellPadding="2" width="65%">
											<TR>
												<TD class="mandatory" width="15%">GPF Number</TD>
												<TD class="mandatory" width="15%">GPF Suffix</TD>
												<TD class="mandatory" colSpan="2">Advance Amount</TD>
											</TR>
											<TR>
												<TD>
													<asp:textbox id="txtGpfNo" runat="server" CssClass="formlines" MaxLength="10" Width="90px"></asp:textbox></TD>
												<TD>
													<asp:dropdownlist id="cboGpfSuffix" runat="server" CssClass="drptxt" Width="90px"></asp:dropdownlist></TD>
												<TD>
													<asp:textbox id="txtAdvamount" Runat="server" CssClass="formlines">0</asp:textbox></TD>
												<TD align="right">
													<asp:button id="cmdAdd" Runat="server" CssClass="formbuttons" Width="90px" Text="Add" onclick="cmdAdd_Click"></asp:button>&nbsp;&nbsp;
													<asp:button id="cmdCancel" Runat="server" CssClass="formbuttons" Width="90px" Text="Cancel"
														CausesValidation="False" onclick="cmdCancel_Click"></asp:button></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD width="15%" colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage2" runat="server" CssClass="validatemessage" ForeColor="Blue" Width="237px"
											Font-Size="XX-Small"></asp:label></TD>
								</TR>
								
								<TR width="65%">
									<TD width="25%">
										<asp:textbox id="todaydate" runat="server" align="left" Visible="False"></asp:textbox></TD>
									<TD width="40%">
										<DIV id="divDetails" class="holder">
											<TABLE class="holderTable" border="0" cellSpacing="0" cellPadding="0" width="50%">
												<TR>
													<TD>
														<DIV>
															<TABLE class="formbuttons">
																<TR>
																	<TD><A id="exp21" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">View 
																			Individual Details </A>
																	</TD>
																	<TD width="15"><A id="exp22" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);"><IMG id="exp2" border="0" alt="Expand Details" src="../Scripts/maximize.gif" width="15"
																				height="15"> </A>
																	</TD>
																</TR>
															</TABLE>
														</DIV>
												</TD>
												</TR>
											</TABLE>
										</DIV>
									</TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
								</TR>
								<TR>
									<TD colSpan="3"><BR>
										<DIV id="hideDetails" class="hiderScroll" img="exp2" openAlt="Collapse Details" closedAlt="Expand Details">
											<asp:datagrid id="DataGrid1" runat="server" CssClass="formlines" Width="100%" ShowFooter="True"
												BorderWidth="1" AutoGenerateColumns="False">
												<Columns>
													<asp:BoundColumn DataField="TokenNo" ReadOnly="True" HeaderText="TokenNo" HeaderStyle-CssClass="mandatory"></asp:BoundColumn>
													<asp:TemplateColumn HeaderText="GPF Number" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblGpfNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"GpfNo") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="GPF Suffix" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id=Label2GpfSuffix Text='<%# DataBinder.Eval(Container.DataItem, "GpfSuffix")%>' Runat="server">
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Amount" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Actions" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:LinkButton ID="lnkEdit" Runat="server" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;|&nbsp;
															<asp:LinkButton ID="lnkDelete" Runat="server" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
														</ItemTemplate>
													</asp:TemplateColumn>
												</Columns>
											</asp:datagrid></DIV>
									</TD>
								</TR>
							</asp:Panel>
							<tr>
								<TD width="15%" valign="top"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button></TD>
							</tr>
							<uc1:checklist id="CheckList1" runat="server"></uc1:checklist>
						</table>
					</td>
				</tr>
				<uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel>
				<uc1:footer id="Footer1" runat="server"></uc1:footer>
			</TABLE>
		</form>
		<script language="jscript" type="text/jscript">
			widgets.Add(hideDetails, "Details");
			widgets.divCount++;		
		</script>
	</body>
</HTML>
