<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ContingencyVoucher" Src="../UserControls/ContingencyVoucher.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>

<%@ Page Language="c#" CodeBehind="Per_advance.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Per_advance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>eKaruvoolam - PerAdvance</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <script language="JavaScript" src="../Scripts/date-picker.js"></script>
    <script language="JavaScript" src="../Scripts/printJS.js"></script>
    <link href="../Styles/style1.css" type="text/css" rel="stylesheet">
    <script language="JavaScript" src="../Scripts/ekvm.js"></script>
    <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
</head>
<body ms_positioning="GridLayout" topmargin="0" leftmargin="0" rightmargin="0" onload="load();"
    onunload="unload();">
    <form id="Per_advance" method="post" runat="server">
        <table class="tableleftbgcolor" id="Table1" cellspacing="0" cellpadding="0" width="100%"
            border="0" height="100%">
            <tr>
                <td>
                    <uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></td>
            </tr>
            <tr>
                <td align="center" height="100%" valign="top">
                    <table border="0" cellpadding="1" cellspacing="2" width="99%">
                        <tr>
                            <td colspan="4" style="text-align: left">
                                <uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></td>
                        </tr>
                    </table>
                    <asp:Panel ID="pnlControls" runat="server">
                        <table>
                            <tr>
                                <td width="15%" align="left">
                                    <asp:Label ID="Label1" runat="server" CssClass="mandatory">Sanction Order No</asp:Label></td>
                                <td width="30%" align="left">
                                    <asp:TextBox ID="txtSanctionOrderNo" runat="server" CssClass="formlines" onblur="chkbadchar(this)" MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="rfvSanctionOrder" runat="server" ControlToValidate="txtSanctionDate" ErrorMessage="Data Required"
                                        CssClass="validatemessage"></asp:RequiredFieldValidator></td>
                                <td width="15%" align="left">
                                    <asp:Label ID="Label2" runat="server" CssClass="mandatory">Sanction Date</asp:Label></td>
                                <td width="35%" align="left">
                                    <asp:TextBox ID="txtSanctionDate" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:TextBox><a onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
                                        href="javascript:show_calendar('Per_advance.txtSanctionDate');"><img src="../Images/show-calendar.gif" border="0"></a>
                                    <asp:RequiredFieldValidator ID="rfvSanctionDate" runat="server" ControlToValidate="txtSanctionDate" ErrorMessage="Data Required"
                                        CssClass="validatemessage"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
                                        ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:RegularExpressionValidator></td>
                            </tr>
                            <tr>
                                <td width="15%" align="left">
                                    <asp:Label ID="Label3" runat="server" CssClass="mandatory">Is this Article 99 Advance</asp:Label></td>
                                <td width="30%" align="left">
                                    <asp:DropDownList ID="drpArticle" runat="server" CssClass="drptxt">
                                        <asp:ListItem Selected="True" Value="N">No</asp:ListItem>
                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td width="15%" align="left">
                                    <asp:Label ID="Label4" runat="server" CssClass="mandatory">Work Code</asp:Label></td>
                                <td width="35%" align="left">
                                    <asp:TextBox ID="txtWorkCode" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:TextBox><asp:RequiredFieldValidator ID="rfvWorkcode" runat="server" ControlToValidate="txtWorkCode" ErrorMessage="Data Required"
                                        CssClass="validatemessage"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td width="15%" colspan="4" align="left">
                                    <asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
                                    <asp:Label ID="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                    <asp:TextBox ID="todaydate" runat="server" onblur="chkbadchar(this)" Visible="False"></asp:TextBox></td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <table align="left">
                        <tr>
                            <td valign="top">
                                <asp:Button ID="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" OnClick="btnSave_Click"></asp:Button>
                            </td>
                            <td valign="top">
                                <div id="divDetails" class="holder">
                                    <table width="50%" cellspacing="0" cellpadding="0" border="0" class="holderTable">
                                        <tr>
                                            <td>
                                                <div>
                                                    <table width="100%" cellspacing="0" cellpadding="1" border="0" class="formbuttons">
                                                        <tr>
                                                            <td><a id="exp21" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">Show Sub Voucher</a>
                                                            </td>
                                                            <td width="15">
                                                                <a id="exp22" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">
                                                                    <img id="exp2" alt="Expand Details" src="../Scripts/maximize.gif" width="15" height="15"
                                                                        border="0">
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div id="hideDetails" class="hiderScroll" img="exp2" openalt="Collapse Details" closedalt="Expand Details">
                                    <uc1:ContingencyVoucher ID="ContingencyVoucher1" runat="server"></uc1:ContingencyVoucher>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" align="left">
                                <uc1:CheckList ID="CheckList1" runat="server"></uc1:CheckList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <uc1:ErrorLabel ID="ErrorLabel1" runat="server"></uc1:ErrorLabel>
                </td>
            </tr>
            <tr>
                <td>
                    <uc1:Footer ID="Footer1" runat="server"></uc1:Footer>
                </td>
            </tr>
        </table>
    </form>
    <script type="text/jscript" language="jscript">
        widgets.Add(hideDetails, "Details");
        widgets.divCount++;
    </script>
</body>
</html>
