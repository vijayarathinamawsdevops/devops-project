<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="LookUp" Src="../UserControls/LookUp.ascx" %>
<%@ Page language="c#" Codebehind="MotorCarAdvance.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.MotorCarAdvance" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - MotorCar Advance</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	    <style type="text/css">
            .style2
            {
                height: 15px;
            }
            .style4
            {
                height: 3px;
            }
        
            #I1
            {
                height: 275px;
            }
            .style5
            {
                height: 3px;
                width: 333px;
            }
            .style6
            {
                height: 15px;
                width: 333px;
            }
            .style7
            {
                width: 333px;
            }
        </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="MotorCarAdvance" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD class="tableleftbgcolor"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
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
						<TD>
							<uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
					</TR>
					<TR>
						<TD vAlign="top">
							<TABLE cellSpacing="2" cellPadding="1" width="100%" border="0">
								<TR>
									<TD width="15%" class="style4">
										<asp:label id="lblFormSanctionOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
									<TD class="style5" width="35%">
										<asp:textbox id="txtSanctionOrder" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="50"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvSanctionOrder" runat="server" CssClass="validatemessage" ControlToValidate="txtSanctionOrder"
											Display="Dynamic" ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
									<TD align="left" width="15%" class="style4">
										<asp:label id="lblDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
									<TD class="style4" width="35%">
										<asp:textbox id="txtSanctionDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('MotorCarAdvance.txtSanctionDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" ControlToValidate="txtSanctionDate"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD class="style2" width="15%">
										<asp:label id="lblCourseType" runat="server" CssClass="mandatory">Loan Type</asp:label></TD>
									<TD class="style6" width="35%">
										<asp:dropdownlist id="cboLoanType" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboLoanType_SelectedIndexChanged"></asp:dropdownlist>
										<asp:Label id="lblLoanAmount" runat="server" CssClass="mandatory"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
									<TD vAlign="top" align="left" class="style2" width="15%">
										<asp:label id="lblAmount" runat="server" CssClass="mandatory">Basic</asp:label></TD>
									<TD class="style2" width="35%">
										<asp:TextBox id="txtBasic" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
										<asp:RequiredFieldValidator id="rfvBasicPay" runat="server" CssClass="validatemessage" ControlToValidate="txtBasic"
											ErrorMessage="Data Required"></asp:RequiredFieldValidator>
										<asp:RangeValidator id="rnvtxtBasic" runat="server" CssClass="validatemessage" ControlToValidate="txtBasic"
											ErrorMessage="Enter No" MaximumValue="99999999" MinimumValue="0" Type="Double"></asp:RangeValidator></TD>
								</TR>
								<tr>
                                    <td width="15%">
                                        <asp:Label ID="lblTypeofHba0" runat="server" CssClass="mandatory">Name</asp:Label>
                                    </td>
                                    <td class="style7" width="35%">
                                        <asp:TextBox ID="txtName" runat="server" CssClass="formlines" MaxLength="50"></asp:TextBox>
                                        </asp:TextBox><asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                        ControlToValidate="txtName" CssClass="validatemessage" 
                                        ErrorMessage="Date Required"></asp:RequiredFieldValidator>
                                    </td>
                                    <td align="left" valign="top" width="15%">
                                        <asp:Label ID="lblTypeofHba1" runat="server" CssClass="mandatory">Designation</asp:Label>
                                    </td>
                                    <td width="35%">
                                        <asp:DropDownList ID="drpDesignation" runat="server" CssClass="formlines" 
                                            Width="160px">
                                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="drpDesignation" CssClass="validatemessage" 
                                        ErrorMessage="Date Required" InitialValue="-1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
								<TR>
									<TD width="15%">
										<asp:Label id="lblnoinstall" CssClass="mandatory" Runat="server">No Of Installments</asp:Label></TD>
									<TD class="style7" width="35%">
										<asp:TextBox id="txtnoinstall" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;
										<asp:RequiredFieldValidator id="Requiredfieldvalidator2" runat="server" CssClass="validatemessage" ControlToValidate="txtnoinstall"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
									<TD class="mandatory" align="left" width="15%">Date of Funds Intimated By CTA</TD>
									<TD align="left" width="35%">
										<asp:TextBox id="txtFundsintimatedt" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('MotorCarAdvance.txtFundsintimatedt')"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" ControlToValidate="txtFundsintimatedt"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtFundsintimatedt" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD>
							<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
							<asp:TextBox id="todaydate" runat="server" Visible="False"></asp:TextBox></TD>
					</TR>
                    </table>
				        </asp:Panel><TR>
					<TD>
						<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="btnSave_Click"></asp:Button>&nbsp;<asp:Button 
                                            ID="btnView" runat="server" CausesValidation="False" CssClass="formbuttons" 
                                            onclick="btnView_Click" TabIndex="20" Text="View Report" Width="90px" />
					</TD>
				</TR>
				<TR>
					<TD>
                                        <iframe ID="I1" runat="server" name="I1" src="" target="_blank" 
                            width="100%">
                                        </iframe>
					</TD>
				</TR>
				<tr>
					<td></td>
				</tr>
				<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<asp:ImageButton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" onclick="ImageButton1_Click"></asp:ImageButton>
				</td> </tr>
				<TR>
					<TD>
						<asp:PlaceHolder id="PlaceHolder1" runat="server"></asp:PlaceHolder></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 22px" style="text-align:left"><uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></TD>
				</TR>
			</TABLE>
			</TD></TR>
			<tr>
				<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
			</tr>
			<TR>
				<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
			</TR>
		</form>
	</body>
</HTML>
