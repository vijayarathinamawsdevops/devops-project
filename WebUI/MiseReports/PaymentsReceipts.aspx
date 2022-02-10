<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentsReceipts.aspx.cs"
    Inherits="eKaruvoolam.WebUI.Reports.PaymentsReceipts" %>
<%@ Register Src="../UserControls/BankStripHeader.ascx" TagName="BankStripHeader"
    TagPrefix="uc1" %>
<%@ Register src="../UserControls/YearCombo.ascx" tagname="YearCombo" tagprefix="uc2" %>
<%@ Register src="../UserControls/MonthCombo.ascx" tagname="MonthCombo" tagprefix="uc3" %>
<%@ Register src="../UserControls/MiseReportsHeader.ascx" tagname="MiseReportsHeader" tagprefix="uc4" %>
<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc5" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
    <title></title>
    <style type="text/css">
        .footer
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 10px;
            color: #333333;
            text-decoration: none;
        }
        
        .mandatory
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            color: #1306A7;
            text-decoration: none;
            font-weight: bold;
            background-color: #EEEEEE;
        }
        .lnkButton
        {
            font-size: 11px;
            text-decoration: none;
            font-family: Verdana, Arial, Sans-Serif;
            color: #1306A7;
            text-decoration: none;
            font-weight: bold;
            background-color: #EEEEEE;
        }
        #iframe1
        {
            width: 1302px;
            height: 328px;
            margin-top: 9px;
            margin-right: 0px;
            margin-left: 41px;
        }
    </style>
    <meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
    <script language="javascript">

        function ShowScrollPopup(srcScreen, KeyField, OperMode, sTitle, Width, Height) {
            alert('hi');
        }
        
    </script>
</head>
<script type="text/javascript" language="javascript">
    function valsave() {
        var vDrpDPCode = document.getElementById('<%=DrpDPCode.ClientID %>');
        var vYearCombo1 = document.getElementById('<%=YearCombo1.ClientID %>');
        var vDrpMonth = document.getElementById('<%=DrpMonth.ClientID %>');

        if (vDrpDPCode.value == '-1') {
            alert("Select DPCode");
            vDrpDPCode.focus();
            return false;
        }

        if (vYearCombo1.value == '-1') {
            alert("Select Year");
            vYearCombo1.focus();
            return false;
        }

        if (vDrpMonth.value == '-1') {
            alert("Select Month");
            vDrpMonth.focus();
            return false;
        }
        return true;

    }
</script>
<body>
    <form id="form1" runat="server">    
    <uc4:MiseReportsHeader ID="MiseReportsHeader1" runat="server" />   
    <table border="0" cellpadding="3" cellspacing="0" class="parabr" align="center">
        <tr>
            <td align="center" class="formtitle" colspan="8">
                Payments &amp; Receipts
            </td>
        </tr>        
        <tr>
            <td>
                <asp:Label ID="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DrpDPCode" runat="server" CssClass="drptxt" 
                    Width="143px" TabIndex="1">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblToDate0" runat="server" CssClass="mandatory">DOCode</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drpddo" runat="server" CssClass="drptxt" 
                    Width="143px" AutoPostBack="True" 
                    onselectedindexchanged="DrpMonth_SelectedIndexChanged">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>   
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblToDate" runat="server" CssClass="mandatory">Year</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="YearCombo1" runat="server" CssClass="drptxt" 
                    Width="143px">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>                    
                    <asp:ListItem Value="2010">2010</asp:ListItem>
                    <asp:ListItem Value="2011">2011</asp:ListItem>
                    <asp:ListItem Value="2012">2012</asp:ListItem>
                    <asp:ListItem Value="2013">2013</asp:ListItem>
                    <asp:ListItem Value="2014">2014</asp:ListItem>
                    <asp:ListItem Value="2015">2015</asp:ListItem>
                    <asp:ListItem Value="2016">2016</asp:ListItem>
                    <asp:ListItem Value="2017">2017</asp:ListItem>
                    <asp:ListItem Value="2018">2018</asp:ListItem>
                    <asp:ListItem Value="2019">2019</asp:ListItem>
                    <asp:ListItem Value="2020">2020</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFromDate" runat="server" CssClass="mandatory">Month</asp:Label>
            </td>
            <td>
                <%--onblur="chkbadchar(this);"--%>
                <asp:DropDownList ID="DrpMonth" runat="server" CssClass="drptxt" 
                    Width="143px" AutoPostBack="True" onselectedindexchanged="DrpMonth_SelectedIndexChanged" >
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="00">JAN</asp:ListItem>
                    <asp:ListItem Value="01">FEB</asp:ListItem>
                    <asp:ListItem Value="02">MARCH</asp:ListItem>
                    <asp:ListItem Value="03">APRIL</asp:ListItem>
                    <asp:ListItem Value="04">MAY</asp:ListItem>
                    <asp:ListItem Value="05">JUNE</asp:ListItem>
                    <asp:ListItem Value="06">JULY</asp:ListItem>
                    <asp:ListItem Value="07">AUG</asp:ListItem>
                    <asp:ListItem Value="08">SEPT</asp:ListItem>
                    <asp:ListItem Value="09">OCT</asp:ListItem>
                    <asp:ListItem Value="10">NOV</asp:ListItem>
                    <asp:ListItem Value="11">DEC</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblOpenBal" runat="server" CssClass="mandatory">Open Balance</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="formlines" Width="143px" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:label id="lblMessage" runat="server" CssClass="validatemessage" 
                    Font-Size="XX-Small"></asp:label>
            </td>
            <td align="left">
                <asp:Button ID="btnView" runat="server" CssClass="formbuttons" Text="View" Width="100px"
                    OnClick="btnView_Click" Height="19px" OnClientClick="return valsave();"></asp:Button>
            </td>
        </tr>
        
        </table>
        <iframe id="iframe1" src=""  target="_blank" runat="server" height="470"></iframe>
    <uc5:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc6:Footer ID="Footer1" runat="server" />
    <br />
    </form>
</body>
</html>
