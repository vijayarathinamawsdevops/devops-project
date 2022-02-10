<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankChallanDetails.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.BankChallanDetails" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>
<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - Bank Challan Details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">

        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  

    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript" language="javascript">
function DeleteConfirmation()
{
if (confirm("Are you sure," 
            "you want to delete selected records ?")==true)
   return true;
else
   return false;
}

</script>
<body>
    <form id="form1" runat="server">



    <uc1:StripHeader ID="StripHeader1" runat="server" />



    <table class="parabr" align="center" width="100%">
        <tr>
            <td class="formtitle" colspan="7" align="center">
                Bank Challan Details</td>
        </tr>
        <tr>
            <td align="center">
                <asp:label id="lblFromDate" CssClass="mandatory" Runat="server">From Date : </asp:label></td>
            <td>
                <asp:textbox id="txtFromDate" CssClass="formlines" onblur="chkbadchar(this);" 
                    Runat="server" Width="170px"></asp:textbox><IMG src="../Images/show-calendar.gif" 
                                        border="0" align="absMiddle" id="imgFromDate"></A>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtFromDate" PopupButtonID="imgFromDate">
                    </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="revFromDate" runat="server" 
                    ControlToValidate="txtFromDate" CssClass="validatemessage" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:regularexpressionvalidator id="revTranDate" runat="server" 
                            CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtFromDate" 
                            Display="Dynamic"></asp:regularexpressionvalidator></td>
            <td>
                <asp:label id="lblToDate" CssClass="mandatory" Runat="server"> To Date : </asp:label></td>
            <td align="center">
                <asp:textbox id="txtToDate" CssClass="formlines" onblur="chkbadchar(this);" 
                    Runat="server" Width="170px" Height="16px"></asp:textbox><IMG src="../Images/show-calendar.gif" 
                                        border="0" align="absMiddle" id="imgTodate"></A>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtToDate" PopupButtonID="imgTodate">
                    </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="revDate" runat="server" 
                    ControlToValidate="txtToDate" CssClass="validatemessage" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:regularexpressionvalidator id="revToDate" runat="server" 
                            CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtToDate" 
                            Display="Dynamic"></asp:regularexpressionvalidator></td>
            <td align="center">
                <asp:label id="lblBAnkName" CssClass="mandatory" Runat="server">Bank Name : </asp:label></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formlines" AutoPostBack="true" 
                    Width="160px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="revBank" runat="server" 
                    ControlToValidate="DropDownList1" CssClass="validatemessage" ErrorMessage="*" 
                    InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
            <td align="right">
                <asp:Button ID="btnView" runat="server" CssClass="formbuttons" 
                    onclick="btnView_Click" Text="View" Width="90px" />
            </td>
        </tr>
        <tr>
            <td colspan="7">
                <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="2" 
            ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="False" 
                    onrowdatabound="GridView1_RowDataBound" AllowPaging="True" 
                    HorizontalAlign="Center" Font-Names="Calibri" Font-Size="Small" 
                    onpageindexchanging="GridView1_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="BANK Name">
                            <ItemTemplate>
                                <asp:Label ID="lblTokenNo" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"BankCode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total No Of Records">
                            <ItemTemplate>
                                <asp:Label ID="lblDPCode" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"NoOfChallan") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Amount">
                            <ItemTemplate>
                                <asp:Label ID="lblBillType" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"TotalAmount") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label ID="lblDAte" runat="server" 
                                    Text='<%# DataBinder.Eval(Container.DataItem,"date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center">                    
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                            oncheckedchanged="CheckBox1_CheckedChanged" />
                       <%-- <asp:LinkButton ID="LnkDel" runat="server" onclick="LnkDel_Click" onclientclick="return confirmDelete();" >Delete</asp:LinkButton>--%>
                    </ItemTemplate>
                     
                     <FooterTemplate>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                                OnClientClick="return DeleteConfirmation();" onclick="btnDelete_Click"/>
                     </FooterTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                
                    </Columns>                    
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                        Wrap="False" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="Small" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    
                    <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                <EmptyDataTemplate>No Records Available</EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
        </table>
         <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
         <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
    </form>
</body>
</html>
