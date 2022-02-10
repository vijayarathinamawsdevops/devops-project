<%@ Page language="c#" Codebehind="Telephone.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Telephone" %>
<%@ Register TagPrefix="uc1" TagName="ContingencyVoucher" Src="../UserControls/ContingencyVoucher.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Telephone</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/printJS.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>

		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	    <style type="text/css">

            #I1
            {
                height: 275px;
            }
        </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0" onload="load();"
		onunload="unload();">
		<form id="Telephone" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				height="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
                         </table>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr">
								<TR>
									<TD width="15%">
										<asp:label id="Label1" runat="server" CssClass="mandatory"> Duplicate Bill</asp:label></TD>
									<TD width="35%">
										<uc1:yesno id="YesNo1" runat="server"></uc1:yesno></TD>
									<TD width="15%"></TD>
									<TD width="35%"></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="Label4" runat="server" CssClass="mandatory"> Office</asp:label></TD>
									<TD colSpan="2">
										<asp:dropdownlist id="cboOfficeCode" runat="server" CssClass="drptxt" Width="207px" AutoPostBack="True" onselectedindexchanged="cboOfficeCode_SelectedIndexChanged"></asp:dropdownlist>
										<asp:RequiredFieldValidator id="reqOfficecode" Runat="server" ControlToValidate="cboOfficeCode" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="Label2" runat="server" CssClass="mandatory">Maximum Calls</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtMaximumCalls" runat="server" CssClass="formlines" onblur="chkbadchar(this)" Enabled="False" MaxLength="10"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="Label3" runat="server" CssClass="mandatory">Maximum Amount</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtMaximumAmount" runat="server" CssClass="formlines"  
                                            onblur="chkbadchar(this)" AutoPostBack="True" Enabled="False"
											MaxLength="12"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblMonth" runat="server" CssClass="mandatory">Bill Month</asp:label></TD>
									<TD width="35%">
										<uc1:monthcombo id="MonthCombo1" runat="server"></uc1:monthcombo></TD>
									<TD width="15%">
										<asp:label id="lblYear" runat="server" CssClass="mandatory">Bill Year</asp:label></TD>
									<TD width="35%">
										<uc1:yearcombo id="YearCombo1" runat="server"></uc1:yearcombo></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 17px" width="15%">
										<asp:label id="Label5" runat="server" CssClass="mandatory">Previous Reading</asp:label></TD>
									<TD style="HEIGHT: 17px" width="35%">
										<asp:textbox id="txtPreviousReading" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this)"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvPreviousReading" runat="server" CssClass="validatemessage" ControlToValidate="txtPreviousReading"
											ErrorMessage="Data Required" Display="Dynamic" ForeColor=" "></asp:requiredfieldvalidator></TD>
									<TD style="HEIGHT: 17px" width="15%">
										<asp:label id="Label7" runat="server" CssClass="mandatory">Current Reading</asp:label></TD>
									<TD style="HEIGHT: 17px" width="35%">
										<asp:textbox id="txtCurrentReading" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="10" onblur="chkbadchar(this)" ontextchanged="txtCurrentReading_TextChanged"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvCurrentReading" runat="server" CssClass="validatemessage" ControlToValidate="txtCurrentReading"
											ErrorMessage="Data Required" Display="Dynamic" ForeColor=" "></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 24px" width="15%">
										<asp:label id="Label6" runat="server" CssClass="mandatory">Bill Date</asp:label></TD>
									<TD style="HEIGHT: 24px" width="35%">
										<asp:textbox id="txtBillDate" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Telephone.txtBillDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:requiredfieldvalidator id="rfvBillDate" runat="server" CssClass="validatemessage" ControlToValidate="txtBillDate"
											ErrorMessage="Data Required" Display="Dynamic" ForeColor=" "></asp:requiredfieldvalidator></TD>
									<TD style="HEIGHT: 24px" width="15%">
										<asp:label id="lblAmountExceeded" runat="server" CssClass="mandatory">Amount Exceeded</asp:label></TD>
									<TD style="HEIGHT: 24px" width="35%">
										<asp:textbox id="txtAmountExceeded" runat="server" CssClass="formlines" Enabled="False" onblur="chkbadchar(this)" MaxLength="10"
											ReadOnly="True"></asp:textbox></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 23px" width="15%">
										<asp:label id="lblcboChallan" runat="server" CssClass="mandatory">Amt paid through challan</asp:label></TD>
									<TD style="HEIGHT: 23px" width="35%">
										<asp:dropdownlist id="cboChallan" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboChallan_SelectedIndexChanged"></asp:dropdownlist></TD>
									<TD style="HEIGHT: 23px" width="15%">
										<asp:label id="Label8" runat="server" CssClass="mandatory">Challan No</asp:label></TD>
									<TD style="HEIGHT: 23px" width="35%">
										<asp:textbox id="txtChallanNo" runat="server" CssClass="formlines" MaxLength="15" onblur="chkbadchar(this)"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="Label9" runat="server" CssClass="mandatory">Challan Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChallanDate" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Telephone.txtChallanDate');"><IMG src="../Images/show-calendar.gif" border="0"></A></TD>
									<TD width="15%">
										<asp:label id="lblChallanAmount" runat="server" CssClass="mandatory">Challan Amount</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChallanAmount" runat="server" CssClass="formlines" MaxLength="15" onblur="chkbadchar(this)"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Telephone.txtChallanDate');"></A></TD>
								</TR>
								<TR>
								    <td colspan="4">
                                        <asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
                                        <asp:TextBox ID="todaydate" runat="server" onblur="chkbadchar(this)" 
                                            Visible="False"></asp:TextBox>
                                        <asp:Label ID="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                    </td>
								</TR>
                                <tr>
                                    <td colspan="4">
                                        <iframe ID="I1" runat="server" name="I1" src="" target="_blank" width="100%">
                                        </iframe>
                                    </td>
                                </tr>
                             </table>
						</asp:Panel>
							<tr>
								<td valign="top">
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="BtnSave_Click"></asp:button>
									<asp:button id="btnView" runat="server" CssClass="formbuttons" Text="View Report" 
                                        Width="100px" onclick="btnView_Click1" CausesValidation="False"></asp:button>
								</td>
								<!--	<td valign="top">
									<div id="divDetails" class="holder">
										<table width="50%" cellspacing="0" cellpadding="0" border="0" class="holderTable">
											<tr>
												<td>
													<div >
														<table width="100%" cellspacing="0" cellpadding="1" border="0" class="formbuttons">
															<tr>
																<td><a id="exp21"  title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">
																		Show Sub Voucher </a>
																</td>
																<td width="15">
																	<a id="exp22" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">
																		<img id="exp2"  alt="Expand Details" src="../Scripts/maximize.gif" width="15" height="15"
																			border="0"> </a>
																</td>
															</tr>
														</table>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td> -->
							</tr>
							<!--		<tr>
								<td colspan="3">
									<div id="hideDetails" class="hiderScroll" img="exp2" openAlt="Collapse Details" closedAlt="Expand Details">
										<uc1:ContingencyVoucher id="ContingencyVoucher1" runat="server"></uc1:ContingencyVoucher>
									</div>
								</td>
							</tr> -->
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
