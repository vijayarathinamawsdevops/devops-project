<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<%@ Page language="c#" Codebehind="Input2.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.Input2" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Input II</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Input2" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td valign="top" width="20%">
						<uc1:ReportMenuItems id="ReportMenuItems1" runat="server"></uc1:ReportMenuItems></td>
					<td align="left" valign="top" height="100%" style="PADDING-LEFT:20px;PADDING-TOP:20px">
						<table border="0" cellpadding="2" cellspacing="2" width="90%" class="brdr">
							<TR class="formtitle">
								<TD align="center" colSpan="3"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">Input II - Report</asp:label></TD>
							</TR>
							<TR>
								<TD>
									<asp:Label id="lblHeading" runat="server" Font-Size="Larger" Font-Bold="True">Input - II (Print)</asp:Label></TD>
								<TD>
									<asp:Label id="Label1" runat="server" Font-Bold="True">Transaction Date (dd/mm/yyyy): </asp:Label>
									<asp:textbox id="txtDatTr" runat="server" CssClass="formlines" Enabled="False"></asp:textbox>
									<asp:requiredfieldvalidator id="rfvtxtDatTr" runat="server" ErrorMessage="Data Required" ControlToValidate="txtDatTr"
										Display="Dynamic"></asp:requiredfieldvalidator>
								</TD>
							</TR>
							<TR>
								<TD colSpan="2"><asp:Button id="btnPrint" runat="server" Text="Generate Report" Width="120px" CssClass="formbuttons" onclick="btnPrint_Click"></asp:Button>
									<asp:Button id="Cmddload" runat="server" CssClass="formbuttons" Width="120px" Text="Download Input-II" onclick="Cmddload_Click"></asp:Button>
									<asp:Button id="CmdloadAbst" runat="server" CssClass="formbuttons" Width="128px" Text="Download Input-Abstract" onclick="CmdloadAbst_Click"></asp:Button></TD>
                                    <%--<asp:Label ID="lbl" runat="server"></asp:Label>--%>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td colspan="2"><uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
