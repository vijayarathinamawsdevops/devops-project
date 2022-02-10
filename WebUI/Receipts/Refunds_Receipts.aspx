<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ReceiptDetails" Src="../UserControls/ReceiptDetails.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="Refunds_Receipts.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Receipts.Refunds_Receipts" SmartNavigation="True" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StampDeductions" Src="../UserControls/StampDeductions.ascx" %>
<%@ Register src="../UserControls/BankChallanAccept.ascx" tagname="BankChallanAccept" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD runat="server">
		<title>Refunds Receipts Entry</title>
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

//                var DPCode = document.getElementById('txtDPCode').value               
//                if (DPCode.toString() == '8031') {
//                    document.getElementById('txtSANo').value = '27C'
//                    document.getElementById('txtSRNumber').value = '27C'                    
//                }
            }


            function checkSANo() {

                if (document.getElementById('txtSANo').value != "") {
                    var DPCode = document.getElementById('txtDPCode').value

//                    if (DPCode.toString() == '8031') {
//                        if (document.getElementById('txtSANo').value == '27C') {
//                            return true;
//                        }
//                        else {
//                            alert("SA No. should be 27C for DPCode 8031");
//                            return false;
//                        }
//                    }


                    if (DPCode.toString() == '8009') {
                        if (document.getElementById('txtSANo').value != '27C') {
                            return true;
                        }
                        else {
                            alert("SA No. should not be 27C for DPCode 8009");
                            return false;
                        }
                    }

                    return true;
                }
                else if (confirm("SA Number is empty, do u want to continue?")) {

                    var DPCode = document.getElementById('txtDPCode').value

//                    if (DPCode.toString() == '8031') {
//                        if (document.getElementById('txtSANo').value == '27C') {
//                            return true;
//                        }
//                        else {
//                            alert("SA No. should be 27C for DPCode 8031");
//                            return false;
//                        }
//                    }


                    if (DPCode.toString() == '8009') {
                        if (document.getElementById('txtSANo').value != '27C') {
                            return true;
                        }
                        else {
                            alert("SA No. should not be 27C for DPCode 8009");
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
	<body topmargin="0" rightmargin="0" leftmargin="0">
		<form id="Refunds_Receipts" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<TR>
					<TD class="formtitle" align="center"><asp:Label id="lblHeader" runat="server" CssClass="formtitle"></asp:Label></TD>
				</TR>
				<TR>
					<td vAlign="top" align="center" height="100%">

                   <panel id="pnlChallanEntry" runat="server">
						<table cellSpacing="2" cellPadding="1" width="98%" border="0" 
                            style="text-align: left">
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblChallanNo" runat="server" CssClass="mandatory">Challan Number</asp:label></TD>
								<TD width="431" style="WIDTH: 431px"><asp:dropdownlist id="CboChallanYear" runat="server" CssClass="formlines" Width="60"></asp:dropdownlist>
									<asp:dropdownlist id="DrpStocode" runat="server" CssClass="formlines" Width="130px"></asp:dropdownlist>
									<asp:textbox id="txtChallanNo" Width="145px" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;<asp:imagebutton id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnTokenGo_Click"></asp:imagebutton></TD>
								<TD></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD><asp:Label id="lblDateofTr" runat="server" CssClass="mandatory">Date of Transaction</asp:Label></TD>
								<TD>
									<asp:textbox id="txtDateofTr" runat="server" CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);"></asp:textbox>
									<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Refunds_Receipts.txtDateofTr')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
								</TD>
								<TD><asp:label id="lblType" runat="server" CssClass="mandatory"> Type</asp:label></TD>
								<TD><asp:dropdownlist id="cboType" runat="server" CssClass="drptxt" onselectedindexchanged="cboType_SelectedIndexChanged"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 1px">
									<asp:label id="lblDeposit" runat="server" CssClass="mandatory">Whether Deposit</asp:label></TD>
								<TD style="HEIGHT: 1px">
									<asp:dropdownlist id="cboYesNo" runat="server" CssClass="drptxt" 
                                        AutoPostBack="True" onselectedindexchanged="cboYesNo_SelectedIndexChanged">
                                         <asp:ListItem Value="N">No</asp:ListItem>
                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                         
                                    </asp:dropdownlist></TD>
								<TD style="HEIGHT: 1px"><asp:label id="lblDoCode" runat="server" CssClass="mandatory">DO Code</asp:label></TD>
								<TD style="HEIGHT: 1px"><asp:textbox id="txtDOCode" runat="server" 
                                        CssClass="formlines" AutoPostBack="True" width="45px" 
                                        ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);" MaxLength="5"></asp:textbox><asp:dropdownlist id="cboDrawingOfficer" runat="server" AutoPostBack="True" Width="200px" Font-Size="XX-Small"
										CssClass="drptxt" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD><asp:label id="lblName" runat="server" CssClass="mandatory">Remitter Name</asp:label></TD>
								<TD><asp:textbox id="txtName" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvRemitter" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtName" Display="Dynamic"></asp:requiredfieldvalidator>
								</TD>
								<TD>
									<asp:label id="lblDOType" runat="server" CssClass="mandatory">DO Type</asp:label></TD>
								<TD>
									<asp:dropdownlist id="cboDOType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD><asp:label id="lblDepositType" runat="server" CssClass="mandatory">Deposit Type</asp:label></TD>
								<TD><asp:dropdownlist id="cboDepositType" runat="server" CssClass="drptxt" 
                                        AutoPostBack="True" Width="400px"></asp:dropdownlist>
								</TD>
								<TD>
									<asp:label id="lblAuth" runat="server" CssClass="mandatory">Refunding Authority</asp:label></TD>
								<TD>
									<asp:textbox id="txtAuth" runat="server" CssClass="formlines" Enabled="False" 
                                        ontextchanged="txtSRNumber_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD><asp:label id="lblDepositPlace" runat="server" CssClass="mandatory">Place Of Deposit</asp:label></TD>
								<TD><asp:textbox id="txtDepositPlace" runat="server" CssClass="formlines" 
                                        Enabled="False" ontextchanged="txtSRNumber_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD>
									<asp:label id="lblPurpose" runat="server" CssClass="mandatory" 
                                        DESIGNTIMEDRAGDROP="140">Purpose</asp:label></TD>
								<TD>
									<asp:textbox id="txtPurpose" runat="server" CssClass="formlines" 
                                        Enabled="False" ontextchanged="txtSRNumber_TextChanged" TextMode="MultiLine" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Challan Amount</asp:label></TD>
								<TD><asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" 
                                        MaxLength="15" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvAmount" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtBillAmount" Display="Dynamic"></asp:requiredfieldvalidator>
                                    <asp:rangevalidator id="rngAmount" runat="server" CssClass="validatemessage" ErrorMessage="Data Incorrect"
										ControlToValidate="txtBillAmount" Display="Dynamic" Type="Double" MaximumValue="999999999999" 
                                        MinimumValue="1"></asp:rangevalidator></TD>
								<TD>
									<asp:label id="lblDPCode" runat="server" CssClass="mandatory" DESIGNTIMEDRAGDROP="140">DP Code Major head (4 Digit Only)</asp:label></TD>
								<TD>
									<asp:textbox id="txtDPCode" runat="server" CssClass="formlines" AutoPostBack="True" Width="40px"
										MaxLength="4" ontextchanged="txtDPCode_TextChanged" onblur="AssignSANo();"></asp:textbox>
									<asp:requiredfieldvalidator id="rfvDpCode" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDPCode"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="revtxtDPCode" runat="server" CssClass="validatemessage" ControlToValidate="txtDPCode"
										ErrorMessage="Data Incorrect" ValidationExpression="[0-9]{4}"></asp:regularexpressionvalidator></TD>
							</TR>
							<TR>
								<TD>
									<asp:label id="lblVehicleNumber" runat="server" CssClass="mandatory">Vehicle Number</asp:label></TD>
								<TD>
									<asp:textbox id="txtVehicleNumber" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD><asp:label id="lblDepositChallanNo" runat="server" CssClass="mandatory">Deposit Challan Number</asp:label></TD>
								<TD><asp:textbox id="txtDepositNumber" runat="server" CssClass="formlines" MaxLength="6" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD><asp:label id="lblSaNo" runat="server" CssClass="mandatory">SA No.</asp:label></TD>
								<TD><asp:textbox id="txtSANo" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="3" ontextchanged="txtSANo_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD><asp:label id="lblSRNumber" runat="server" CssClass="mandatory">Service SR Number</asp:label></TD>
								<TD><asp:textbox id="txtSRNumber" runat="server" CssClass="formlines" Enabled="False" ontextchanged="txtSRNumber_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<td colspan="4" align="left"><br>
									<table cellSpacing="1" cellPadding="1" width="60%" border="0" class="parabr">
										<tr>
											<td valign="top" width="50%"><uc1:receiptdetails id="ReceiptDetails1" runat="server"></uc1:receiptdetails></td>
										</tr>
										<tr>
											<td valign="top" width="50%"><uc1:stampdeductions id="StampDeductions1" runat="server"></uc1:stampdeductions></td>
										</tr>
									</table>
									
									<br>
								</td>
							</TR>
							<TR>
								<TD colspan="4">
									<asp:button id="btnSave" runat="server" Text="Save" CssClass="formbuttons" 
                                        Width="100px" onclick="btnSave_Click" onclientclick="return checkSANo();"></asp:button>&nbsp;&nbsp;&nbsp;
									<asp:button id="btnDelete" runat="server" Text="Delete" CssClass="formbuttons" Width="100px"
										Visible="False" onclick="btnDelete_Click"></asp:button>&nbsp;&nbsp;&nbsp;
									<asp:Button id="btnclear" runat="server" CssClass="formbuttons" Text="Clear" Width="100px" CausesValidation="False" onclick="btnclear_Click"></asp:Button>
								&nbsp;&nbsp;
								 	<asp:Button id="btnAcceptChallan" runat="server" CssClass="formbuttons" 
                                        Text="Accept Challan" Width="100px" CausesValidation="False" 
                                        onclick="btnAcceptChallan_Click" Visible="False"></asp:Button>
								 </TD>
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
</HTML>
