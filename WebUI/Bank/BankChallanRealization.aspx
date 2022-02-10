<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="BankChallanRealization.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Bank.BankChallanRealization" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Bank Challan Accept</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
		<script>
		function controlFocus()
		{
		  document.getElementById("txtChallanno").focus();
		}
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0" onload="controlFocus();" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="BankChallanAccept" method="post" runat="server">
        
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</tr>
				<tr>
					<td>
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td background="../images/menu_bg.gif">
									<table cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td class="menuoff"><A href="BankChallanAccept.aspx">Bank Challan - Entry</A></td>
											<td><IMG height="27" src="../images/menu_off.gif" width="28"></td>
											<td class="menuon"><A href="BankChallanRealization.aspx">Bank Challan Realization - 
													Entry</A></td>
											<td><IMG height="27" src="../images/menu_on.gif" width="28"></td>
											<td class="menuoff"><A href="BankScrollReport.aspx">Bank Challan - Report</A></td>
											<td><IMG height="27" src="../images/menu_off.gif" width="28"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
                    
                   
						<table cellSpacing="2" cellPadding="4" width="60%" border="0">
							<tr>
								<TD align="right"><asp:label id="lblChallanno" runat="server" CssClass="mandatory">Challan Number</asp:label></TD>
								<TD>
									<asp:DropDownList id="CboChallanYear" runat="server" CssClass="formlines" Width="100px"></asp:DropDownList><asp:textbox id="txtChallanno" runat="server" CssClass="formlines" Width="160px" MaxLength="15" ontextchanged="txtChallanno_TextChanged" onblur="chkbadchar(this);"></asp:textbox>
									&nbsp;&nbsp;<asp:imagebutton id="ibtnTokenGo" runat="server" CausesValidation="False" ImageUrl="../Images/go.gif"
										ImageAlign="AbsBottom" onclick="ibtnTokenGo_Click"></asp:imagebutton><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
										ControlToValidate="txtChallanno" Display="Dynamic"></asp:requiredfieldvalidator></TD>
							</tr>
							<tr>
								<td class="mandatory" align="right">Realization Date</td>
								<td>
									<asp:textbox id="txtTransDate" runat="server" CssClass="formlines" MaxLength="10"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('BankChallanAccept.txtTransDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
									<asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ControlToValidate="txtTransDate"
										ErrorMessage="Date Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="revTranDate" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtTransDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
								</td>
							</tr>
							<tr>
								<TD colSpan="2"><asp:label id="lblMessage" CssClass="validatemessage" Runat="server" ForeColor="Red"></asp:label></TD>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="top" align="left" height="100%" style="PADDING-LEFT:20px">
						<asp:panel id="pnlBankChallan" Runat="server" Visible="False">
							<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="98%" border="0">
								<TR>
									<TD class="lbltext" width="20%">Challan Number :</TD>
									<TD>
										<asp:Label id="clblChallanNo" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
									<TD class="lbltext">D.O.Code :</TD>
									<TD>
										<asp:Label id="clblDOCode" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD class="lbltext">Remitter Name :</TD>
									<TD>
										<asp:Label id="clblRemittername" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
									<TD class="lbltext">DP Code :</TD>
									<TD>
										<asp:Label id="clbldpcode" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD class="lbltext">Amount (Rs.) :</TD>
									<TD>
										<asp:Label id="clblAmount" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
									<TD class="lbltext">Date :</TD>
									<TD>
										<asp:Label id="clbldate" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD class="lbltext">Purpose :</TD>
									<TD colSpan="2">
										<asp:Label id="clblRemarks" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD class="lbltext">Payment Mode :</TD>
									<TD colSpan="3">
										<asp:RadioButtonList id="radPaymentMode" CssClass="lbldisplay" Runat="server" RepeatDirection="Horizontal"
											Enabled="False">
											<asp:ListItem Value="0" Selected="True">Cash</asp:ListItem>
											<asp:ListItem Value="1">DD</asp:ListItem>
											<asp:ListItem Value="2">Cheque</asp:ListItem>
										</asp:RadioButtonList></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<HR>
									</TD>
								</TR>
								<TR>
									<TD align="center" colSpan="4">
										<TABLE cellSpacing="2" cellPadding="2" width="50%" align="center" border="0">
											<TR>
												<TD>
													<asp:button id="btnIgnore" tabIndex="7" runat="server" CssClass="formbuttons" Width="110px"
														CausesValidation="False" Visible="False" Text="Ignore" onclick="btnIgnore_Click"></asp:button></TD>
												<TD>
													<asp:button id="btnAccept" tabIndex="7" runat="server" CssClass="formbuttons" Width="110px"
														Text="Save" onclick="btnAccept_Click"></asp:button></TD>
												<TD>
													<asp:button id="btnClear" tabIndex="7" runat="server" CssClass="formbuttons" Width="110px" CausesValidation="False"
														Text="Cancel" onclick="btnClear_Click"></asp:button></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
						</asp:panel>
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
