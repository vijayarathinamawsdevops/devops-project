<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillstatusAbstract.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.BillstatusAbstract" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/date-picker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <table><tr><td><asp:Label ID="lblfrom"  CssClass="mandatory" runat="server"  Text="From Date"></asp:Label></td>
    <td><asp:TextBox ID="txtFrom" CssClass="formlines" runat="server"></asp:TextBox>
    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtFrom')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
    </td>
    <td><asp:Label ID="lblTO" runat="server" CssClass="mandatory" Text="TO Date"></asp:Label></td>
    <td><asp:TextBox ID="txtTO" CssClass="formlines" runat="server"></asp:TextBox>
    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtTO')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
    </td>
    <td><asp:Button ID="btnsubmit" runat="server" CssClass="formbuttons" Text="View" 
            onclick="btnsubmit_Click"/></td></tr></table>
   <div id="Divdetail" runat="server"></div>
 
    </form>
</body>
</html>
