<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PayCR_OR" Src="../UserControls/PayCR_OR.ascx" %>
<%@ Page language="c#" Codebehind="PayBillInput.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Input.PayBillInput" %>
<%@ Register TagPrefix="uc1" TagName="TotalDeduLabel" Src="../UserControls/TotalDeduLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PayDeductions" Src="../UserControls/PayDeductions.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PayBreakup" Src="../UserControls/PayBreakup.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Input" Src="../UserControls/Input.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>eKaruvoolam - PayBill Input</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">

         <script type="text/jscript" language="javascript">

             function AssignSANo() {

                 var DPCode = document.getElementById('Input1_txtDPCode').value
                 if (DPCode.toString() == '8031') {
                     document.getElementById('Input1_txtSANo').value = '27C'                     
                 }
             }


             function checkSANo() {

                 if (document.getElementById('Input1_txtSANo').value != "") {

                     var DPCode = document.getElementById('Input1_txtDPCode').value

                     if (DPCode.toString().substring(0, 4) == '8031') {
                         if (document.getElementById('Input1_txtSANo').value == '27C') {
                             return true;
                         }
                         else {
                             alert("SA Number should be 27C for DPCode 8031");
                             return false;
                         }
                     }


                     if (DPCode.toString().substring(0, 4) == '8009') {
                         if (document.getElementById('Input1_txtSANo').value != '27C') {
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
                     return true;
                 }
             }            

    </script>

	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<form id="PayBillInput" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:Input id="Input1" runat="server"></uc1:Input></TD>
				</TR>
				<tr>
					<td align="center" valign="top" height="100%">
						<asp:Panel ID="pnlControls" Runat="server">
							<TABLE cellSpacing="0" cellPadding="2" width="100%" border="0">
								<TR>
									<TD>
										<TABLE cellSpacing="0" cellPadding="0" width="98%" border="1">
											<TR>
												<TD vAlign="top" width="40%">
													<uc1:PayBreakup id="PayBreakup1" runat="server"></uc1:PayBreakup></TD>
												<TD vAlign="top" width="45%">
													<uc1:PayDeductions id="PayDeductions1" runat="server"></uc1:PayDeductions></TD>
												<TD vAlign="top" width="15%">
													<uc1:PayCR_OR id="PayCR_OR1" runat="server"></uc1:PayCR_OR></TD>
											</TR>
											<TR>
												<TD align="right" colSpan="3">
													<asp:Label id="lblNet" Runat="server"></asp:Label>
													<uc1:TotalDeduLabel id="TotalDeduLabel1" runat="server"></uc1:TotalDeduLabel>
													<asp:Label id="lblTotal" Runat="server"></asp:Label></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblMessage" runat="server" ForeColor="Blue"></asp:Label></TD>
								</TR>
								<TR>
									<TD>
										<asp:Button id="btnSave" runat="server" Text="Save" CssClass="formbuttons" CausesValidation="False"
											Width="100px" onclick="btnSave_Click" onclientclick="return checkSANo();"></asp:Button></TD>
								</TR>
							</TABLE>
						</asp:Panel>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td><br>
						<uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
