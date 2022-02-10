<%@ Page language="c#" Codebehind="ChequeScrollReport.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Input.chequeScrollReport" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
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
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="BankScrollReport" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<TD colspan="2"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</tr>
				<tr>
					<TD colspan="2" align="center"><asp:LinkButton id="LnkBack" tabIndex="-1" CssClass="mmenuheadstyle" runat="server" CausesValidation="False"
							Width="250px" onclick="LnkBack_Click">Back to Cheque Entry</asp:LinkButton></TD>
				</tr>
				<tr>
					<td align="left" valign="top" height="100%" style="PADDING-LEFT:20px;PADDING-TOP:20px">
						<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="100%" border="0" class="brdr">
							<TR class="formtitle">
								<TD align="center" colSpan="3"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">Cheque - Report</asp:label></TD>
							</TR>
							<tr>
								<TD align="center" colspan="2"><asp:label id="lblChallanno" runat="server" CssClass="mandatory">Transaction Date (dd/mm/yyyy):</asp:label>
									<asp:textbox id="txtTransdate" runat="server" CssClass="formlines" Width="125px" MaxLength="7"></asp:textbox>&nbsp;&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
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
							<tr>
								<td vAlign="top" align="center" height="100%">
									<asp:panel id="pnlBankScrollreport" Runat="server" Visible="False">
										<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
											<TR>
												<TD>
													<asp:TextBox id="txtPrintContent" Runat="server" Wrap="False" Rows="15" TextMode="MultiLine"
														ReadOnly="True" Columns="92"></asp:TextBox></TD>
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
						</TABLE>
					</td>
				</tr>
				<tr>
					<td colspan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD colspan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
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
