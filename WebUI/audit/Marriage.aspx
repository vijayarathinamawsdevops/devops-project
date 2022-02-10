<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="Marriage.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.earth.Marriage" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Marriage</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	    <style type="text/css">

            #I1
            {
                height: 275px;
            }
        </style>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Marriage" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD  colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
                         </table>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr">
								<TR>
									<TD colSpan="4">
										<uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblName" runat="server" CssClass="mandatory">Name</asp:label></TD>
									<TD width="35%">
										<asp:TextBox ID="txtName" runat="server" CssClass="formlines" MaxLength="50" 
                                            onblur="chkbadchar(this);"></asp:TextBox><asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                        ControlToValidate="txtName" CssClass="validatemessage" 
                                        ErrorMessage="Date Required"></asp:RequiredFieldValidator>
                                    </TD>
									<TD width="15%">
										<asp:Label ID="lblDesignation" runat="server" CssClass="mandatory">Designation</asp:Label>
                                    </TD>
									<TD width="35%">
										<asp:DropDownList ID="drpDesignation" runat="server" CssClass="drptxt" 
                                            Width="134px">
                                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="drpDesignation" CssClass="validatemessage" 
                                        ErrorMessage="Date Required" InitialValue="-1"></asp:RequiredFieldValidator>
                                    </TD>
								</TR>
								<tr>
                                    <td width="15%">
                                        <asp:Label ID="lblSanctionOrder" runat="server" CssClass="mandatory">Sanction 
                                        Order No </asp:Label>
                                    </td>
                                    <td width="35%">
                                        <asp:TextBox ID="txtSanctionOrderNo" runat="server" CssClass="formlines" 
                                            MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvSanctionOrder" runat="server" 
                                            ControlToValidate="txtSanctionOrderNo" CssClass="validatemessage" 
                                            Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
                                    </td>
                                    <td width="15%">
                                        <asp:Label ID="lblSanctionDate" runat="server" CssClass="mandatory">Sanction 
                                        Date</asp:Label>
                                    </td>
                                    <td width="35%">
                                        <asp:TextBox ID="txtSanctionDate" runat="server" CssClass="formlines" 
                                            onblur="chkbadchar(this);"></asp:TextBox>
                                        <a href="javascript:show_calendar('Marriage.txtSanctionDate');" 
                                            onmouseout="window.status='';return true;" 
                                            onmouseover="window.status='Date Picker';return true;">
                                            <img border="0" src="../Images/show-calendar.gif">
                                            </img>
                                        </a>
                                        <asp:RequiredFieldValidator ID="rfvSanctionDate" runat="server" 
                                            ControlToValidate="txtSanctionDate" CssClass="validatemessage" 
                                            Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" runat="server" 
                                            ControlToValidate="txtSanctionDate" CssClass="validatemessage" 
                                            ErrorMessage="Invalid Date" 
                                            ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
								<TR>
									<TD style="HEIGHT: 20px" width="15%">
										<asp:label id="lblSex" runat="server" CssClass="mandatory">Sex</asp:label></TD>
									<TD style="HEIGHT: 20px" width="35%">
										<asp:dropdownlist id="cboSex" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboSex_SelectedIndexChanged"></asp:dropdownlist>&nbsp;
										<asp:requiredfieldvalidator id="requiredsex" CssClass="validatemessage" ErrorMessage="Data Required" ControlToValidate="cboSex"
											Display="Dynamic" Runat="server"></asp:requiredfieldvalidator></TD>
									<TD style="HEIGHT: 20px" width="15%">
										<asp:label id="lblToWhom" runat="server" CssClass="mandatory">To Whom</asp:label></TD>
									<TD style="HEIGHT: 20px" width="35%">
										<asp:dropdownlist id="cboWhom" runat="server" CssClass="drptxt" Width="134px"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDateofMarriage" runat="server" CssClass="mandatory">Date Of Marriage</asp:label></TD>
									<TD colSpan="1">
										<asp:textbox id="txtMarriageDate" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Marriage.txtMarriageDate');">&nbsp;<IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:requiredfieldvalidator id="rfvMarriageDate" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											ControlToValidate="txtMarriageDate" Display="Dynamic"></asp:requiredfieldvalidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtMarriageDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
									<TD>
										<asp:Label ID="lblAmtSanctioned" runat="server" CssClass="mandatory">Amount 
                                        Sanctioned</asp:Label>
                                    </TD>
								    <td>
                                        <asp:TextBox ID="txtAmt" runat="server" AutoPostBack="True" 
                                            CssClass="formlines" onblur="chkbadchar(this);" 
                                            ontextchanged="txtAmt_TextChanged"></asp:TextBox>
                                    </td>
								</TR>
								<tr>
                                    <td width="15%">
                                        <asp:Label ID="lblInstallMents" runat="server" CssClass="mandatory">No Of 
                                        InstallMents</asp:Label>
                                    </td>
                                    <td colspan="1">
                                        <asp:TextBox ID="txtInstallments" runat="server" CssClass="formlines" 
                                            onblur="chkbadchar(this);"></asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="lblloanAmount" Runat="server" CssClass="mandatory"></asp:Label>
                                    </td>
                                </tr>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:button id="btnsave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnsave_Click"></asp:button>&nbsp;<asp:Button 
                                            ID="btnView" runat="server" CausesValidation="False" CssClass="formbuttons" 
                                            onclick="btnView_Click" TabIndex="20" Text="View Report" Width="90px" />
									</TD>
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
								<td>
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" onclick="ImageButton1_Click"></asp:imagebutton></td>
							</tr>
							<TR>
								<TD><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder><asp:textbox id="todaydate" runat="server" Visible="False"></asp:textbox></TD>
							</TR>
							<TR>
								<TD style="text-align:left"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
