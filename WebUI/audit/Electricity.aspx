<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="Electricity.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.earth.Electricity" %>
<%@ Register TagPrefix="uc1" TagName="ContingencyVoucher" Src="../UserControls/ContingencyVoucher.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Electricity</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/printJS.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout" onload="load();"
		onunload="unload();">
		<form id="Electricity" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD style="HEIGHT: 18px"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%"><br>
						<table cellSpacing="1" cellPadding="2" width="98%" border="0">
							<tr>
								<TD style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</tr>
                            </table>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr">
								<TR>
									<TD width="15%">
										<asp:label id="Label4" runat="server" CssClass="mandatory">Bill Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtBillDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Electricity.txtBillDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtBillDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
										<asp:requiredfieldvalidator id="rfvBillDate" runat="server" CssClass="validatemessage" ControlToValidate="txtBillDate"
											ErrorMessage="Data required" Display="Dynamic"></asp:requiredfieldvalidator></TD>
									<TD width="15%">
										<asp:label id="lblYear" runat="server" CssClass="mandatory">Year</asp:label></TD>
									<TD width="35%">
										<uc1:yearcombo id="YearCombo1" runat="server"></uc1:yearcombo></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblMonth" runat="server" CssClass="mandatory">From Month</asp:label></TD>
									<TD width="35%">
										<uc1:monthcombo id="MonthCombo1" runat="server"></uc1:monthcombo></TD>
									<TD width="15%">
										<asp:label id="lblToMonth" runat="server" CssClass="mandatory">To Month</asp:label></TD>
									<TD width="35%">
										<uc1:monthcombo id="MonthCombo2" runat="server"></uc1:monthcombo></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="Label1" runat="server" CssClass="mandatory">Office Code (- 
                                        MeterNo)</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboOfficeCode" runat="server" CssClass="drptxt" AutoPostBack="True" Width="242px" onselectedindexchanged="cboOfficeCode_SelectedIndexChanged"></asp:dropdownlist>
										<asp:requiredfieldvalidator id="reqOfficecode" Runat="server" ControlToValidate="cboOfficeCode" ErrorMessage="!">!</asp:requiredfieldvalidator></TD>
									<TD>
										<asp:label id="lblTotal" Runat="server" CssClass="mandatory">Gross Electricity Claim</asp:label></TD>
									<TD>
										<asp:textbox id="txtgrossamt" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="130px" Enabled="False"></asp:textbox></TD>
								</TR>
								<TR>
									<TD align="left" colSpan="4"><BR>
										<TABLE cellSpacing="0" cellPadding="0" width="98%" align="center">
											<TR>
												<TD>
													<asp:panel id="ebInput" Runat="server" Width="90%">
														<FIELDSET><LEGEND>Add/Edit Meter Reading Details</LEGEND>
															<TABLE cellSpacing="2" cellPadding="2" width="80%" borderColorLight="#000033" border="0">
																<TR class="formlines">
																	<TD>Meter No</TD>
																	<TD>Previous Reading</TD>
																	<TD>Current Reading</TD>
																	<TD>Amount(Rs.)</TD>
																	<TD colSpan="2">&nbsp;</TD>
																</TR>
																<TR>
																	<TD>
																		<asp:dropdownlist id="cboMeterNo1" runat="server" CssClass="formlines" Width="125px" onselectedindexchanged="cboMeterNo1_SelectedIndexChanged"></asp:dropdownlist></TD>
																	<TD>
																		<asp:textbox id="txtPreviousReading" runat="server" CssClass="formlines" Width="100px" onblur="chkbadchar(this);" MaxLength="10">0</asp:textbox>
																		<asp:requiredfieldvalidator id="rfvPreviousReading" runat="server" CssClass="validatemessage" ControlToValidate="txtPreviousReading"
																			ErrorMessage="PreviousReading Required">!</asp:requiredfieldvalidator>
																		<asp:rangevalidator id="rvfPreviousReading" runat="server" CssClass="validatemessage" ControlToValidate="txtPreviousReading"
																			ErrorMessage="Data Incorrect" Type="Double" MinimumValue="0" MaximumValue="9999999">!</asp:rangevalidator></TD>
																	<TD>
																		<asp:textbox id="txtCurrentReading" runat="server" CssClass="formlines" onblur="chkbadchar(this);" Width="100px" MaxLength="10" ontextchanged="txtCurrentReading_TextChanged">0</asp:textbox>
																		<asp:requiredfieldvalidator id="rfvCurrentReading" runat="server" CssClass="validatemessage" ControlToValidate="txtCurrentReading"
																			ErrorMessage="CurrentReading Required">!</asp:requiredfieldvalidator>
																		<asp:rangevalidator id="rvfCurrentReading" runat="server" CssClass="validatemessage" ControlToValidate="txtCurrentReading"
																			ErrorMessage="Data Incorrect" Type="Double" MinimumValue="0" MaximumValue="999999">!</asp:rangevalidator></TD>
																	<TD>
																		<asp:TextBox id="txtebamount" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="10" width="70px"></asp:TextBox>
																		<asp:RequiredFieldValidator id="rfvtxtAmount" runat="server" CssClass="validatemessage" ControlToValidate="txtebamount"
																			ErrorMessage="Data Required" Display="Dynamic">!</asp:RequiredFieldValidator></TD>
																	<TD>
																		<asp:Button id="btnaddebbilldetails" Runat="server" CssClass="formbuttons" Width="145px" BorderStyle="Groove"
																			Text="Add Meter Details" onclick="btnaddebbilldetails_Click"></asp:Button></TD>
																	<TD>
																	<TD>
																		<asp:Button id="btnmetercancel" Runat="server" CssClass="formbuttons" Width="110px" BorderStyle="Groove"
																			Text="Cancel" CausesValidation="False" onclick="btnmetercancel_Click"></asp:Button></TD>
																</TR>
															</TABLE>
														</FIELDSET>
													</asp:panel></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD width="50%" colSpan="2">
										<asp:button id="btnAdd" runat="server" CssClass="formbuttons" Text="Add Meter Details" Visible="False"
											ForeColor="White" BackColor="Purple" onclick="btnAdd_Click"></asp:button></TD>
									<TD width="50%" colSpan="2">
										<asp:linkbutton id="lbtnListEmp" runat="server" Visible="False" ForeColor="Purple" BackColor="Transparent"
											Font-Bold="True">View Meter Details</asp:linkbutton></TD>
								</TR>
								<TR>
									<TD colSpan="4"><BR>
										<TABLE cellSpacing="0" cellPadding="0" width="98%" align="center">
											<TR>
												<TD>
													<asp:datagrid id="DataGrid1" runat="server" CssClass="formlines" Width="90%" AutoGenerateColumns="False"
														BorderWidth="1" ShowFooter="True">
														<Columns>
															<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" HeaderText="Action (Click)" CancelText="Cancel"
																EditText="Edit" HeaderStyle-CssClass="mandatory"></asp:EditCommandColumn>
															<asp:BoundColumn DataField="TokenNo" ReadOnly="True" HeaderText="TokenNo" HeaderStyle-CssClass="mandatory"></asp:BoundColumn>
															<asp:TemplateColumn HeaderText="MeterNo" HeaderStyle-CssClass="mandatory">
																<ItemTemplate>
																	<asp:Label id="lblMeterNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"MeterNo") %>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Previous Reading" HeaderStyle-CssClass="mandatory">
																<ItemTemplate>
																	<asp:Label id="lblPrevRng" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PreviousReading") %>'>
																	</asp:Label>
																</ItemTemplate>
																<EditItemTemplate>
																	<asp:TextBox id="txtPrevRng" MaxLength=10 width = "70px" runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"PreviousReading") %>'>
																	</asp:TextBox>
																</EditItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Current Reading" HeaderStyle-CssClass="mandatory">
																<ItemTemplate>
																	<asp:Label id="lblCurrRng" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CurrentReading") %>'>
																	</asp:Label>
																</ItemTemplate>
																<EditItemTemplate>
																	<asp:TextBox id="txtCurrRng" MaxLength=10 width = "70px" runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"CurrentReading") %>'>
																	</asp:TextBox>
																</EditItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Amount" HeaderStyle-CssClass="mandatory">
																<ItemTemplate>
																	<asp:Label id="lblAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'>
																	</asp:Label>
																</ItemTemplate>
																<EditItemTemplate>
																	<asp:TextBox id="txtAmount" MaxLength=10 width = "70px" runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'>
																	</asp:TextBox>
																</EditItemTemplate>
															</asp:TemplateColumn>
															<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
														</Columns>
													</asp:datagrid></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD colSpan="2">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
										<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label>
										<asp:label id="lblMessage2" runat="server" CssClass="validatemessage"></asp:label></TD>
									<TD colSpan="2">
										<asp:textbox id="todaydate" runat="server" Visible="False"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top">
										<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="110px" Text="Save" CausesValidation="False" onclick="btnSave_Click"></asp:button></TD>
									<TD vAlign="top">
										<DIV class="holder" id="divDetails">
											<TABLE class="holderTable" cellSpacing="0" cellPadding="0" width="50%" border="0">
												<TR>
													<TD>
														<DIV>
															<TABLE class="formbuttons" cellSpacing="0" cellPadding="1" width="100%" border="0">
																<TR>
																	<TD><A id="exp21" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">Show 
																			Sub Voucher </A>
																	</TD>
																	<TD width="15"><A id="exp22" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);"><IMG id="exp2" height="15" alt="Expand Details" src="../Scripts/maximize.gif" width="15"
																				border="0"> </A>
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
									<TD colSpan="3">
										<DIV class="hiderScroll" id="hideDetails" img="exp2" openAlt="Collapse Details" closedAlt="Expand Details">
											<uc1:contingencyvoucher id="ContingencyVoucher1" runat="server"></uc1:contingencyvoucher></DIV>
									</TD>
								</TR>
							</asp:Panel>
							<TR>
								<TD colspan="4"><br>
									<uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
				<tr>
					<td><asp:validationsummary id="errsummary" Runat="server" ShowSummary="False" DisplayMode="BulletList" ShowMessageBox="True"
							Font-Size="Small"></asp:validationsummary></td>
				</tr>
			</TABLE>
		</form>
		<script type="text/jscript" language="jscript">
			widgets.Add(hideDetails, "Details");
			widgets.divCount++;		
		</script>
	</body>
</HTML>
