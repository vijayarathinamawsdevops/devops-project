<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page Language="c#" CodeBehind="Adjustment.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Adjustment" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head runat="server">
    <title>eKaruvoolam - Adjustment</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <%--	<script language="JavaScript" src="../Scripts/date-picker.js"></script>--%>
    <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
    <link href="../Styles/calender.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/style1.css" type="text/css" rel="stylesheet">
    <style type="text/css">
        .style2 {
            height: 24px;
        }
    </style>
</head>
<body leftmargin="0" topmargin="0" rightmargin="0" ms_positioning="GridLayout">
    <form id="Adjustment" method="post" runat="server">
        <asp:ScriptManager ID="ScriptManger1" runat="Server">
</asp:ScriptManager>
        <table class="tableleftbgcolor" id="Table1" height="100%" cellspacing="0" cellpadding="0"
            width="100%" border="0">
            <tr>

                <td>
                    <uc1:TopHeader ID="TopHeader1" runat="server"></uc1:TopHeader>
                </td>
            </tr>
            <tr>
                <td valign="top" align="center" height="100%">



                    <table cellspacing="2" cellpadding="1" width="98%" border="0">
                        <tr valign="top">
                            <td width="15%" colspan="4" style="text-align: left">
                                <uc1:BillInfo ID="BillInfo1" runat="server"></uc1:BillInfo>
                            </td>
                        </tr>
            </tr>
            <tr>
                <td width="15%" style="text-align: left">
                    <asp:Label ID="lblBookAdjustment" runat="server" CssClass="mandatory">Book Adjustment</asp:Label></td>
                <td width="35%" style="text-align: left">
                    <asp:DropDownList ID="YesNo1" TabIndex="1" runat="server" CssClass="drptxt" Width="90px" AutoPostBack="True" OnSelectedIndexChanged="YesNo1_SelectedIndexChanged">
                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                        <asp:ListItem Value="N">No</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_YesNo"
                        runat="server" ControlToValidate="YesNo1" CssClass="validatemessage"
                        ErrorMessage="Enter Alpha Numberic only"
                        ValidationExpression="[a-zA-Z0-9]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
                <td width="15%" style="text-align: left">
                    <asp:Label ID="lblCreditDPCode" runat="server" CssClass="mandatory">Credit DPCode</asp:Label></td>
                <td width="35%" style="text-align: left">
                    <asp:TextBox ID="txtCreditDPCode" TabIndex="2" runat="server" CssClass="formlines" MaxLength="15" onblur="chkbadchar(this);"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_DPCode"
                        runat="server" ControlToValidate="txtCreditDPCode" CssClass="validatemessage"
                        ErrorMessage="Enter Alpha Numeric only"
                        ValidationExpression="[a-zA-Z0-9]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td width="15%" style="text-align: left" class="style2">
                    <asp:Label ID="lblPrev_TokenNo" runat="server" CssClass="mandatory">Previous TokenNo</asp:Label></td>
                <td width="35%" style="text-align: left" class="style2">
                    <asp:TextBox ID="txtPrev_TokenNo" TabIndex="3" runat="server" CssClass="formlines" AutoPostBack="True"
                        onblur="chkbadchar(this);" onkeypress="numeralsOnly(this)" MaxLength="15" OnTextChanged="txtPrev_TokenNo_TextChanged"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_DPCode0"
                        runat="server" ControlToValidate="txtPrev_TokenNo" CssClass="validatemessage"
                        ErrorMessage="Enter Numeric only" ValidationExpression="[0-9]*$"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
                <td width="15%" style="text-align: left" class="style2">
                    <asp:Label ID="lblPrev_Tokendt" runat="server" CssClass="mandatory">Previous Token date</asp:Label></td>
                <td width="35%" style="text-align: left" class="style2">
                    <asp:TextBox ID="txtPrev_Tokendt" TabIndex="4" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
                    <asp:CalendarExtender ID="txtPrev_Tokendt_CalendarExtender" runat="server"
                        CssClass="black" Enabled="True" Format="dd/MM/yyyy"
                        PopupButtonID="img_prev_date" TargetControlID="txtPrev_Tokendt">
                    </asp:CalendarExtender>
                    <%--  <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
							href="javascript:show_calendar('Adjustment.txtPrev_Tokendt');">--%>
                    <img src="../Images/show-calendar.gif" border="0" id="img_prev_date"><%--</A>--%>
                    <asp:RegularExpressionValidator ID="revTranDate" runat="server"
                        CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
                        ControlToValidate="txtPrev_Tokendt" ErrorMessage="Invalid Date (dd/MM/yyyy)"
                        Display="Dynamic"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td width="15%" style="text-align: left">
                    <asp:Label ID="lblAmount" runat="server" CssClass="mandatory">Amount</asp:Label></td>
                <td width="35%" style="text-align: left">
                    <asp:TextBox ID="txtAmount" TabIndex="5" runat="server" CssClass="formlines" MaxLength="19" onblur="chkbadchar(this);"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtAmount" runat="server"
                        CssClass="validatemessage" ControlToValidate="txtAmount"
                        ErrorMessage="Amount Can Not be Empty" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_DPCode1"
                        runat="server" ControlToValidate="txtAmount" CssClass="validatemessage"
                        ErrorMessage="Enter Numeric only" ValidationExpression="[0-9]*$"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
                <td colspan="2" style="text-align: left"></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Panel ID="pnlPassedDate" runat="server" Visible="False">
                        <table cellspacing="0" cellpadding="1" width="100%" border="0">
                            <tr>
                                <td width="6%" style="text-align: left">
                                    <asp:Label ID="lbl" runat="server" CssClass="mandatory">Passed Date</asp:Label></td>
                                <td width="35%" style="text-align: left">
                                    <asp:TextBox ID="txtPasseddate" TabIndex="4" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtPasseddate_CalendarExtender" runat="server"
                                        CssClass="black" Enabled="True" Format="dd/MM/yyyy"
                                        PopupButtonID="img_passed_date" TargetControlID="txtPasseddate">
                                    </asp:CalendarExtender>
                                    <%-- <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Adjustment.txtPasseddate');">--%>
                                    <img src="../Images/show-calendar.gif" align="absMiddle" border="0"
                                        id="img_passed_date" /><%--</A>--%>
                                    <asp:RegularExpressionValidator ID="Regularexpressionvalidator_PassedDate"
                                        runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
                                        ControlToValidate="txtPasseddate" ErrorMessage="Invalid Date (dd/MM/yyyy)" Display="Dynamic"></asp:RegularExpressionValidator></td>
                            </tr>
                        </table>
                    </asp:Panel>

                </td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: left">
                    <asp:Label ID="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label><asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSave" TabIndex="6" runat="server" CssClass="formbuttons" Width="100px" Text="Save" OnClick="btnSave_Click"></asp:Button></td>
                <td colspan="3"></td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: left">
                    <uc1:CheckList ID="CheckList1" runat="server"></uc1:CheckList>
                </td>
            </tr>
        </table>


        </td></tr>
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
        </TABLE>
    </form>
</body>
</html>
