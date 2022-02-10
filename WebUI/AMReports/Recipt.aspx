
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="AMReciptDetails" Src="../UserControls/ReceiptDetails.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recipt.aspx.cs" Inherits="eKaruvoolam.WebUI.AMReports.Recipt" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="AMStampDeductions" Src="../UserControls/StampDeductions.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title> AM-Receipt</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
         <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 94px;
            height: 26px;
        }
        .style2
        {
            width: 431px;
            height: 26px;
        }
        .style3
        {
            height: 26px;
        }
    </style>
</head>
<body id="AM_AMReceipt" topmargin="0" rightmargin="0" leftmargin="0">
		<form id="Refunds_Receipts" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
                
                        
				<TR>
					<TD class="formtitle" align="center"><asp:Label id="lblHeader" runat="server" CssClass="formtitle">AM Receipts</asp:Label></TD>
				</TR>
				<TR>
					<td vAlign="top" align="center" height="100%">
						 

									<br>
								</td>
							</TR>
							<TR>
								<TD>
                                 
                                
                                <table>
                                <tr>
                                <td width="150" align="left" >
                                <asp:label id="lblChallanNo" runat="server" CssClass="mandatory">Challan Number</asp:label>
                                </td>
                                <td width="450" align="left"  ><asp:dropdownlist id="CboChallanYear" runat="server" CssClass="formlines" Width="60"></asp:dropdownlist>
                                <asp:dropdownlist id="DrpStocode" runat="server" CssClass="formlines" Width="130px"></asp:dropdownlist>
                                <asp:textbox id="txtChallanNo" onblur="chkbadchar(this);" Width="145px" runat="server" CssClass="formlines"></asp:textbox>
                                <asp:imagebutton id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" 
                                        ImageUrl="../Images/go.gif"	CausesValidation="False" 
                                        onclick="ibtnTokenGo_Click" style="width: 18px"></asp:imagebutton>
                                </td>
                                 <td width="150" align="left"><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Challan Amount</asp:label></td>
								<td><asp:textbox id="txtBillAmount" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="10"></asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtBillAmount" Display="Dynamic"></asp:requiredfieldvalidator><asp:rangevalidator id="rngAmount" runat="server" CssClass="validatemessage" ErrorMessage="Data Incorrect"
										ControlToValidate="txtBillAmount" Display="Dynamic" Type="Double" MaximumValue="9999999999" MinimumValue="1"></asp:rangevalidator></td>
                                 
                                </tr>
                                <tr>
                                <td width="150" align="left"><asp:Label id="lblDateofTr" runat="server" CssClass="mandatory">AM Date</asp:Label></td>
                                <td><asp:textbox id="txtDateofTr" MaxLength="10" onblur="chkbadchar(this);" runat="server" CssClass="formlines" AutoPostBack="True"></asp:textbox>
									<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Refunds_Receipts.txtDateofTr')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
                                     <asp:Label id="Label1" runat="server" CssClass="mandatory">(dd/mm/yyyy)</asp:Label>
                                      <asp:requiredfieldvalidator id="rfvDate" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDateofTr"
										ErrorMessage=" Date Required"></asp:requiredfieldvalidator>

                                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format"  ControlToValidate="txtDateofTr"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                       </td>
                                        <TD><asp:label id="lblSaNo" runat="server" CssClass="mandatory">SA No.</asp:label></TD>
								<TD><asp:textbox id="txtSANo" runat="server" onblur="chkbadchar(this);" CssClass="formlines" AutoPostBack="True" MaxLength="3" ontextchanged="txtSANo_TextChanged"></asp:textbox></TD>
                                </tr>
                                <tr><td width="150" align="left"><asp:label id="lblType" runat="server" CssClass="mandatory"> Type</asp:label></td>
                                <td><asp:dropdownlist id="cboType" runat="server" CssClass="drptxt" onselectedindexchanged="cboType_SelectedIndexChanged"></asp:dropdownlist></td>
                                 <td> <asp:label id="lblSRNumber" runat="server" CssClass="mandatory">Service SR Number</asp:label></td>
                                <td width="431" style="WIDTH: 431px" align="left"><asp:textbox id="txtSRNumber" runat="server" onblur="chkbadchar(this);" CssClass="formlines" Enabled="False"></asp:textbox></td>
                                </tr>
                                <tr><td width="150" align="left"><asp:label id="lblDOType" runat="server" CssClass="mandatory">DO Type</asp:label></td>
                                <td><asp:dropdownlist id="cboDOType" runat="server" CssClass="drptxt"></asp:dropdownlist></td>
                                <TD>
									<asp:label id="lblDPCode" runat="server" CssClass="mandatory" DESIGNTIMEDRAGDROP="140">DP Code</asp:label></TD>
								<TD>
									<asp:textbox id="txtDPCode" runat="server" CssClass="formlines" AutoPostBack="True" Width="40px"
										MaxLength="4" onblur="chkbadchar(this);" ontextchanged="txtDPCode_TextChanged"></asp:textbox>
									<asp:requiredfieldvalidator id="rfvDpCode" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDPCode"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="revtxtDPCode" runat="server" CssClass="validatemessage" ControlToValidate="txtDPCode"
										ErrorMessage="Data Incorrect" ValidationExpression="[0-9]{4}"></asp:regularexpressionvalidator></TD>
                                </tr>
                                <tr><td width="150" align="left"><asp:label id="lblDeposit" runat="server" CssClass="mandatory">Whether Deposit</asp:label></td>
                                <td ><uc1:yesno id="YesNo1" runat="server"></uc1:yesno></td>
                                
                                <td><asp:Label ID="lblAMSign" runat="server" CssClass="mandatory">AM Sign</asp:Label></td>
                            <td><asp:dropdownlist ID="DDLAMSign" runat="server" 
                                     ><asp:ListItem Value="0">Select</asp:ListItem><asp:ListItem>+</asp:ListItem><asp:ListItem>-</asp:ListItem></asp:dropdownlist> 
                                    <asp:requiredfieldvalidator id="rvDDLAMSign" runat="server" InitialValue="0"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="DDLAMSign"
										ErrorMessage="Select Sign"></asp:requiredfieldvalidator></td>
                                </tr>
                                 
                            <tr> 

                            <td colspan="4" align="left"><br>
									<table cellSpacing="1" cellPadding="1" width="60%" border="0" class="parabr">
										<tr>
											<td valign="top" width="50%"><uc1:AMReciptDetails id="AMReciptDetails1" runat="server"></uc1:AMReciptDetails></td>
										</tr>
										<tr>
											<td valign="top" width="50%"><uc1:AMStampDeductions id="AMStampDeductions1" runat="server"></uc1:AMStampDeductions></td>
										</tr>
									</table>

                                    </tr>
                             
                                </table>
                                
                                
                                 

                                 
									<asp:button id="btnSave" runat="server" Text="Save" CssClass="formbuttons" Width="100px" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;&nbsp;
									<asp:button id="btnDelete" runat="server" Text="Delete" CssClass="formbuttons" Width="100px"
										Visible="False" onclick="btnDelete_Click"></asp:button>&nbsp;&nbsp;&nbsp;
									<asp:Button id="btnclear" runat="server" CssClass="formbuttons" Text="Clear" Width="100px" CausesValidation="False" onclick="btnclear_Click"></asp:Button>
							 
							</TR>
 

						 
				<TR>
					<TD><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</html>
