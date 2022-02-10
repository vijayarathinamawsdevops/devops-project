<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CPSVoucher.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.CPSVoucher" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CPS Voucher</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<tr>
					<td colspan="2"><br>
					</td>
				</tr>

                <tr><td></td><td>From Date</td><td><asp:TextBox ID="txtfrm" runat="server" CssClass="formlines"></asp:TextBox>
                    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
					href="javascript:show_calendar('txtfrm')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
                    <asp:requiredfieldvalidator id="rfvDate" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtfrm"
										ErrorMessage="*"></asp:requiredfieldvalidator>
                                 <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format"  ControlToValidate="txtfrm"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                    </td>
                    <td>TODate</td><td><asp:TextBox ID="txtTO" runat="server" CssClass="formlines"></asp:TextBox>
                    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
					href="javascript:show_calendar('txtTO')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>

                    <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtTO"
										ErrorMessage="*"></asp:requiredfieldvalidator>
                                 <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid format"  ControlToValidate="txtTO"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                    </td></tr>
                    <tr><td></td><td colspan="2"><asp:Button ID="btnReport" runat="server" 
                            Text="Generate Report" onclick="btnReport_Click" /></td>
                    <td colspan="2"><asp:Button ID="btnDownload" runat="server" Text="Delimite File"  
                            OnClick="btnDownload_Click" /></td></tr>
                            <tr><td></td><td colspan="4" align="right"><a href="../MAccountReport/ReportMenulist.aspx">Back </a></td></tr>

				<tr>
					<td width="2%">&nbsp;</td>
					<td valign="top" colspan="4"><uc1:ReportPage id="ReportPage1" runat="server"></uc1:ReportPage></td>
					<td width="2%">&nbsp;</td>
				</tr>
                <tr><td colspan="5"><asp:Label ID="lblerror" runat="server" CssClass="validatemessage"></asp:Label></td></tr>
			</table>
    </div>
    </form>
</body>
</html>
