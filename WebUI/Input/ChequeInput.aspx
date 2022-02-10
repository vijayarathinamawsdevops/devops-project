<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="ChequeInput.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Input.chequeInput" %>
<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>SAReportHome</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmSAReportHome" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="T1" height="100%" cellSpacing="0" cellPadding="0" width="100%"
				border="0">
				<TR>
					<TD>
                        <%--<uc1:topheader id="TopHeader1" runat="server"></uc1:topheader>--%>
                        <uc2:StripHeader ID="StripHeader1" runat="server" />
                    </TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table class="parabr" cellSpacing="5" cellPadding="2" width="100%" align="center" border="0">
							<tr>
								<td class="rptHead" colSpan="5"><IMG src="../Images/report.gif" align="absMiddle">Input 
									Details</td>
							</tr>
							<TR>
								<td vAlign="top" align="center" height="100%">
									<table cellSpacing="2" cellPadding="2" width="98%" border="0">
										<TR>
											<TD><asp:label id="Label2" runat="server" CssClass="mandatory">Select Option</asp:label></TD>
											<TD align="left"><asp:dropdownlist id="cbostatus" runat="server" CssClass="drptxt" 
                                                    Width="150px" AutoPostBack="True">
													<asp:ListItem Value="v" Selected="True">Voucher</asp:ListItem>
													<asp:ListItem Value="c">Challan</asp:ListItem>
												</asp:dropdownlist></TD>
										</TR>
										<tr>
											<TD width="15%"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token Number</asp:label></TD>
											<TD style="WIDTH: 315px" width="315" align="left">
												<asp:dropdownlist id="CboTokenYear" runat="server" CssClass="formlines"></asp:dropdownlist>&nbsp;<asp:textbox 
                                                    id="txtTokenNo" runat="server" CssClass="formlines" Width="125px"
													MaxLength="7" ontextchanged="txtTokenNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;<asp:imagebutton id="ibtnTokenGo" runat="server" CausesValidation="False" ImageUrl="../Images/go.gif"
													ImageAlign="AbsBottom" onclick="ibtnTokenGo_Click"></asp:imagebutton><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
													ControlToValidate="txtTokenNo" Display="Dynamic"></asp:requiredfieldvalidator></TD>
											<TD colSpan="2"><asp:label id="lblMessage" Runat="server">&nbsp;</asp:label></TD>
										</tr>
									</table>
								</td>
							</TR>
							<tr>
								<td align="right" colSpan="5"></td>
							</tr>
							<tr>
								<td colSpan="5">
									<table id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td colSpan="2"><br>
											</td>
										</tr>
										<tr>
											<td width="2%">&nbsp;</td>
											<td vAlign="top"><uc1:reportpage id="ReportPage1" runat="server"></uc1:reportpage></td>
											<td width="2%">&nbsp;</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
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
