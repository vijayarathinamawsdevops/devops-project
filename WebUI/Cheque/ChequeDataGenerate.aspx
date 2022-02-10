<%@ Page language="c#" Codebehind="ChequeDataGenerate.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Cheque.ChequeDataGenerate" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ChequeMenus" Src="../UserControls/ChequeMenus.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Cheque Data Generation</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
		<script>
		function setControlFocus()
		{
			document.getElementById("txtChqalphano").focus();
		}
		history.forward();
		</script>
	</HEAD>
	<body id="Cheque_ChequePrepare" MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="ChequeDataGenerate" method="post" runat="server">
			<TABLE id="Table1" width="100%" border="0" class="tableleftbgcolor" cellpadding="0" cellspacing="0"
				height="100%">
				<tr>
					<td><uc1:ChequeMenus id="ChequeMenus1" runat="server"></uc1:ChequeMenus></td>
				</tr>
				<tr>
					<td valign="top" height="100%">
						<table width="90%" cellpadding="6" cellspacing="1" border="0" align="center" class="parabr">
							<tr>
								<td colspan="2" align="center" class="formtitle"><asp:Label id="frmtitle" runat="server" CssClass="formtitle">Cheque Preparation Details</asp:Label></td>
							</tr>
							<TR>
								<TD align="right" width="40%"><asp:Label id="lblNoofCheques" runat="server" CssClass="mandatory">Number of Cheques needed for Print</asp:Label></TD>
								<TD><asp:Label id="lblNcheques" runat="server" CssClass="mandatory">Label</asp:Label></TD>
							</TR>
							<TR>
								<TD align="right"><asp:Label id="lblChequeDate" runat="server" Width="112px" CssClass="mandatory">Cheque Date</asp:Label></TD>
								<TD><asp:Label id="lblCurrentDate" runat="server" CssClass="mandatory"></asp:Label></TD>
							</TR>
							<tr>
								<td class="mandatory" align="right" style="display: none">Cheque Starting Alphabet</td>
								<TD style="display: none">
									<asp:TextBox id="txtChqalphano" runat="server" CssClass="formlines" MaxLength="2" Width="40px" onblur="chkbadchar(this);"></asp:TextBox>
								</TD>
							</tr>
							<TR>
								<TD align="right"><asp:Label id="lblChequeStartNo" runat="server" CssClass="mandatory">Cheque Starting Number</asp:Label></TD>
								<TD>
									<asp:TextBox id="txtChequeStartNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator ID="reqchstart" Runat="server" 
                                        CssClass="validatemessage" ControlToValidate="txtChequeStartNo"
										ErrorMessage="Data Required"></asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD align="right"><asp:Label id="lblChequeEndNo" runat="server" CssClass="mandatory">Cheque Ending Number</asp:Label></TD>
								<TD>
									<asp:TextBox id="txtChequeEndNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator ID="Requiredfieldvalidator1" 
                                        CssClass="validatemessage" Runat="server" ControlToValidate="txtChequeEndNo"
										ErrorMessage="Data Required"></asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<td>&nbsp;</td>
								<TD align="left"><asp:Button id="BtnGenerate" runat="server" CssClass="formbuttons" Text="Generate" Width="150px" onclick="BtnGenerate_Click"></asp:Button></TD>
							</TR>
							<tr>
								<td colspan="2">
									<asp:CompareValidator ID="compchstart" Runat="server" CssClass="validatemessage" ControlToCompare="txtChequeEndNo"
										ControlToValidate="txtChequeStartNo" Operator="LessThanEqual" ErrorMessage="Start Number should be less than the end number"></asp:CompareValidator>
									<asp:CompareValidator ID="compch" Runat="server" CssClass="validatemessage" ControlToCompare="txtChequeStartNo"
										ControlToValidate="txtChequeEndNo" Operator="GreaterThanEqual" ErrorMessage="End Number should be greater than the start number"></asp:CompareValidator>
								</td>
							</tr>
							<TR>
								<TD colSpan="2" align="middle"><asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
