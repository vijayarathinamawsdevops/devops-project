<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WaterMasterReport.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.WaterMaster" %>

<%@ Register src="../UserControls/MiseReportsHeader.ascx" tagname="MiseReportsHeader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:MiseReportsHeader ID="MiseReportsHeader1" runat="server" />
        <table align="center" border="0" cellpadding="3" cellspacing="0" class="parabr" 
            width="100%">
            <tr>
                <td align="center" class="formtitle" colspan="6" width="100%">
                    Building Rent Master</td>
            </tr>
            <tr>
                <td align="left" width="10%">
                    <asp:Button ID="btnView" runat="server" CssClass="formbuttons" Height="19px" 
                        OnClick="btnView_Click" OnClientClick="return valsave();" Text="View Report" 
                        Width="100px" />
                </td>
                <td align="left" width="15%">
                    &nbsp;</td>
                <td align="left" width="10%">
                    &nbsp;</td>
                <td align="left" width="10%">
                    &nbsp;</td>
                <td align="left" style="width: 20%" width="10%">
                    &nbsp;</td>
                <td align="left" width="25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" colspan="6">
                    <iframe id="I1" runat="server" height="470" name="I1" src="" target="_blank" 
                        width="100%"></iframe>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
