<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EScrollBank.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.EScrollBank" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bankwise RBD</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					 
					<td align="left" valign="top" height="100%" style="PADDING-LEFT:20px;PADDING-TOP:20px">
						<table border="0" cellpadding="1" cellspacing="2" width="90%" class="brdr">
							<TR class="formtitle">
								<TD align="center" colSpan="7"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">EScroll - Report</asp:label></TD>
							</TR>
							<TR>
								<TD class="mandatory" align="right">From</TD>
								<TD><asp:TextBox id="txtfromdate" runat="server" CssClass="formlines" MaxLength="10" Width="90px" onblur="chkbadchar(this);"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtfromdate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                   <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtfromdate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>

                                        </TD>
								<TD class="mandatory" align="right">To</TD>
								<TD><asp:TextBox id="txttodate" runat="server" CssClass="formlines" Width="90px" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txttodate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                        
                                  <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txttodate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                  
                                        </TD>
                                        <td><asp:Label ID="lblBank" runat="server" CssClass="mandatory">Bank</asp:Label></td>
                                        <td><asp:DropDownList ID="DDLBank" runat="server"  CssClass="formlines"></asp:DropDownList></td>
								<td><asp:Button id="btngo" runat="server" CssClass="formbuttons" Text="Generate Report" Width="120px" onclick="btngo_Click"></asp:Button>
									<asp:button id="cmdImport" runat="server" CssClass="formbuttons" Text="Download" Width="120px" onclick="cmdImport_Click"></asp:button></td>
							</TR>
						<%--	<tr>
					<td width="2%">&nbsp;</td>
					<td valign="top" colspan="6"><uc1:ReportPage id="ReportPage1" runat="server"></uc1:ReportPage></td>
					<td width="2%">&nbsp;</td>
				</tr>--%>
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
    </div>
    </form>
</body>
</html>
