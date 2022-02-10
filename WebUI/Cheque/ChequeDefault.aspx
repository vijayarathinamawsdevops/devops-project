<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="ChequeDefault.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Cheque.ChequeDefault" %>
<%@ Register TagPrefix="uc1" TagName="ChequeMenus" Src="../UserControls/ChequeMenus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Cheque Main Operation</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script>
			function setControlFocus()
			{
			  document.getElementById("cboOperation").focus();
			}
		</script>
	</HEAD>
	<body topmargin="0" bottommargin="0" rightmargin="0" leftmargin="0" onload="setControlFocus();">
		<form id="ChequeDefault" method="post" runat="server">
        
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">				
				<tr>
					<td><uc1:ChequeMenus id="ChequeMenus1" runat="server"></uc1:ChequeMenus></td>
				</tr>
				<TR>
					<TD style="WIDTH: 104px; HEIGHT: 14px" colSpan="4"></TD>
				</TR>
				<tr>
					<td valign="top" height="100%">
                    
                      
						<table width="98%" cellpadding="2" cellspacing="0" border="0" align="center">
							<TR>
								<TD width="100%" colspan="4" align="middle" style="HEIGHT: 55px">
									<asp:Label id="Label1" runat="server" Font-Bold="True" Font-Underline="True" Font-Size="Medium" ForeColor="Black">
										<b>Cheque Details - Main Menu</b></asp:Label></TD>
							</TR>
							<TR>
								<TD width="15%"></TD>
								<TD width="35%" align="right">
									<asp:Label id="lblChequeOps" runat="server" CssClass="mandatory">Select Cheque options</asp:Label>&nbsp;</TD>
								<TD width="15%">
									<asp:DropDownList id="cboOperation" runat="server" AutoPostBack="True" CssClass="drptxt" onselectedindexchanged="cboOperation_SelectedIndexChanged"></asp:DropDownList></TD>
								<TD width="35%"></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 275px"></TD>
								<TD style="WIDTH: 104px"></TD>
								<TD style="WIDTH: 474px"></TD>
								<TD></TD>
							</TR>
						</table>
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
