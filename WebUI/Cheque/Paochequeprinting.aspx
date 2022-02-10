<%@ Register TagPrefix="uc1" TagName="ChequeMenus" Src="../UserControls/ChequeMenus.ascx" %>
<%@ Page language="c#" Codebehind="Paochequeprinting.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.Paochequeprinting" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Cheque Printing</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="chequeprinting" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table2" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" align="center" border="0">
				<TR>
					<TD><uc1:chequemenus id="ChequeMenus1" runat="server"></uc1:chequemenus></TD>
				</TR>
				<tr>
					<td vAlign="top" height="100%">
						<table class="parabr" cellSpacing="0" cellPadding="2" width="70%" align="center" border="0">
							<tr>
								<td class="formtitle" align="center" colSpan="3"><asp:label id="frmtitle" runat="server" CssClass="formtitle">Generate Cheque For Printing</asp:label></td>
							</tr>
							<TR>
								<TD colSpan="3"><asp:button id="btnGenerate" runat="server" CssClass="formbuttons" Text="Generate" Width="100px" onclick="btnGenerate_Click"></asp:button></TD>
							</TR>
							<tr>
								<td colSpan="2">
									<div id="chqdisplay" style="DISPLAY:block">
										<asp:panel id="pnlPrintPass" Runat="server" Visible="False">
											<TABLE border="0" cellSpacing="0" cellPadding="2" width="100%" align="center">
												<TR>
													<TD><INPUT id="Button1" class="formbuttons" onclick="SendTextForPrinting()" value=" Print Cheque  "
															type="button" name="Button1" runat="server"></TD>
												</TR>
												<TR>
													<TD class="mandatory">Cheque Preview</TD>
												</TR>
												<TR>
													<TD>
														<DIV style="DISPLAY: block">
															<asp:textbox id="txtChequetext" Width="100%" Runat="server" Height="95px" Enabled="True" Rows="10"
																Wrap="False" ReadOnly="True" TextMode="MultiLine"></asp:textbox><BR>
															<asp:Label id="lblChequetext" Runat="server"></asp:Label></DIV>
													</TD>
												</TR>
											</TABLE>
										</asp:panel>
									</div>
								</td>
							</tr>
							<TR>
								<TD colSpan="3"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
		<script language="javascript">		
		function SendTextToPrinter()
		{
			var prtobj;			
			prtobj = new ActiveXObject("RawPrinter.clsPrintLib");			
			prtobj.SendTextToSelectedPrinter(document.getElementById("txtChequetext").value);
			prtobj = null;
		}
		function SendTextForPrinting()
		{
			var prtobject;			
			var retvalue;
			prtobject = new ActiveXObject("RawDataPrinter.clsPrintLib");			
			//prtobject.SendTextToPrinter(document.getElementById("txtChequetext").value);
			alert(document.getElementById("lblChequetext").innerText);			
			retvalue = prtobject.SendBytesToPrinter(document.getElementById("lblChequetext").innerText);			
			document.getElementById("txtChequetext").value = "";
			document.getElementById("chqdisplay").style.display = "none";
			prtobject = null;
		}
		</script>
	</body>
</HTML>
