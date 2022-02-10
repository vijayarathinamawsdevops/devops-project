<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="PassOrder.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.PassOrder" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Pass Order</title>
		<meta content="True" name="vs_showGrid">
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/printJS.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body id="Audit_Wages" leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="PassOrder" method="post" runat="server">
        
			<TABLE class="tableleftbgcolor" height="100%" cellSpacing="0" cellPadding="0" width="100%"
				border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center">
                     
                     
                   
                    <asp:panel id="pnlControls" Runat="server">
							<TABLE class="brdr" cellSpacing="1" cellPadding="2" width="98%" border="0">
								<TR class="formtitle">
									<TD align="center" colSpan="4">
										<asp:label id="lblFormTitle" runat="server" CssClass="formtitle">Pass Order Preparation</asp:label></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label></TD>
									<TD>
										<asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtTokenNo_TextChanged"></asp:textbox></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
									<TD>
										<asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" ReadOnly="True"></asp:textbox></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblNPA_NPB" runat="server" CssClass="mandatory">NPA / NPB</asp:label></TD>
									<TD>
										<asp:dropdownlist id="cboNPA_NPB" runat="server" CssClass="drptxt" 
                                            width="165px" AutoPostBack="True"></asp:dropdownlist></TD>
									<TD>
										<asp:label id="lblDate" runat="server" CssClass="mandatory">Date</asp:label></TD>
									<TD>
										<asp:textbox id="txtDate" runat="server" CssClass="formlines" MaxLength="10" Width="110px" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('txtDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
									<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblByCash" runat="server" CssClass="mandatory">Cheque Amount</asp:label></TD>
									<TD>
										<asp:textbox id="txtAmountByCash" runat="server" CssClass="formlines" onblur="chkbadchar(this);">0</asp:textbox>
										<%--<asp:regularexpressionvalidator id="revAmountByCash" runat="server" CssClass="validatemessage" ErrorMessage="Data Incorrect"
											ValidationExpression="^\d+$" ControlToValidate="txtAmountByCash" Display="Dynamic"></asp:regularexpressionvalidator>--%></TD>
									<TD>
										<asp:label id="lblTransferAmount" runat="server" CssClass="mandatory">Transfer Amount</asp:label></TD>
									<TD>
										<asp:textbox id="txtAmountByTransfer" runat="server" CssClass="formlines" onblur="chkbadchar(this);">0</asp:textbox>
										<%--<asp:regularexpressionvalidator id="revtxtTransfer" runat="server" CssClass="validatemessage" ErrorMessage="Data Incorrect"
											ValidationExpression="^\d+$" ControlToValidate="txtAmountByTransfer" Display="Dynamic"></asp:regularexpressionvalidator>--%></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblNumberOfCheques" runat="server" CssClass="mandatory">Total Number of Cheques</asp:label></TD>
									<TD>
										<asp:textbox id="txtTotalCheques" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
										<%--<asp:rangevalidator id="rvTotalCheques" runat="server" CssClass="validatemessage" ErrorMessage="Data  must be between 1 - 999"
											ControlToValidate="txtTotalCheques" Display="Dynamic" MinimumValue="0" MaximumValue="999" Type="Integer"></asp:rangevalidator>--%></TD>
									<TD>
										<asp:label id="Label1" runat="server" CssClass="mandatory">NSD</asp:label></TD>
									<TD>
										<asp:TextBox id="txtNSD" runat="server" CssClass="formlines" Width="83px" onblur="chkbadchar(this);"></asp:TextBox></TD>
								</TR>
							</TABLE>
						</asp:panel></td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="100%">
     
						<table cellSpacing="0" cellPadding="0" width="98%" border="0">
							<TR>
								<TD vAlign="top"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button>
                                    
                                </TD>
								<TD><asp:panel id="pnlPrint" Runat="server">
                            <asp:button id="btnPrint" runat="server" CssClass="formbuttons" Text="Prepare Pass Order" CausesValidation="False" onclick="btnPrint_Click"></asp:button>&nbsp;&nbsp; 
            </asp:panel></TD>
								<td colSpan="2"><asp:panel id="pnlPrintPass" Runat="server"><INPUT class="formbuttons" onclick="SendTextForPrinting()" type="button" value="Print Pass Order">
									</asp:panel></td>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblPassOrder" runat="server"></asp:label><asp:textbox id="todaydate" runat="server" Visible="False"></asp:textbox></TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<div style="DISPLAY: none"><asp:textbox id="txtPrintMsg" Runat="server" CssClass="passordertxt" Width="520px" Wrap="False"
											Height="15px" TextMode="MultiLine"></asp:textbox><br>
										<asp:label id="lblPassordertext" Runat="server"></asp:label></div>
								</TD>
							</TR>
						</table> 
   
					</td>
				</tr>
				<TR>
					<td style="HEIGHT: 18px" colSpan="4">&nbsp;
						<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1" Font-Bold="True"></asp:label>&nbsp;</td>
				</TR>
				<TR>
					<TD style="HEIGHT: 14px" colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage" Font-Bold="True"></asp:label></TD>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
		<script language="javascript">		
		function SendTextToPrinter()
		{
			var prtobj;			
			prtobj = new ActiveXObject("RawPrinter.clsPrintLib");			
			prtobj.SendTextToSelectedPrinter(document.getElementById("txtPrintMsg").value);
			prtobj = null;
		}
		function SendTextForPrinting()
		{
			var prtobject;			
			prtobject = new ActiveXObject("RawPrinter.clsPrintLib");			
			//alert(document.getElementById("lblPassordertext").innerText);
			//document.getElementById("txtPrintMsg").value = document.getElementById("lblPassordertext").innerText;			
			//prtobject.SendTextToPrinter(document.getElementById("txtPrintMsg").value);
		    prtobject.SendTextToPrinter(document.getElementById("lblPassordertext").innerText);
		    prtobject = null;		
		}
		</script>
	</body>
</HTML>
