<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterupdateAbstract.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.MasterupdateAbstract" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <uc2:StripHeader ID="StripHeader1" runat="server" />
    <table border="0" cellpadding="3" cellspacing="0" class="parabr" width="100%" align="center">
        <tr>
            <td align="center" class="formtitle" colspan="6" width="100%">
                    
                    Master Abstract</td>
        </tr>
        <tr>
            <td align="left" width="10%">
                <asp:Button ID="btnView" runat="server" CssClass="formbuttons" 
                    Text="View Report" Width="100px"
                    OnClick="btnView_Click" Height="19px" OnClientClick="return valsave();"></asp:Button>
     
                </td>
            <td align="left" width="15%">
                &nbsp;</td>
            <td align="left" width="10%">
                &nbsp;</td>
            <td align="left" width="10%">


     
                &nbsp;</td>
            <td align="left" width="10%" style="width: 20%">


     
                &nbsp;</td>
            <td align="left" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" colspan="6">
               <iframe id="iframe1" src=""  target="_blank" runat="server" height="470" width="100%"></iframe>
               </td>
            
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
