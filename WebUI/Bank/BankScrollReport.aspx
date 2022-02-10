<%@ Page language="c#" Codebehind="BankScrollReport.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Bank.BankScrollReport" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Bank Scroll Report</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="BankScrollReport" method="post" runat="server">
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
											<td class="menuoff"><A href="BankChallanRealization.aspx">Bank Challan Realization - 
													Entry</A></td>
											<td><IMG height="27" src="../images/menu_off.gif" width="28"></td>
											<td class="menuon"><A href="BankScrollReport.aspx">Bank Challan - Report</A></td>
											<td><IMG height="27" src="../images/menu_on.gif" width="28"></td>
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
								<TD align="right"><asp:label id="lblChallanno" runat="server" CssClass="mandatory">Transaction Date (dd/mm/yyyy):</asp:label></TD>
								<TD><asp:textbox id="txtTransdate" runat="server" CssClass="formlines" Width="125px" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('BankScrollReport.txtTransdate');"><IMG src="../Images/show-calendar.gif" border="0"></A>&nbsp;&nbsp;<asp:button id="btnAccept" tabIndex="7" runat="server" CssClass="formbuttons" Width="110px"
										Text="Generate" onclick="btnAccept_Click"></asp:button><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
										ControlToValidate="txtTransdate" Display="Dynamic"></asp:requiredfieldvalidator>
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtTransdate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                        </TD>
							</tr>
							<tr>
								<TD colSpan="2"><asp:label id="lblMessage" CssClass="validatemessage" Runat="server" ForeColor="Red"></asp:label></TD>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<asp:panel id="pnlBankScrollreport" Runat="server" Visible="False">
							<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
								<TR>
									<TD>
										<asp:TextBox id="txtPrintContent" Runat="server" Columns="92" ReadOnly="True" TextMode="MultiLine"
											Rows="15" Wrap="False"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD align="right"><INPUT class="formbuttons" style="WIDTH: 100px" onclick="SendTextForPrint();" type="button"
											value="  Print Report ">
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
		<SCRIPT language="javascript">
		function BankScrollreport()
		{
			var obj;			
			obj = new ActiveXObject("TitleMessage.AlertBox");
			obj.Samp = document.getElementById("txtPrintContent").value;
			obj.StartPrinting(document.getElementById("txtPrintContent").value);
		}
		function SendTextToPrinter()
		{
			var prtobj;			
			prtobj = new ActiveXObject("RawPrinter.clsPrintLib");			
			prtobj.SendTextToSelectedPrinter(document.getElementById("txtPrintMsg").value);
		}
		function SendTextForPrint()
		{
			var prtobject;			
			prtobject = new ActiveXObject("RawPrinter.clsPrintLib");			
			prtobject.SendTextToPrinter(document.getElementById("txtPrintMsg").value);
		}
		</SCRIPT>
	</body>
</HTML>
