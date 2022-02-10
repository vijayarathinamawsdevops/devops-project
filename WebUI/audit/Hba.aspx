<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="Hba.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Hba" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="sanctionorder" Src="../UserControls/sanctionorder.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Hba</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	    <style type="text/css">


            #I1
            {
                height: 275px;
            }
        </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Hba" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
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
									<TD colSpan="4">
										<uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 120px" width="120">
										<asp:label id="lblSanctionOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionOrder" runat="server" CssClass="formlines" MaxLength="50"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvSanctionOrder" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Data Required" ControlToValidate="txtSanctionOrder"></asp:requiredfieldvalidator></TD>
									<TD width="15%">
										<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Hba.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:requiredfieldvalidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Data Required" ControlToValidate="txtSanctionDate"></asp:requiredfieldvalidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 120px; HEIGHT: 18px" width="120">
										<asp:label id="lblTypeofHba" runat="server" CssClass="mandatory">Type of HBA</asp:label></TD>
									<TD style="HEIGHT: 18px" width="35%">
										<asp:dropdownlist id="cboTypeofHba" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
									<TD style="HEIGHT: 18px" width="15%">
										<asp:label id="lblBasicPay" runat="server" CssClass="mandatory">Basic Pay</asp:label></TD>
									<TD style="HEIGHT: 18px" width="35%">
										<asp:textbox id="txtBasicPay" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>
										<asp:requiredfieldvalidator id="rvfBasicPay" runat="server" CssClass="validatemessage" Display="Dynamic" ErrorMessage="Data Required"
											ControlToValidate="txtBasicPay"></asp:requiredfieldvalidator>
										<asp:rangevalidator id="rnvBasicPay" runat="server" CssClass="validatemessage" Display="Dynamic" ErrorMessage="Should be a number"
											ControlToValidate="txtBasicPay" MinimumValue="0" MaximumValue="999999999" Type="Double"></asp:rangevalidator></TD>
								</TR>
								<tr>
                                    <td style="WIDTH: 120px; HEIGHT: 18px" width="120">
                                        <asp:Label ID="lblTypeofHba0" runat="server" CssClass="mandatory">Name</asp:Label>
                                    </td>
                                    <td style="HEIGHT: 18px" width="35%">
                                        <asp:TextBox ID="txtName" runat="server" CssClass="formlines" MaxLength="50"></asp:TextBox>
                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                        ControlToValidate="txtName" CssClass="validatemessage" 
                                        ErrorMessage="Data Required"></asp:RequiredFieldValidator>
                                    </td>
                                    <td style="HEIGHT: 18px" width="15%">
                                        <asp:Label ID="lblTypeofHba1" runat="server" CssClass="mandatory">Designation</asp:Label>
                                    </td>
                                    <td style="HEIGHT: 18px" width="35%">
                                        <asp:DropDownList ID="drpDesignation" runat="server" CssClass="formlines" 
                                            Width="160px">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="drpDesignation" CssClass="validatemessage" 
                                        ErrorMessage="Data Required" InitialValue="-1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
								<TR>
									<TD class="mandatory">Total Sanctioned Amt</TD>
									<TD style="HEIGHT: 23px" width="35%">
										<asp:textbox id="txtSanctionAmount" runat="server" CssClass="formlines" 
                                            MaxLength="12" onblur="chkbadchar(this);"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvSanctionAmount" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Data Required" ControlToValidate="txtSanctionAmount"></asp:requiredfieldvalidator>
										<asp:rangevalidator id="rnvSanctionAmount" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Should be a number" ControlToValidate="txtSanctionAmount" MinimumValue="0" MaximumValue="999999999999"
											Type="Double"></asp:rangevalidator></TD>
									<TD style="HEIGHT: 23px" width="15%">
										<asp:label id="lblReleaseOrder" runat="server" CssClass="mandatory">Release Order Number</asp:label></TD>
									<TD style="HEIGHT: 23px" width="35%">
										<asp:textbox id="txtReleaseOrder" runat="server" CssClass="formlines" MaxLength="20" onblur="chkbadchar(this);"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvReleaseOrder" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Data Required" ControlToValidate="txtReleaseOrder"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 120px; HEIGHT: 31px" width="120">
										<asp:label id="lblReleaseDate" runat="server" CssClass="mandatory">Release Date</asp:label></TD>
									<TD style="HEIGHT: 31px" width="35%">
										<asp:textbox id="txtReleaseDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Hba.txtReleaseDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtReleaseDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
										<asp:requiredfieldvalidator id="rfvReleaseDate" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Data Required" ControlToValidate="txtReleaseDate"></asp:requiredfieldvalidator></TD>
									<TD style="HEIGHT: 31px" width="15%">
										<asp:label id="lblReleaseAmount" runat="server" CssClass="mandatory">Release Amount</asp:label></TD>
									<TD style="HEIGHT: 31px" width="35%">
										<asp:textbox id="txtReleaseAmount" runat="server" CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvReleaseAmount" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Data Required" ControlToValidate="txtReleaseAmount"></asp:requiredfieldvalidator>
										<asp:rangevalidator id="rnvReleaseAmount" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Should be a number" ControlToValidate="txtReleaseAmount" MinimumValue="0" MaximumValue="999999999999"
											Type="Double"></asp:rangevalidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 120px; HEIGHT: 2px" width="120">
										<asp:label id="lblInstallmentNo" runat="server" CssClass="mandatory">Total Instalments</asp:label></TD>
									<TD style="HEIGHT: 2px" colSpan="3">
										<asp:textbox id="txtInstallmentNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="4"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvInstallmentNumber" runat="server" CssClass="validatemessage" Display="Dynamic"
											ErrorMessage="Data Required" ControlToValidate="txtInstallmentNo"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD width="100%" colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
										<asp:TextBox id="todaydate" runat="server" Visible="False" onblur="chkbadchar(this);"></asp:TextBox></TD>
								</TR>
                                </table>
							</asp:Panel>
							<TR>
								<TD width="100%"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:button>&nbsp;<asp:Button 
                                            ID="btnView" runat="server" CausesValidation="False" CssClass="formbuttons" 
                                            onclick="btnView_Click" TabIndex="20" Text="View Report" Width="90px" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:ImageButton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" onclick="ImageButton1_Click"></asp:ImageButton></TD>
							</TR>
							<TR>
								<TD width="100%">
                                        <iframe ID="I1" runat="server" name="I1" src="" target="_blank" 
                                        width="100%">
                                        </iframe>
                                    </TD>
							</TR>
							<TR>
								<TD style="WIDTH: 120px">
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1" Width="198px"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:label id="lblMessage2" runat="server" CssClass="validatemessage" Width="165px"></asp:label></TD>
							</TR>
							<TR>
								<TD><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 26px"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
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
	</body>
</HTML>
