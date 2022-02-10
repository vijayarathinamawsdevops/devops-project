<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<%@ Page language="c#" Codebehind="Funds.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.Funds" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Funds</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Funds" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td valign="top" width="20%">
						<uc1:ReportMenuItems id="ReportMenuItems1" runat="server"></uc1:ReportMenuItems></td>
					<td align="left" valign="top" height="100%" style="PADDING-LEFT:20px;PADDING-TOP:20px">
						<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="100%" border="0" class="brdr">
							<TR class="formtitle">
								<TD align="center" colSpan="3"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">Receipts Funds - Report</asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="3">
									<asp:Label id="Label2" runat="server" Font-Size="Larger" Font-Bold="True">Receipts Funds :-</asp:Label>
									<asp:Label id="Label3" runat="server" Font-Bold="True">Transaction Date : </asp:Label>
									<asp:TextBox id="txtdatTr" runat="server" onblur="chkbadchar(this);" Font-Bold="True" CssClass="formlines"></asp:TextBox>
                                    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtdatTr');"><IMG src="../Images/show-calendar.gif" border="0"></A>
									<asp:requiredfieldvalidator id="rfvtxtDatTr" runat="server" ErrorMessage="Data Required" ControlToValidate="txtdatTr"
										Display="Dynamic"></asp:requiredfieldvalidator>
                                          <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtdatTr"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
								</TD>
							</TR>
							<TR>
								<TD colSpan="3">
									<asp:button id="btnGenerate" runat="server" Text="Generate Report" Width="120px" CssClass="formbuttons" onclick="btnGenerate_Click"></asp:button>
									<asp:button id="cmdImport" runat="server" CssClass="formbuttons" Text="Download" Width="120px" onclick="cmdImport_Click"></asp:button></TD>
							</TR>
						</TABLE>
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
