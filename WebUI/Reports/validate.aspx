<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="validate.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.validate" %>
<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Input I</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Input1" method="post" runat="server">
			<TABLE id="Table1" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<TR>
					<TD colSpan="2"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" width="20%"><uc1:reportmenuitems id="ReportMenuItems1" runat="server"></uc1:reportmenuitems></td>
					<td style="PADDING-LEFT: 20px; PADDING-TOP: 20px" vAlign="top" align="left" height="100%">
						<table class="brdr" cellSpacing="2" cellPadding="2" width="90%" border="0">
							<TR class="formtitle">
								<TD align="center" colSpan="3"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle">Validate - Report</asp:label></TD>
							</TR>
							<TR>
								<TD><asp:label id="Label2" runat="server" Font-Size="Larger" Font-Bold="True"></asp:label></TD>
								<td><asp:label id="Label3" runat="server" Font-Bold="True">From Date: </asp:label><asp:textbox id="txtdatTr" runat="server" onblur="chkbadchar(this);" CssClass="formlines" Font-Bold="True"></asp:textbox>
                                
                                <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtdatTr');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                        <asp:requiredfieldvalidator id="rfvtxtDatTr" runat="server" ErrorMessage="*" ControlToValidate="txtdatTr"
										Display="Dynamic" CssClass="validatemessage"></asp:requiredfieldvalidator>
                                  <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtdatTr"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>

 
                                </td>

                                <td><asp:label id="Label1" runat="server" Font-Bold="True">TO Date: </asp:label><asp:textbox id="txttodate" runat="server" onblur="chkbadchar(this);" CssClass="formlines" Font-Bold="True"></asp:textbox>
                                
                                <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txttodate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                        <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" ErrorMessage="*" ControlToValidate="txttodate"
										Display="Dynamic" CssClass="validatemessage"></asp:requiredfieldvalidator>
                                  <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtdatTr"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>



                                
                                </td>
								 
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnPrint" runat="server" CssClass="formbuttons" Text="Generate Report" Width="120px" onclick="btnPrint_Click"></asp:button><asp:button id="cmdImport" runat="server" CssClass="formbuttons" Text="Download" Width="120px" onclick="cmdImport_Click"></asp:button></TD>
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
