
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AMFunds.aspx.cs" Inherits="eKaruvoolam.WebUI.AMReports.AMFunds" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AM-Funds</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
</head>
<body id="AM_AMFunds" leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Funds_OtherReceipts" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<TR>
					<TD class="formtitle" align="center"><asp:label id="lblHeader" runat="server" CssClass="formtitle">AM Funds</asp:label></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblChallanNo" runat="server" CssClass="mandatory">Challan Number</asp:label></TD>
								<TD width="431" style="WIDTH: 431px" align="left"><asp:dropdownlist id="CboChallanYear" runat="server" CssClass="formlines" Width="60"></asp:dropdownlist>
									<asp:dropdownlist id="DrpStocode" runat="server" CssClass="formlines" Width="130px"></asp:dropdownlist>
									<asp:textbox id="txtChallanNo" Width="145px" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox>&nbsp;&nbsp;<asp:imagebutton 
                                        id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnTokenGo_Click" style="height: 18px"></asp:imagebutton></TD>
								<TD align="left"><asp:label id="lblAMSign" runat="server" CssClass="mandatory">AMSign</asp:label></TD>
								<TD align="left"><asp:dropdownlist ID="DDLAMSign" runat="server"><asp:ListItem Value="0">Select</asp:ListItem><asp:ListItem>+</asp:ListItem><asp:ListItem>-</asp:ListItem></asp:dropdownlist> 
                                    <asp:RequiredFieldValidator ID="rfvSign" runat="server" ControlToValidate="DDLAMSign" Enabled="true" CssClass="validatemessage" InitialValue="0" ErrorMessage="Sign is Required"></asp:RequiredFieldValidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px" align="left"><asp:label id="lblDateofTr" runat="server" CssClass="mandatory">AM Date</asp:label></TD>
								<TD style="WIDTH: 431px" align="left"><asp:textbox id="txtDateofTr" onblur="chkbadchar(this);" MaxLength="10" runat="server" CssClass="formlines" AutoPostBack="True"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Funds_OtherReceipts.txtDateofTr')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>

                                <asp:Label id="Label1" runat="server" CssClass="mandatory">(dd/mm/yyyy)</asp:Label>
                                <asp:requiredfieldvalidator id="rfvDate" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDateofTr"
										ErrorMessage=" Date Required"></asp:requiredfieldvalidator>
                                 <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format"  ControlToValidate="txtDateofTr"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
								</TD>
								<TD align="left"><asp:label id="lblDoType" runat="server" CssClass="mandatory">DoType</asp:label></TD>
								<TD align="left"><asp:dropdownlist id="cboDOType" runat="server" CssClass="drptxt" AutoPostBack="True"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px" align="left"><asp:label id="lblType" runat="server" CssClass="mandatory"> Type</asp:label></TD>
								<TD style="WIDTH: 431px" align="left"><asp:dropdownlist id="cboType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
								<TD align="left"><asp:label id="lblName" runat="server" CssClass="mandatory">Remitter Name</asp:label></TD>
								<TD align="left"><asp:textbox id="txtName" runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="180px"></asp:textbox><asp:requiredfieldvalidator id="rfvName" runat="server" CssClass="validatemessage" ControlToValidate="txtName"
										Display="Dynamic" ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px" align="left"><asp:label id="lblFundsCode" runat="server" CssClass="mandatory" Visible="False">Funds Code</asp:label></TD>
								<TD style="WIDTH: 431px" align="left"><asp:textbox id="txtfundscode" runat="server" onblur="chkbadchar(this);" CssClass="formlines" AutoPostBack="True" width="45px"
										Visible="False" ontextchanged="txtfundscode_TextChanged"></asp:textbox><asp:dropdownlist id="cboFundsCode" runat="server" CssClass="drptxt" AutoPostBack="True" Width="100px"
										Visible="False" onselectedindexchanged="cboFundsCode_SelectedIndexChanged"></asp:dropdownlist></TD>
								<TD align="left"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
								<TD align="left"><asp:textbox id="txtDPCode" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" Enabled="False" ontextchanged="txtDPCode_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvDPCode" runat="server" CssClass="validatemessage" ControlToValidate="txtDPCode"
										Display="Dynamic" ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px" align="left"><asp:label id="lblSaNo" runat="server" CssClass="mandatory" Visible="False">SRSA NO.</asp:label></TD>
								<TD style="WIDTH: 431px" align="left"><asp:textbox id="txtSANo" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="3"
										Visible="False" ontextchanged="txtSANo_TextChanged"></asp:textbox></TD>
								<TD align="left"><asp:label id="lblSRCode" runat="server" CssClass="mandatory" Visible="False">SR Code</asp:label></TD>
								<TD align="left"><asp:textbox id="txtSRCode" runat="server" CssClass="formlines" onblur="chkbadchar(this);" Visible="False" ontextchanged="txtSRCode_TextChanged"></asp:textbox><asp:label id="lblDPDescription" runat="server" CssClass="mandatory"></asp:label></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px" align="left"><asp:label id="lblRemarks" runat="server" CssClass="mandatory">Remarks</asp:label></TD>
								<TD style="WIDTH: 431px" align="left"><asp:textbox id="txtRemarks" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox></TD>
								<TD align="left"><asp:label id="lblAmount" runat="server" CssClass="mandatory">Amount</asp:label></TD>
								<TD align="left"><asp:textbox id="txtAmount" runat="server" CssClass="formlines" Width="150px" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" CssClass="validatemessage" ControlToValidate="txtAmount"
										Display="Dynamic" ErrorMessage="Data Required"></asp:requiredfieldvalidator><asp:rangevalidator id="rngAmount" runat="server" CssClass="Validatemessage" ControlToValidate="txtAmount"
										Display="Dynamic" ErrorMessage="Data Incorrect" Type="Double" MaximumValue="9999999999" MinimumValue="1"></asp:rangevalidator></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="100px" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnDelete" CssClass="formbuttons" Width="100px" Text="Delete" Visible="False"
										Runat="server" onclick="btnDelete_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnclear" runat="server" CssClass="formbuttons" CausesValidation="False" Width="100px"
										Text="Clear" onclick="btnclear_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" CssClass="validatemessage" runat="server"></asp:label></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1"  runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</html>
