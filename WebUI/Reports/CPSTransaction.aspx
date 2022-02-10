<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CPSTransaction.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.CPSTransaction" %>

<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="Table1" cellspacing="0" cellpadding="0" width="100%" border="0" height="100%">
                <tr>
                    <td colspan="3">
                        &nbsp;
                    </td>
                </tr>
                <%--Commented by Jeyachandran on 03-June-2014, instuct by sir--%>
                <%--<tr><td></td><td>From Date</td><td><asp:TextBox ID="txtfrm" runat="server" CssClass="formlines"></asp:TextBox>
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
                    </td></tr>--%>
                <%--Coded by Jeyachandran on 03-June-2014 --%>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <table>
                            <tr>
                                <td>Select a Month</td>
                                <td>
                                    <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList></td>
                            </tr>
                        </table>

                    </td>
                    <td>
                        <table>
                            <tr>

                                <td>Select a Year</td>
                                <td>
                                    <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnReport" runat="server"
                            Text="Generate Report" OnClick="btnReport_Click" /></td>
                    <td>
                        <asp:Button ID="btnDownload" runat="server" Text="Delimite File - CPS"
                            OnClick="btnDownload_Click" />&nbsp;&nbsp;
                        <asp:Button ID="btnNPGPFDownload" runat="server" Text="Delimite File - NMP"
                            OnClick="btnNPGPFDownload_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="3" align="right"><a href="../MAccountReport/ReportMenulist.aspx">Back </a></td>
                </tr>
                <tr>
                    <td width="2%">&nbsp;</td>
                    <td valign="top" colspan="3">
                        <uc1:ReportPage ID="ReportPage1" runat="server"></uc1:ReportPage>
                    </td>
                    <td width="2%">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblerror" runat="server" CssClass="validatemessage"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
