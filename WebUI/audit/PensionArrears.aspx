<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bank" Src="../UserControls/Bank.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Page language="c#" Codebehind="PensionArrears.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.PensionArrears" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - PensionArrears</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" rightmargin="0" leftmargin="0">
		<form id="PensionArrears" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table cellSpacing="2" cellPadding="1" width="98%" border="0">
                        
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
                            <tr><td> 
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr"> 
								<TR>
									<TD width="15%">
										<asp:label id="Label1" runat="server" CssClass="mandatory">Group Bill</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboGroup" tabIndex="1" runat="server" CssClass="drptxt" Width="130px" Font-Bold="True"
											AutoPostBack="True" onselectedindexchanged="cboGroup_SelectedIndexChanged">
											<asp:ListItem Value="0" Selected="True">Select here</asp:ListItem>
											<asp:ListItem Value="1">Group</asp:ListItem>
											<asp:ListItem Value="2">Individual</asp:ListItem>
										</asp:dropdownlist></TD>
									<TD width="15%"></TD>
									<TD width="35%"></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblSacntionOrderNo" runat="server" CssClass="mandatory">AG's Letter No</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionOrderNo" tabIndex="2" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="25"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvAGLrNo" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtSanctionOrderNo"
											ErrorMessage="Data required"></asp:RequiredFieldValidator></TD>
									<TD width="15%">
										<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">AG's LetterDate</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionDate" tabIndex="3" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('PensionArrears.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvAGLtDt" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtSanctionDate"
											ErrorMessage="Data required"></asp:RequiredFieldValidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblPpoNo" runat="server" CssClass="mandatory">PPO No</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPpoNo" tabIndex="5" runat="server" CssClass="formlines" onblur="chkbadchar(this);" ontextchanged="txtPpoNo_TextChanged"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblName" runat="server" CssClass="mandatory">Name</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtName" tabIndex="6" runat="server" CssClass="formlines" MaxLength="40" onblur="chkbadchar(this);"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="LblDateOfRetirement" runat="server" CssClass="mandatory">Date of Retirement</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDateofRetirement" tabIndex="7" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('PensionArrears.txtDateofRetirement');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDateofRetirement" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
									<TD width="15%"></TD>
									<TD width="35%">&nbsp;</TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDateOfCommencement" runat="server" CssClass="mandatory">Pension @ Rs.</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPensionRS" tabIndex="8" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvPension" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtPensionRS"
											ErrorMessage="Data required"></asp:RequiredFieldValidator>
										<asp:comparevalidator id="cmpPension" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtPensionRS"
											ErrorMessage="Should be a number" ForeColor=" " Type="Double" Operator="DataTypeCheck"></asp:comparevalidator><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('PensionArrears.txtDateOfCommencement');"></A></TD>
									<TD width="15%">
										<asp:label id="lblReemployed" runat="server" CssClass="mandatory">Number of days</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPensionNoofDays" tabIndex="9" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvPensionDays" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtPensionNoofDays" ErrorMessage="Data required"></asp:RequiredFieldValidator>
										<asp:RangeValidator id="rngPensionDays" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtPensionNoofDays" ErrorMessage="Must be less than 32 " Type="Integer" MinimumValue="1"
											MaximumValue="31"></asp:RangeValidator>
										<asp:comparevalidator id="cmpPensionDays" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtPensionNoofDays" ErrorMessage="Should be a number" ForeColor=" " Type="Double"
											Operator="DataTypeCheck"></asp:comparevalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDA" runat="server" CssClass="mandatory">D.A. %</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDA" tabIndex="10" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvDA" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDA"
											ErrorMessage="Data required"></asp:RequiredFieldValidator>
										<asp:comparevalidator id="cmpDA" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDA"
											ErrorMessage="Should be a number" ForeColor=" " Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
									<TD width="15%">
										<asp:label id="lblDANoofDays" runat="server" CssClass="mandatory">Number of days</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDANoOfDays" tabIndex="11" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvDADays" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDANoOfDays"
											ErrorMessage="Data required"></asp:RequiredFieldValidator>
										<asp:RangeValidator id="rngDADays" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDANoOfDays"
											ErrorMessage="Must be less than 32 " Type="Integer" MinimumValue="1" MaximumValue="31"></asp:RangeValidator>
										<asp:comparevalidator id="cmpDADays" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDANoOfDays"
											ErrorMessage="Should be a number" ForeColor=" " Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblMA" runat="server" CssClass="mandatory">M.A. @ Rs.</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtMA" tabIndex="12" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvMA" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtMA"
											ErrorMessage="Data required"></asp:RequiredFieldValidator>
										<asp:comparevalidator id="cmpMA" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtMA"
											ErrorMessage="Should be a number" ForeColor=" " Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
									<TD width="15%">
										<asp:label id="Label11" runat="server" CssClass="mandatory">Number of days</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtMANoOfDays" tabIndex="13" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvMADays" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtMANoOfDays"
											ErrorMessage="Data required"></asp:RequiredFieldValidator>
										<asp:RangeValidator id="rngMADays" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtMANoOfDays"
											ErrorMessage="Must be less than 32 " Type="Integer" MinimumValue="1" MaximumValue="31"></asp:RangeValidator>
										<asp:comparevalidator id="cmpMADays" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtMANoOfDays"
											ErrorMessage="Should be a number" ForeColor=" " Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblCatagory" runat="server" CssClass="mandatory">Category </asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboCatagory" tabIndex="14" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboCatagory_SelectedIndexChanged"></asp:dropdownlist></TD>
									<TD width="15%">
										<asp:label id="lblDeathDate" runat="server" CssClass="mandatory">Date of Death</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDeathDate" tabIndex="15" runat="server" CssClass="formlines" onblur="chkbadchar(this);" Enabled="False"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('PensionArrears.txtDeathDate');"><IMG src="../Images/show-calendar.gif" border="0">
											<asp:regularexpressionvalidator id="Regularexpressionvalidator3" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDeathDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></A></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblActualPension" runat="server" CssClass="mandatory">Gross Pension</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtActualPension" tabIndex="16" runat="server" 
                                            CssClass="formlines" onblur="chkbadchar(this);" MaxLength="12"></asp:textbox>
										<asp:comparevalidator id="cfvActualPension" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtActualPension" ErrorMessage="Should be a number" ForeColor=" " Type="Double"
											Operator="DataTypeCheck"></asp:comparevalidator>
										<asp:requiredfieldvalidator id="rfvActualPension" runat="server" CssClass="validatemessage" ControlToValidate="txtActualPension"
											ErrorMessage="Data Required" ForeColor=" "></asp:requiredfieldvalidator></TD>
									<TD width="15%"></TD>
									<TD width="35%"></TD>
								</TR>
								<TR>
									<TD width="15%" colSpan="4">
										<asp:label id="lbldeductions" runat="server" CssClass="star" Width="59px">Deductions</asp:label></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 33px" width="15%">
										<asp:label id="Label2" runat="server" CssClass="mandatory" Width="91px">Pensioner's Health Fund</asp:label></TD>
									<TD style="HEIGHT: 33px" width="35%">
										<asp:textbox id="txtPHF" tabIndex="17" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtPHF_TextChanged">0</asp:textbox>
										<asp:comparevalidator id="cfvPHF" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtPHF"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
									<TD style="HEIGHT: 33px" width="15%">
										<asp:label id="Label3" runat="server" CssClass="mandatory">Pensioner's Family Security Fund</asp:label></TD>
									<TD style="HEIGHT: 33px" width="35%">
										<asp:textbox id="txtPFSF" tabIndex="18" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtPFSF_TextChanged">0</asp:textbox>
										<asp:comparevalidator id="cfvPFSF" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtPFSF"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 11px" width="15%">
										<asp:label id="Label4" runat="server" CssClass="mandatory">Festival Advance</asp:label></TD>
									<TD style="HEIGHT: 11px" width="35%">
										<asp:textbox id="txtFA" tabIndex="19" runat="server" CssClass="formlines"  onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtFA_TextChanged">0</asp:textbox>
										<asp:comparevalidator id="cfvFA" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtFA"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
									<TD style="HEIGHT: 11px" width="15%">
										<asp:label id="Label5" runat="server" CssClass="mandatory">Income Tax</asp:label></TD>
									<TD style="HEIGHT: 11px" width="35%">
										<asp:textbox id="txtIT" tabIndex="20" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtIT_TextChanged">0</asp:textbox>
										<asp:comparevalidator id="cfvIT" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtIT"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 20px" width="15%">
										<asp:label id="Label6" runat="server" CssClass="mandatory">Cash Recovery</asp:label></TD>
									<TD style="HEIGHT: 20px" width="35%">
										<asp:textbox id="txtCR" tabIndex="21" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtCR_TextChanged">0</asp:textbox>
										<asp:comparevalidator id="cfvCR" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtCR"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
									<TD style="HEIGHT: 20px" width="15%">
										<asp:Label id="lblFundsRecovery" runat="server" CssClass="mandatory">Funds Recovery</asp:Label></TD>
									<TD style="HEIGHT: 20px" width="35%">
										<asp:TextBox id="txtFundsRecovery" tabIndex="22" runat="server" onblur="chkbadchar(this);" CssClass="formlines" AutoPostBack="True" ontextchanged="txtFundsRecovery_TextChanged">0</asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 11px" width="15%">
										<asp:label id="lblOthers" runat="server" CssClass="mandatory">Other Recoveries</asp:label></TD>
									<TD style="HEIGHT: 11px" width="35%">
										<asp:textbox id="txtOthers" tabIndex="23" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtOthers_TextChanged">0</asp:textbox>
										<asp:comparevalidator id="cfvOthers" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtOthers"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
									<TD style="HEIGHT: 11px" width="15%">
										<asp:label id="lblTotalDeduction" runat="server" CssClass="mandatory">Total Deduction</asp:label></TD>
									<TD style="HEIGHT: 11px" width="35%">
										<asp:textbox id="txtTotalDeduction" tabIndex="24" runat="server" 
                                            onblur="chkbadchar(this);" CssClass="formlines" MaxLength="12"
											Enabled="False">0</asp:textbox></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 2px">
										<asp:label id="lblNetAmount" runat="server" CssClass="mandatory">Net Pension Amount</asp:label></TD>
									<TD style="HEIGHT: 2px">
										<asp:textbox id="txtNetAmount" tabIndex="25" runat="server" 
                                            CssClass="formlines" onblur="chkbadchar(this);" MaxLength="12"></asp:textbox>
										<asp:comparevalidator id="cmpNetAmt" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtNetAmount"
											ErrorMessage="Should be a number" ForeColor=" " Type="Double" Operator="DataTypeCheck"></asp:comparevalidator></TD>
									<TD style="HEIGHT: 2px" colSpan="2">
										<asp:textbox id="todaydate" runat="server" Visible="False" onblur="chkbadchar(this);"></asp:textbox></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
								</TR></table>
							</asp:Panel></td></tr>
							<TR>
								<TD><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" tabIndex="26" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" tabIndex="-1"></asp:imagebutton>&nbsp;&nbsp;&nbsp;&nbsp;
								</TD>
							</TR>
							<tr>
								<td>
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
							<TR>
								<TD><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder></TD>
							</TR>
							<TR>
								<TD><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
