<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="ReceiptDeposit.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.ReceiptDeposit" %>
<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Receipt Deposit</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<FORM id="PayFund" method="post" runat="server">
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
								<TD align="center" colSpan="3"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">Receipt Deposit - Report</asp:label></TD>
							</TR>
							<TR>
								<TD><asp:Label id="Label2" runat="server">Date</asp:Label></TD>
								<TD><asp:TextBox id="txtDatTr" runat="server" CssClass="formlines"></asp:TextBox>
                                
                                <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtDatTr');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                   <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtDatTr"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                
                                
                                
                                </TD>
								<TD><asp:Button id="btnGo" runat="server" Text="Generate Report" Width="120px" CssClass="formbuttons" onclick="btnGo_Click"></asp:Button>
									<asp:button id="cmdImport" runat="server" CssClass="formbuttons" Text="Download" Width="120px" onclick="cmdImport_Click"></asp:button></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td colspan="2">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</TABLE>
		</FORM>
	</body>
</HTML>
