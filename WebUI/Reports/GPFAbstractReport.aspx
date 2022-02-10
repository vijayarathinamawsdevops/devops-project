<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPFAbstractReport.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.GPFAbstractReport" %>

<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="JavaScript" src="../Scripts/date-picker.js"></script>
    <link href="../Styles/style1.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="Form1" method="post" runat="server">

        <table id="Table1" cellspacing="0" cellpadding="0" width="100%" border="0" height="100%">
            <tr>
                <td width="100px">
                    <br />
                </td>
                <td colspan="4"></td>
            </tr>
            <tr>
                <td>&nbsp; </td>
                <td>From Date</td>
                <td>
                    <asp:TextBox ID="txtfrm" runat="server" CssClass="formlines"></asp:TextBox>
                    <a onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
                        href="javascript:show_calendar('txtfrm')">
                        <img src="../Images/show-calendar.gif" align="absMiddle" border="0"></a>
                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtfrm"
                        ValidationGroup="group" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format" ControlToValidate="txtfrm"
                        ValidationGroup="group" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                </td>
                <td>TODate</td>
                <td>
                    <asp:TextBox ID="txtTO" runat="server" CssClass="formlines"></asp:TextBox>
                    <a onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
                        href="javascript:show_calendar('txtTO')">
                        <img src="../Images/show-calendar.gif" align="absMiddle" border="0"></a>

                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtTO"
                        ValidationGroup="group" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="dd/MM/yyyy format" ControlToValidate="txtTO"
                        ValidationGroup="group" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>

                    <asp:CustomValidator ValidationGroup="group" OnServerValidate="customvalidator1_ServerValidate" runat="server" ID="customvalidator1" ControlToValidate="txtTO" ErrorMessage="Date should be lesser than current date" CssClass="validatemessage"></asp:CustomValidator>

                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <br />
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Button ID="btnReport" runat="server"
                        Text="Generate Report" OnClick="btnReport_Click" ValidationGroup="group" CausesValidation="true" /></td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="4" align="right"><a href="../MAccountReport/ReportMenulist.aspx">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>


            <tr>
                <td colspan="5">&nbsp;&nbsp;
                    <asp:Label ID="lblerror" runat="server" CssClass="validatemessage"></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>
