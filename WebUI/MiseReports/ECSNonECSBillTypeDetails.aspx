<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ECSNonECSBillTypeDetails.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.ECSNonECSBillTypeDetails" %>

<%@ Register src="../UserControls/MiseReportsHeader.ascx" tagname="MiseReportsHeader" tagprefix="uc1" %>
<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
         <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
    <style type="text/css">
        .style1
        {
            width: 8%;
        }
        .style2
        {
            width: 29%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:MiseReportsHeader ID="MiseReportsHeader1" runat="server" />
    <table border="0" cellpadding="3" cellspacing="0" class="parabr" width="100%" align="center">
        <tr>
            <td align="center" class="formtitle" colspan="5" width="100%">
                    ECS NonECS BillType Details</td>
        </tr>
        <tr>
            <td align="center" width="10%">
                <asp:Label ID="lblFromDate" runat="server" CssClass="mandatory">From Date</asp:Label>
     
                </td>
            <td align="left" class="style2">
                <asp:TextBox ID="txtFromDate" runat="server" CssClass="formlines" Width="180px"></asp:TextBox>
                <a href="javascript:show_calendar('txtFromDate')" 
                    onmouseout="window.status='';return true;" 
                    onmouseover="window.status='Date Picker';return true;">
                <img align="absMiddle" border="0" src="../Images/show-calendar.gif" /></a>
                <asp:RequiredFieldValidator ID="rfvTranDate" runat="server" 
                    ControlToValidate="txtFromDate" CssClass="validatemessage" 
                    ErrorMessage="DateRequired"></asp:RequiredFieldValidator>
                </td>
            <td align="center" class="style1">


     
                <asp:Label ID="lblToDate" runat="server" CssClass="mandatory">TO Date</asp:Label>
                </td>
            <td align="left" width="10%" style="width: 20%">


     
                <asp:TextBox ID="txtToDate" runat="server" CssClass="formlines" Width="160px"></asp:TextBox>
                <a href="javascript:show_calendar('txtToDate')" 
                    onmouseout="window.status='';return true;" 
                    onmouseover="window.status='Date Picker';return true;">
                <img border="0" src="../Images/show-calendar.gif" /></a><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtToDate" CssClass="validatemessage" 
                    ErrorMessage="DateRequired"></asp:RequiredFieldValidator>
                </td>
            <td align="right" width="25%">
                <asp:Button ID="btnView" runat="server" CssClass="formbuttons" 
                    Text="View Report" Width="100px"
                    OnClick="btnView_Click" Height="19px" OnClientClick="return valsave();"></asp:Button>
                </td>
        </tr>
        <tr>
            <td align="left" colspan="5">
               <iframe id="frame1" src=""  target="_blank" runat="server" height="470" width="100%"></iframe>
               </td>
            
        </tr>
        <tr>
            <td align="left" colspan="5">
                &nbsp;</td>
            
        </tr>
        </table>
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    <br />
    </form>
</body>
</html>
