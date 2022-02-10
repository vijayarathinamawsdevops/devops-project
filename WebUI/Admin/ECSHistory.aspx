<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ECSHistory.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.ECSHistory" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>
<%@ Register src="../UserControls/EcsMenus.ascx" tagname="EcsMenus" tagprefix="uc2" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc3" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc4" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - ECS History Details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">

        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  

    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    <uc2:EcsMenus ID="EcsMenus1" runat="server" />
    
    <table class="parabr" align="center" width="100%">
        <tr>
            <td class="formtitle" colspan="5" align="center">
                ECS Credit History Details</td>
        </tr>
        <tr>
            <td align="center">
                <asp:label id="lblFromDate" CssClass="mandatory" Runat="server">From Date : </asp:label></td>
            <td>
                <asp:textbox id="txtFromDate" CssClass="formlines" onblur="chkbadchar(this);" 
                    Runat="server"></asp:textbox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtFromDate">
                    </asp:CalendarExtender></td>
            <td align="center">
                <asp:label id="lblToDate" CssClass="mandatory" Runat="server"> To Date : </asp:label></td>
            <td>
                <asp:textbox id="txtToDate" CssClass="formlines" onblur="chkbadchar(this);" 
                    Runat="server"></asp:textbox>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtToDate">
                    </asp:CalendarExtender></td>
            <td align="right">
                <asp:Button ID="btnSave" runat="server" CssClass="formbuttons" 
                    onclick="btnSave_Click" Text="View" Width="90px" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="2" ForeColor="#333333" GridLines="Vertical" Width="100%" Font-Names="Calibri" Font-Size="Small" 
                    AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="ECS Batch">
                            <ItemTemplate>
                                <asp:Label ID="lblTokenNo" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"ecsbatch") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Settlement Date">
                            <ItemTemplate>
                                <asp:Label ID="lblDPCode" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"passeddate") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                                <asp:Label ID="lblBillType" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"BillAmount") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="Small" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
    <uc3:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc4:Footer ID="Footer1" runat="server" />
    
    </form>
</body>
</html>
