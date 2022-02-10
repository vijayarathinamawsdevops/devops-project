<%@ Page language="c#" Codebehind="Funds_OtherReceipts.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Receipts.Funds_OtherReceipts" SmartNavigation="True" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register src="../UserControls/BankChallanAccept.ascx" tagname="BankChallanAccept" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Funds Other Receipts</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 

         <script type="text/jscript" language="javascript">

             function AssignSANo() {

//                 var DPCode = document.getElementById('txtDPCode').value
//                 if (DPCode.toString() == '8031') {
//                     document.getElementById('txtSANo').value = '27C'
//                     document.getElementById('txtSRNumber').value = '27C'
//                 }
             }


             function checkSANo() {

                 if (document.getElementById('txtSANo').value != "") {

                     var DPCode = document.getElementById('txtDPCode').value

//                     if (DPCode.toString().substring(0, 4) == '8031') {
//                         if (document.getElementById('txtSANo').value == '27C') {
//                             return true;
//                         }
//                         else {
//                             alert("SA Number should be 27C for DPCode 8031");
//                             return false;
//                         }
//                     }


                     if (DPCode.toString().substring(0, 4) == '8009') {
                         if (document.getElementById('txtSANo').value != '27C') {
                             return true;
                         }
                         else {
                             alert("SA Number should not be 27C for DPCode 8009");
                             return false;
                         }
                     }

                     return true;
                 }
                 else if (confirm("SA Number is empty, do u want to continue?")) {
                     var DPCode = document.getElementById('txtDPCode').value

//                     if (DPCode.toString().substring(0, 4) == '8031') {
//                         if (document.getElementById('txtSANo').value == '27C') {
//                             return true;
//                         }
//                         else {
//                             alert("SA Number should be 27C for DPCode 8031");
//                             return false;
//                         }
//                     }


                     if (DPCode.toString().substring(0, 4) == '8009') {
                         if (document.getElementById('txtSANo').value != '27C') {
                             return true;
                         }
                         else {
                             alert("SA Number should not be 27C for DPCode 8009");
                             return false;
                         }
                     }

                     return true;
                 }
           else {
                     return false;
                 }            

                                
             }

            

    </script>

	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Funds_OtherReceipts" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<TR>
					<TD class="formtitle" align="center"><asp:label id="lblHeader" runat="server" CssClass="formtitle"></asp:label></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
                     <panel id="pnlChallanEntry" runat="server">
						<table cellSpacing="2" cellPadding="1" width="98%" border="0" 
                            style="text-align: left">
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblChallanNo" runat="server" CssClass="mandatory">Challan Number</asp:label></TD>
								<TD width="431" style="WIDTH: 431px"><asp:dropdownlist id="CboChallanYear" runat="server" CssClass="formlines" Width="60"></asp:dropdownlist>
									<asp:dropdownlist id="DrpStocode" runat="server" CssClass="formlines" Width="130px"></asp:dropdownlist>
									<asp:textbox id="txtChallanNo" Width="145px" runat="server" CssClass="formlines" ontextchanged="txtChallanNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;<asp:imagebutton 
                                        id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnTokenGo_Click" style="width: 18px"></asp:imagebutton></TD>
								<TD></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblDateofTr" runat="server" CssClass="mandatory">Date of Transaction</asp:label></TD>
								<TD style="WIDTH: 431px"><asp:textbox id="txtDateofTr" runat="server" CssClass="formlines" ReadOnly="True" AutoPostBack="True" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Funds_OtherReceipts.txtDateofTr')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A></TD>
								<TD><asp:label id="lblDoType" runat="server" CssClass="mandatory">DoType</asp:label></TD>
								<TD><asp:dropdownlist id="cboDOType" runat="server" CssClass="drptxt" AutoPostBack="True"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblDoCode" runat="server" CssClass="mandatory">DO Code</asp:label></TD>
								<TD style="WIDTH: 431px"><asp:textbox id="txtDOCode" runat="server" 
                                        CssClass="formlines" AutoPostBack="True" width="45px" onblur="chkbadchar(this);" MaxLength="5"></asp:textbox><asp:dropdownlist id="cboDrawingOfficer" runat="server" AutoPostBack="True" Width="200px" Font-Size="XX-Small"
										CssClass="drptxt" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist>
								</TD>
								<TD><asp:label id="lblName" runat="server" CssClass="mandatory">Remitter Name</asp:label></TD>
								<TD><asp:textbox id="txtName" runat="server" CssClass="formlines" Width="180px" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvName" runat="server" CssClass="validatemessage" ControlToValidate="txtName"
										Display="Dynamic" ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblType" runat="server" CssClass="mandatory"> Type</asp:label></TD>
								<TD style="WIDTH: 431px"><asp:dropdownlist id="cboType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
								<TD><asp:label id="lblFundsCode" runat="server" CssClass="mandatory" Visible="False">Funds Code</asp:label></TD>
								<TD><asp:textbox id="txtfundscode" runat="server" CssClass="formlines" AutoPostBack="True" width="45px"
										Visible="False" ontextchanged="txtfundscode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:dropdownlist id="cboFundsCode" runat="server" CssClass="drptxt" AutoPostBack="True" Width="100px"
										Visible="False" onselectedindexchanged="cboFundsCode_SelectedIndexChanged"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
								<TD style="WIDTH: 431px"><asp:textbox id="txtDPCode" runat="server" CssClass="formlines" AutoPostBack="True" Enabled="False" ontextchanged="txtDPCode_TextChanged" onblur="AssignSANo();"></asp:textbox><asp:requiredfieldvalidator id="rfvDPCode" runat="server" CssClass="validatemessage" ControlToValidate="txtDPCode"
										Display="Dynamic" ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
								<TD>&nbsp;</TD>
								<TD>&nbsp;</TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblSaNo" runat="server" CssClass="mandatory" Visible="False"> SA Number</asp:label></TD>
								<TD style="WIDTH: 431px"><asp:textbox id="txtSANo" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="3"
										Visible="False" ontextchanged="txtSANo_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD><asp:label id="lblSRCode" runat="server" CssClass="mandatory" Visible="False">SR Code</asp:label></TD>
								<TD><asp:textbox id="txtSRCode" runat="server" CssClass="formlines" Visible="False" ontextchanged="txtSRCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:label id="lblDPDescription" runat="server" CssClass="mandatory"></asp:label></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblRemarks" runat="server" CssClass="mandatory">Remarks</asp:label></TD>
								<TD style="WIDTH: 431px"><asp:textbox id="txtRemarks" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD><asp:label id="lblAmount" runat="server" CssClass="mandatory">Amount</asp:label></TD>
								<TD><asp:textbox id="txtAmount" runat="server" CssClass="formlines" Width="150px" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" CssClass="validatemessage" ControlToValidate="txtAmount"
										Display="Dynamic" ErrorMessage="Data Required"></asp:requiredfieldvalidator><asp:rangevalidator id="rngAmount" runat="server" CssClass="Validatemessage" ControlToValidate="txtAmount"
										Display="Dynamic" ErrorMessage="Data Incorrect" Type="Double" MaximumValue="9999999999" MinimumValue="1"></asp:rangevalidator></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" 
                                        Width="100px" Text="Save" onclick="btnSave_Click" 
                                        onclientclick="return checkSANo();"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnDelete" CssClass="formbuttons" Width="100px" Text="Delete" Visible="False"
										Runat="server" onclick="btnDelete_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnclear" runat="server" CssClass="formbuttons" CausesValidation="False" Width="100px"
										Text="Clear" onclick="btnclear_Click"></asp:button>&nbsp;&nbsp;
								 	<asp:Button id="btnAcceptChallan" runat="server" CssClass="formbuttons" 
                                        Text="Accept Challan" Width="100px" CausesValidation="False" 
                                        onclick="btnAcceptChallan_Click" Visible="False"></asp:Button>
								 </TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" CssClass="validatemessage" runat="server"></asp:label></TD>
							</TR>
						</table>
                     </panel>

                        <table id="pnlChallanAccept" width="98%" runat="server">
                          <tr>
                            <td align="left">  
                            <uc2:BankChallanAccept ID="BankChallanAccept1" runat="server" />                      
                                &nbsp;</td>
                          </tr>
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
