<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<%@ Page language="c#" Codebehind="Input1.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.Input1" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Input I</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                height: 72px;
            }
        </style>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Input1" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%"><TR>
					<TD colspan="2" class="style1"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" width="20%" style="HEIGHT: 305px"><uc1:reportmenuitems id="ReportMenuItems1" runat="server"></uc1:reportmenuitems></td>
					<td style="PADDING-LEFT: 20px; HEIGHT: 305px; PADDING-TOP: 20px" vAlign="top" align="left"
						height="305">
						<table class="brdr" cellSpacing="2" cellPadding="2" width="90%" border="0">
							<TR class="formtitle">
								<TD align="center" colSpan="3"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle">Input I - Report</asp:label></TD>
							</TR>
							<TR>
								<TD><asp:label id="Label2" runat="server" Font-Bold="True" Font-Size="Larger">Input - I (Print)</asp:label></TD>
								<td><asp:label id="Label3" runat="server" Font-Bold="True">Transaction Date (dd/mm/yyyy): </asp:label><asp:textbox id="txtdatTr" runat="server" CssClass="formlines" Font-Bold="True" Enabled="False"></asp:textbox></td>
								<td><asp:requiredfieldvalidator id="rfvtxtDatTr" runat="server" Display="Dynamic" ControlToValidate="txtdatTr" ErrorMessage="Data Required"
										Width="69px"></asp:requiredfieldvalidator></td>
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnPrint" runat="server" CssClass="formbuttons" Width="120px" Text="Generate Report" onclick="btnPrint_Click"></asp:button>
									<asp:button id="cmdImport" runat="server" CssClass="formbuttons" Text="Download" Width="120px" onclick="cmdImport_Click"></asp:button></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
