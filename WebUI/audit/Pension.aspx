<%@ Page language="c#" Codebehind="Pension.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Pension" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bank" Src="../UserControls/Bank.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<HEAD>
		<title>eKaruvoolam - Pension</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Pension1" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" width="100%">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
                    
                    <asp:panel id="pnlControls" Runat="server">
						<table class="parabr" cellSpacing="2" cellPadding="1" width="98%" border="0" height="100%">
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
							
								<TR>
									<TD width="15%">
										<asp:label id="Label1" runat="server" CssClass="mandatory">Group Bill</asp:label></TD>
									<TD colSpan="3">
										<asp:dropdownlist id="cboGroup" runat="server" CssClass="drptxt" Width="130px" Font-Bold="True" AutoPostBack="True" onselectedindexchanged="cboGroup_SelectedIndexChanged">
											<asp:ListItem Value="0" Selected="True">Select here</asp:ListItem>
											<asp:ListItem Value="1">Group</asp:ListItem>
											<asp:ListItem Value="2">Individual</asp:ListItem>
										</asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblSacntionOrderNo" runat="server" CssClass="mandatory">Sanction Order No</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionOrderNo" tabIndex="1" runat="server" CssClass="formlines" EnableViewState="False"
											onblur="chkbadchar(this);" MaxLength="50"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionDate" tabIndex="2" runat="server" onblur="chkbadchar(this);" CssClass="formlines" EnableViewState="False"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator4" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<uc1:bank id="Bank1" runat="server" BankEnable="False" BranchEnable="False" 
                                            Visible="False"></uc1:bank></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblBankAccountNo" runat="server" CssClass="mandatory" 
                                            Enabled="False" Visible="False">Bank Account No</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtBanckAccountNo" tabIndex="3" runat="server" 
                                            CssClass="formlines" EnableViewState="False"
											onblur="chkbadchar(this);" MaxLength="15" Enabled="False" Visible="False"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblPpoNo" runat="server" CssClass="mandatory" Visible="False">PPO No/GPF No<br />For provosional Enter GPF</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPpoNo" tabIndex="4" runat="server" CssClass="formlines"  
                                            EnableViewState="False" onblur="chkbadchar(this);"></asp:textbox>
                                        <asp:RequiredFieldValidator ID="rfvppo" runat="server" ErrorMessage="GPFNo Required" CssClass="validatemessage" ControlToValidate="txtPpoNo"></asp:RequiredFieldValidator>
                                            &nbsp;</TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblName" runat="server" CssClass="mandatory">Name</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtName" tabIndex="5" runat="server" CssClass="formlines" EnableViewState="False"
											MaxLength="40" onblur="chkbadchar(this);"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="LblDateOfRetirement" runat="server" CssClass="mandatory">Date of Retirement</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDateofRetirement" tabIndex="6" runat="server" CssClass="formlines" EnableViewState="False" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('txtDateofRetirement');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDateofRetirement" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDateOfCommencement" runat="server" CssClass="mandatory">Commencement Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDateOfCommencement" tabIndex="7" runat="server" CssClass="formlines" EnableViewState="False" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('txtDateOfCommencement');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDateOfCommencement" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
									<TD width="15%">
										<asp:label id="lblReemployed" runat="server" CssClass="mandatory">Re-Employed</asp:label></TD>
									<TD width="35%">
										<uc1:yesno id="YesNo2" runat="server"></uc1:yesno></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblHf" runat="server" CssClass="mandatory">Health Fund</asp:label></TD>
									<TD width="35%">
										<uc1:yesno id="YesNo1" runat="server"></uc1:yesno></TD>
									<TD width="15%">
										<asp:label id="lblFsf" runat="server" CssClass="mandatory">F.S.F</asp:label></TD>
									<TD width="35%">
										<uc1:yesno id="YesNo5" runat="server"></uc1:yesno></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDoublePension" runat="server" CssClass="mandatory" 
                                            Enabled="False" Visible="False">Double Pension</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboDoublePension" tabIndex="8" runat="server" 
                                            CssClass="drptxt" Font-Bold="True"
											AutoPostBack="True" onselectedindexchanged="cboDoublePension_SelectedIndexChanged" Enabled="False" 
                                            Visible="False">
											<asp:ListItem Value="0" Selected="True">Select here</asp:ListItem>
											<asp:ListItem Value="1">Yes</asp:ListItem>
											<asp:ListItem Value="2">No</asp:ListItem>
										</asp:dropdownlist></TD>
									<TD width="15%">
										<asp:label id="lblDAccountNo" runat="server" CssClass="mandatory" 
                                            Enabled="False" Visible="False">Bank Account No</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDPAccountNo" tabIndex="9" runat="server" 
                                            CssClass="formlines" EnableViewState="False"
											onblur="chkbadchar(this);" MaxLength="15" Enabled="False" Visible="False"></asp:textbox></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<uc1:bank id="Bank2" runat="server" BankEnable="False" BranchEnable="False" 
                                            Visible="False"></uc1:bank></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblCatagory" runat="server" CssClass="mandatory">Category </asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboCatagory" tabIndex="10" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboCatagory_SelectedIndexChanged"></asp:dropdownlist></TD>
									<TD width="15%">
										<asp:label id="lblDeathDate" runat="server" CssClass="mandatory">Date of Death</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDeathDate" tabIndex="11" runat="server" CssClass="formlines" EnableViewState="False" onblur="chkbadchar(this);"
											Enabled="False" ></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('txtDeathDate');"><IMG src="../Images/show-calendar.gif" border="0">
											<asp:regularexpressionvalidator id="Regularexpressionvalidator3" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDeathDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></A></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblMonth" runat="server" CssClass="mandatory">Pension Month</asp:label></TD>
									<TD width="35%">
										<uc1:monthcombo id="MonthCombo1" runat="server"></uc1:monthcombo></TD>
									<TD width="15%">
										<asp:label id="lblYear" runat="server" CssClass="mandatory">Year</asp:label></TD>
									<TD width="35%">
										<uc1:yearcombo id="YearCombo1" runat="server"></uc1:yearcombo></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblActualPension" runat="server" CssClass="mandatory">Gross Pension</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtActualPension" tabIndex="12" runat="server" 
                                            CssClass="formlines" EnableViewState="False"
											onblur="chkbadchar(this);" MaxLength="12"></asp:textbox>
										<asp:comparevalidator id="cfvActualPension" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtActualPension" ErrorMessage="Should be a number" ForeColor=" " Type="Double"
											Operator="DataTypeCheck"></asp:comparevalidator>
										<asp:requiredfieldvalidator id="rfvActualPension" runat="server" CssClass="validatemessage" ControlToValidate="txtActualPension"
											ErrorMessage="Data Required" ForeColor=" "></asp:requiredfieldvalidator></TD>
									<TD style="WIDTH: 80px" width="80">
										<asp:Label id="lblECS" runat="server" CssClass="mandatory" Width="96px" Visible="False">ECS or NON ECS</asp:Label></TD>
									<TD width="35%">
										<asp:DropDownList id="CboECS" runat="server" CssClass="formlines" Visible="False">
											<asp:ListItem Value="2">ECS</asp:ListItem>
											<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
										</asp:DropDownList></TD>
								</TR>
								<TR>
									<TD width="15%" colSpan="4">
										<asp:Label id="lbldeductions" runat="server" CssClass="star" Width="59px">Deductions</asp:Label></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="Label2" runat="server" CssClass="mandatory" Width="91px">Pensioner's Health Fund</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtPHF" tabIndex="13" runat="server" onblur="chkbadchar(this);" CssClass="formlines" AutoPostBack="True" ontextchanged="txtPHF_TextChanged">0</asp:TextBox>
										<asp:CompareValidator id="cfvPHF" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtPHF"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator></TD>
									<TD width="15%">
										<asp:Label id="Label3" runat="server" CssClass="mandatory">Pensioner's Family Security Fund</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtPFSF" tabIndex="14" runat="server" CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);" ontextchanged="txtPFSF_TextChanged">0</asp:TextBox>
										<asp:CompareValidator id="cfvPFSF" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtPFSF"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="Label4" runat="server" CssClass="mandatory">Festival Advance</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtFA" tabIndex="15" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtFA_TextChanged">0</asp:TextBox>
										<asp:CompareValidator id="cfvFA" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtFA"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator></TD>
									<TD width="15%">
										<asp:Label id="Label5" runat="server" CssClass="mandatory">Income Tax</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtIT" tabIndex="16" runat="server" CssClass="formlines" AutoPostBack="True" ontextchanged="txtIT_TextChanged" onblur="chkbadchar(this);">0</asp:TextBox>
										<asp:CompareValidator id="cfvIT" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtIT"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 44px" width="15%">
										<asp:Label id="Label6" runat="server" CssClass="mandatory">Cash Recovery</asp:Label></TD>
									<TD style="HEIGHT: 44px" width="35%">
										<asp:TextBox id="txtCR" tabIndex="17" runat="server" CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);" ontextchanged="txtCR_TextChanged">0</asp:TextBox>
										<asp:CompareValidator id="cfvCR" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtCR"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator></TD>
									<TD style="HEIGHT: 44px" width="15%">
										<asp:Label id="Label7" runat="server" CssClass="mandatory">Others</asp:Label></TD>
									<TD style="HEIGHT: 44px" width="35%">
										<asp:TextBox id="txtOthers" tabIndex="18" runat="server" CssClass="formlines" AutoPostBack="True" ontextchanged="txtOthers_TextChanged" onblur="chkbadchar(this);">0</asp:TextBox>
										<asp:CompareValidator id="cfvOthers" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtOthers"
											ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck"></asp:CompareValidator></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblTotalDeduction" runat="server" CssClass="mandatory">Total Deduction</asp:label></TD>
									<TD>
										<asp:textbox id="txtTotalDeduction" runat="server" CssClass="formlines" EnableViewState="False"
											onblur="chkbadchar(this);" MaxLength="12">0</asp:textbox></TD>
									<TD style="HEIGHT: 26px" colSpan="2">
										<asp:textbox id="todaydate" runat="server" Visible="False"></asp:textbox></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
								</TR>
							</asp:panel></td></tr>
							<TR>
								<TD colSpan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" onclick="ImageButton1_Click"></asp:imagebutton>&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1" Width="229px"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder></TD>
							</TR>
							<TR>
								<TD colSpan="4"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</table>
			<uc1:errorlabel id="ErrorLabel1" runat="server">
            </uc1:errorlabel><uc1:footer id="Footer1" runat="server"></uc1:footer>
		</form>
	</body>
</html>
