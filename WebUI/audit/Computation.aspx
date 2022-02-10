<%@ Page language="c#" Codebehind="Computation.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Computation" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bank" Src="../UserControls/Bank.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Computation</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script language="javascript">
		function calculateGrossAmoount()
		{
			var netamt;
			var deductionamt;
			netamt = document.getElementById("BillInfo1_txtBillAmount").value;
			deductionamt = document.getElementById("txtDeductions").value;
			if(deductionamt == "0")
			{
			    document.getElementById("txtGrossAmount").value = netamt;				
			}		
			else
			{
			    document.getElementById("txtGrossAmount").value = parseInt(netamt) + parseInt(deductionamt);
			}
			 
		}
		</script>
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0" onload="calculateGrossAmoount()">
		<form id="Computation" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
                    <asp:Panel ID="pnlControls" Runat="server" >
						<table border="0" class="parabr" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								
									<TD colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
							<TR>
								<TD width="15%" align="left"><asp:label id="lblPpoNo" runat="server" CssClass="mandatory">PPO No</asp:label></TD>
								<TD width="35%" align="left"><asp:textbox id="txtPpoNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="15" TabIndex="1" ontextchanged="txtPpoNo_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvPPONo" runat="server" Display="Dynamic" ControlToValidate="txtPpoNo" ErrorMessage="Data Required"
										Width="106px" CssClass="validatemessage"></asp:requiredfieldvalidator></TD>
								<TD width="15%" align="left"><asp:label id="lblName" runat="server" CssClass="mandatory">Name</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtName" runat="server" CssClass="formlines" MaxLength="40" onblur="chkbadchar(this);" TabIndex="2"></asp:textbox><asp:requiredfieldvalidator id="rfvName" runat="server" Display="Dynamic" ControlToValidate="txtName" ErrorMessage="Data Required"
										CssClass="validatemessage"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD width="15%" align="left"><asp:label id="lblOriginalPension" runat="server" CssClass="mandatory">Original Pension</asp:label></TD>
								<TD width="35%" align="left"><asp:textbox id="txtOriginalPension" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="10"></asp:textbox><asp:requiredfieldvalidator id="rfvOriginalPension" runat="server" Display="Dynamic" ControlToValidate="txtOriginalPension"
										ErrorMessage="Data Required" Width="98px" CssClass="validatemessage"></asp:requiredfieldvalidator><asp:comparevalidator id="cfvOriginalPension" runat="server" Display="Dynamic" ControlToValidate="txtOriginalPension"
										ErrorMessage="Should be number" Type="Double" Operator="DataTypeCheck" CssClass="validatemessage"></asp:comparevalidator></TD>
								<TD width="15%" align="left"><asp:label id="lblCommutedPortion" runat="server" CssClass="mandatory" Width="136px">Commuted Portion</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtCommutedPortion" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvCommutationPension" runat="server" Display="Dynamic" ControlToValidate="txtCommutedPortion"
										ErrorMessage="Data Required" Width="89px" CssClass="validatemessage"></asp:requiredfieldvalidator><asp:comparevalidator id="cvfCommutedPension" runat="server" Display="Dynamic" ControlToValidate="txtCommutedPortion"
										ErrorMessage="Should be a number" Type="Double" Operator="DataTypeCheck" CssClass="validatemessage"></asp:comparevalidator></TD>
							</TR>
							<tr>
								<td align="left"><asp:label id="lblDeduction" runat="server" CssClass="mandatory">Deductions</asp:label></td>
								<td align="left"><asp:textbox id="txtDeductions" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="10">0</asp:textbox><asp:rangevalidator id="rngtxtdeductions" runat="server" CssClass="validatemessage" ErrorMessage="Incorrect Data"
										Display="Dynamic" ControlToValidate="txtDeductions" MinimumValue="0" MaximumValue="99999999" Type="Integer" ForeColor=" "></asp:rangevalidator></td>
								<td class="mandatory" align="left">Gross Amount</td>
								<td><asp:textbox id="txtGrossAmount" runat="server" Enabled="False" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);">0</asp:textbox></td>
							</tr>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="btnSave_Click"></asp:button>&nbsp;
									<asp:ImageButton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" CausesValidation="False" onclick="ImageButton1_Click"></asp:ImageButton></TD>
							</TR>
							<tr>
								<td colspan="4"><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></td>
							</tr>
							<TR>
								<TD colSpan="4"><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder></TD>
							</TR>
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</table>
						</asp:Panel>
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
