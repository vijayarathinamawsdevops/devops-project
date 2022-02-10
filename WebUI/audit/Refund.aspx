<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>

<%@ Page Language="c#" CodeBehind="Refund.aspx.cs" SmartNavigation="True" AutoEventWireup="True"
    Inherits="eKaruvoolam.WebUI.audit.Refund" %>

<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>eKaruvoolam - Refund</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio 7.0">
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href="../Styles/style1.css" type="text/css" rel="stylesheet">
    <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
    <script language="JavaScript" src="../Scripts/date-picker.js"></script>
    <style type="text/css">
        .style4
        {
            width: 86%;
        }
        .style5
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <%--MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0"--%>
    <form id="Refund" method="post" runat="server">
    <uc1:TopHeader ID="TopHeader1" runat="server"></uc1:TopHeader>
    <uc1:BillInfo ID="BillInfo1" runat="server"></uc1:BillInfo>
     
            <asp:Panel ID="pnlControls" runat="server">
            
         <%--   <td>
                <asp:Label ID="lblChallanNo" runat="server" CssClass="mandatory">Challan Number</asp:Label>
            </td>
            <td>
                <asp:dropdownlist id="CboChallanYear" runat="server" CssClass="formlines" Width="60"></asp:dropdownlist>
                <asp:TextBox ID="txtChallanNO" runat="server" CssClass="formlines" AutoPostBack="true" 
                    ontextchanged="txtChallanNO_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblChallanDt" runat="server" CssClass="mandatory">Challan Date</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtChallanDt" runat="server" onblur="chkbadchar(this)" CssClass="formlines"></asp:TextBox>
                <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtChallanDt')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
                <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" runat="server" CssClass="validatemessage"
                    ControlToValidate="txtChallanDt" ErrorMessage="Date expected in dd/mm/yyyy" Display="Dynamic"
                    ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
            </td>--%>
         <table> 
        <tr>
            <td>
                <asp:Label ID="lblAmount" runat="server" CssClass="mandatory">Gross Amount</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server" CssClass="formlines" onblur="chkbadchar(this)"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="rfvSanctionDate" runat="server" CssClass="validatemessage"
                    ControlToValidate="txtChallanDt" ErrorMessage="Data Required" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr></table>
        </asp:Panel>
        
     
    <table border="0" cellpadding="1" cellspacing="2" width="100%">
        
        <tr>
            <td class="style4">
                <asp:Button ID="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px"
                    OnClick="btnSave_Click"></asp:Button>
                <asp:Label ID="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <uc1:CheckList ID="CheckList1" runat="server"></uc1:CheckList>
            </td>
        </tr>
    </table>
    <td>
        <uc1:ErrorLabel ID="ErrorLabel1" runat="server"></uc1:ErrorLabel>
    </td>
    <td>
        <uc1:Footer ID="Footer1" runat="server"></uc1:Footer>
    </td>
    </form>
</body>
</html>
