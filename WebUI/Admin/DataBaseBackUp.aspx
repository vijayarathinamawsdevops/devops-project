<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBaseBackUp.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.DataBaseBackUp" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    
    <table align="center" width="80%">
        <tr>
            <td width="20%">
                                    &nbsp;</td>
            <td width="20%">
                                    <asp:Label id="lblbackup" runat="server" 
                    CssClass="mandatory">Select Drive To Take BackUp</asp:Label>
                                </td>
            <td width="30%">
                                    <asp:DropDownList ID="ddldrive" runat="server" CssClass="formlines" 
                                        Width="150px" ToolTip="Bas Code"  
                                         >
                                    </asp:DropDownList>
                                </td>
            <td>
                                    &nbsp;</td>
            <td align="right">
                                    &nbsp;</td>
        </tr>
        <tr>
            <td width="20%">
                                    &nbsp;</td>
            <td width="20%">
                                    <asp:Label id="lblbackup0" runat="server" 
                    CssClass="mandatory">Select BackUp Type</asp:Label>
                                </td>
            <td width="30%">
                                    <asp:DropDownList ID="ddldrive0" runat="server" CssClass="formlines" 
                                        Width="150px" ToolTip="Bas Code"  
                                         >
                                        <asp:ListItem Selected="True" Value="F">Full</asp:ListItem>
                                        <asp:ListItem Value="C">Compressed</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
            <td>
                                    &nbsp;</td>
            <td align="right">
                                    &nbsp;</td>
        </tr>
        <tr>
            <td width="20%">
                                    &nbsp;</td>
            <td width="20%">
                                    &nbsp;</td>
            <td width="30%">
                                    &nbsp;</td>
            <td>
                                    &nbsp;</td>
            <td align="right">
                                    &nbsp;</td>
        </tr>
        <tr>
            <td width="20%">
                                    &nbsp;</td>
            <td width="20%">
                                    &nbsp;</td>
            <td width="30%">
                                    <asp:Button id='btnSearch' runat='server' 
                    Text='Take BackUp' CssClass='formbuttons' 
                                        Width="100px" onclick="btnSearch_Click"></asp:Button>
                                </td>
            <td>
                                    &nbsp;</td>
            <td align="right">
                                    &nbsp;</td>
        </tr>
        <tr>
            <td>
                                    &nbsp;</td>
            <td>
                                    <asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>
									&nbsp;<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    
    </form>
</body>
</html>
