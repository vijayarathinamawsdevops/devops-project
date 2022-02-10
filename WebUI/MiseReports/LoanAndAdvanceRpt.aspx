<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoanAndAdvanceRpt.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.LoanAndAdvanceRpt" %>

<%@ Register src="../UserControls/MiseReportsHeader.ascx" tagname="MiseReportsHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #iframe1
        {
            width: 1393px;
            height: 321px;
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
</head>
<script type="text/javascript" language="javascript">
    function valsave() {
        var vDrpHead = document.getElementById('<%=DrpHead.ClientID %>');
        var vDrpDPCode0 = document.getElementById('<%=DrpDPCode0.ClientID %>');
        var vYearCombo1 = document.getElementById('<%=YearCombo1.ClientID %>');

        if (vDrpHead.value == '-1') {
            alert("Select Consolidated Head");
            vDrpHead.focus();
            return false;
        }
        if (vDrpDPCode0.value == '-1') {
            alert("Select Month");
            vDrpDPCode0.focus();
            return false;
        }

        if (vYearCombo1.value == '-1') {
            alert("Select Year");
            vYearCombo1.focus();
            return false;
        }
        return true;

    }
</script>
<body>
    <form id="form1" runat="server">
    <uc1:MiseReportsHeader ID="MiseReportsHeader1" runat="server" />
  <table border="0" cellpadding="3" cellspacing="0" class="parabr" width="100%" align="center">
        <tr>
            <td align="center" class="formtitle" colspan="7" width="100%">
                    Loans And Advance Report</td>
        </tr>
        <tr>
            <td align="left" width="10%">
                <asp:Label ID="lblHead" runat="server" CssClass="mandatory">Consolidate Head</asp:Label>
     
                </td>
            <td align="left" width="15%">
                <asp:DropDownList ID="DrpHead" runat="server" CssClass="drptxt" 
                    Width="143px" >
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="7610">7610</asp:ListItem>
                    <asp:ListItem Value="8009">8009</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td align="left" width="10%">
                <asp:Label ID="lblFromDate" runat="server" CssClass="mandatory">Month</asp:Label>
     
                </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DrpDPCode0" runat="server" CssClass="drptxt" 
                    Width="143px" >
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
            <td align="left" width="10%">


     
                <asp:Label ID="lblToDate" runat="server" CssClass="mandatory">Year</asp:Label>
                </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="YearCombo1" runat="server" CssClass="drptxt" 
                    Width="120px">
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
            <td align="right" width="15%">
                <asp:Button ID="btnView" runat="server" CssClass="formbuttons" 
                    Text="View Report" Width="100px"
                    OnClick="btnView_Click" Height="19px" OnClientClick="return valsave();"></asp:Button>
                </td>
        </tr>
        </table>
    <iframe id="iframe1" src=""  target="_blank" runat="server" height="470px"></iframe>
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
