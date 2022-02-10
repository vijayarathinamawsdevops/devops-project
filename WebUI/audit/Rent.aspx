<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="Rent.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Rent" %>
<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ContingencyVoucher" Src="../UserControls/ContingencyVoucher.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Rent</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/printJS.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">

	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Rent" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table cellSpacing="2" cellPadding="1" width="97%" border="0" 
                            style="text-align: left">
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
							<asp:Panel ID="pnlControls" Runat="server">
								<TR>
									<TD width="20%">
										<asp:label id="lblOfficeCode" runat="server" CssClass="mandatory">Office Code (- Rent)</asp:label></TD>
									<TD width="32%">
										<asp:dropdownlist id="cboOfficeCode" runat="server" Width="210px"></asp:dropdownlist>
										<asp:RequiredFieldValidator id="reqOfficecode" ErrorMessage="!" ControlToValidate="cboOfficeCode" Runat="server">!</asp:RequiredFieldValidator></TD>
									<TD width="15%">
										<asp:label id="Label2" runat="server" CssClass="mandatory">Income Tax</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtIncomeTax" runat="server"  onblur="chkbadchar(this)" CssClass="formlines" MaxLength="10">0</asp:textbox>
										<asp:rangevalidator id="rnvIncomeTax" runat="server" ErrorMessage="Should be a number" ControlToValidate="txtIncomeTax"
											MinimumValue="0" MaximumValue="9999999" Type="Double"></asp:rangevalidator></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<TABLE cellSpacing="2" cellPadding="2" width="100%" align="left" border="0" style="text-align: left">
											<TR>
												<TD width="20%">
													<asp:label id="Label1" runat="server" CssClass="mandatory">From</asp:label></TD>
												<TD width="32%">
													<uc1:monthcombo id="MonthCombo1" runat="server"></uc1:monthcombo>
													<uc1:yearcombo id="YearCombo1" runat="server"></uc1:yearcombo></TD>
												<TD width="15%">
													<asp:label id="Label3" runat="server" CssClass="mandatory">To</asp:label>
												<TD width="35%">													
													<uc1:monthcombo id="MonthCombo2" runat="server" DESIGNTIMEDRAGDROP="78"></uc1:monthcombo>
                                                    <uc1:yearcombo id="YearCombo2" runat="server"></uc1:yearcombo></TD>
											</TR>
											<TR>
												<TD class="mandatory" width="15%">No. Of Days</TD>
												<TD>
													<asp:textbox id="txtdays" CssClass="formlines" onblur="chkbadchar(this)" Runat="server">0</asp:textbox></TD>
												<TD>
													<asp:label id="lblgrossrent" CssClass="mandatory" Width="140px" Runat="server">Gross Rent Claim</asp:label></TD>
												<TD>
													<asp:textbox id="txtgrossrent" CssClass="formlines" Width="150px"  onblur="chkbadchar(this)" Runat="server" Enabled="False"
														ReadOnly="True"></asp:textbox></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
										<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
								</TR>
							</asp:Panel>
							<tr>
								<td valign="top">
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button>
								</td>
								<td valign="top">
									<div id="divDetails" class="holder">
										<table width="50%" cellspacing="0" cellpadding="0" border="0" class="holderTable">
											<tr>
												<td>
													<div>
														<table width="100%" cellspacing="0" cellpadding="1" border="0" class="formbuttons">
															<tr>
																<td><a id="exp21" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">
																		Show Sub Voucher </a>
																</td>
																<td width="15">
																	<a id="exp22" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">
																		<img id="exp2" alt="Expand Details" src="../Scripts/maximize.gif" width="15" height="15"
																			border="0"> </a>
																</td>
															</tr>
														</table>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<div id="hideDetails" class="hiderScroll" img="exp2" openAlt="Collapse Details" closedAlt="Expand Details">
										<uc1:ContingencyVoucher id="ContingencyVoucher1" runat="server"></uc1:ContingencyVoucher>
									</div>
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
		</form>
		<script type="text/jscript" language="jscript">
			widgets.Add(hideDetails, "Details");
			widgets.divCount++;		
		</script>
	</body>
</HTML>
