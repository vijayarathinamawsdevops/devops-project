<%@ Page language="c#" Codebehind="Water.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Water" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ContingencyVoucher" Src="../UserControls/ContingencyVoucher.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Water</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/printJS.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0" onload="load();"
		onunload="unload();">
		<FORM id="Water" name="Water" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="95%">
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
                            </table>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr">
								<TR>
									<TD width="15%">
										<asp:label id="Label1" runat="server" CssClass="mandatory">Office Name (- MeterNo.)</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboOfficeCode" runat="server" CssClass="drptxt" AutoPostBack="True" Width="200px" onselectedindexchanged="cboOfficeCode_SelectedIndexChanged"></asp:dropdownlist></TD>
									<TD width="15%">
										<asp:label id="lblMeterNo" runat="server" CssClass="mandatory">Meter Number</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboMeterNo" runat="server" CssClass="drptxt" Width="200px"></asp:dropdownlist>
										<asp:RequiredFieldValidator id="rfvcboMeterNo" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="cboMeterNo"
											ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblMonth" runat="server" CssClass="mandatory">Select Month </asp:label></TD>
									<TD width="35%">
										<uc1:monthcombo id="MonthCombo1" runat="server"></uc1:monthcombo></TD>
									<TD width="15%">
										<asp:label id="lblYear" runat="server" CssClass="mandatory">Select Year</asp:label></TD>
									<TD width="35%">
										<uc1:yearcombo id="YearCombo1" runat="server"></uc1:yearcombo></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="Label2" runat="server" CssClass="mandatory">Previous Reading</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPreviousReading" runat="server" CssClass="formlines" onblur="chkbadchar(this)">0</asp:textbox></TD>
									<TD width="15%">
										<asp:label id="Label3" runat="server" CssClass="mandatory">Current Reading</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtCurrentReading" runat="server" CssClass="formlines" onblur="chkbadchar(this)">0</asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="Label4" runat="server" CssClass="mandatory">Bill Date</asp:label></TD>
									<TD colSpan="3">
										<asp:textbox id="txtBillDate" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Water.txtBillDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvtxtBillDate" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtBillDate" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
										<asp:RegularExpressionValidator id="revBillDate" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtBillDate"
											ErrorMessage="Date expected in dd/mm/yyyy" ForeColor=" " ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Water.txtBillDate')"></A></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
										<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:TextBox id="todaydate" runat="server" Visible="False" onblur="chkbadchar(this)"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD vAlign="top" colSpan="4">
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
										<DIV class="hiderScroll" id="hideDetails" closedAlt="Expand Details" openAlt="Collapse Details"
											img="exp2">
											<uc1:ContingencyVoucher id="ContingencyVoucher1" runat="server"></uc1:ContingencyVoucher></DIV>
									</TD>
								</TR>
                              </table>
							</asp:Panel><tr>
								<td colspan="4" valign="top">
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button>
								</td>
							</tr>
							<TR>
								<TD colSpan="4"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
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
			</TABLE>
		</FORM>
		<script type="text/jscript" language="jscript">
			widgets.Add(hideDetails, "Details");
			widgets.divCount++;		
		</script>
	</body>
</HTML>
