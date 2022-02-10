<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApproveMHCodeChange.aspx.cs" Inherits="eKaruvoolam.WebUI.audit.ApproveMHCodeChange" %>

<%@ Register src="../UserControls/TopHeader.ascx" tagname="TopHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/PayBreakup.ascx" tagname="PayBreakup" tagprefix="uc2" %>
<%@ Register src="../UserControls/PayDeductions.ascx" tagname="PayDeductions" tagprefix="uc3" %>
<%@ Register src="../UserControls/PayCR_OR.ascx" tagname="PayCR_OR" tagprefix="uc4" %>

<%@ Register src="../UserControls/TotalDeduLabel.ascx" tagname="TotalDeduLabel" tagprefix="uc5" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc6" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - Auditing Default</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/printJS.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" language="javascript">
            function confirmDelete() {
                return confirm("Are you sure!  You want to Approve the Changed MHDetails???");
            }
</script>
</head>
<body>
    <form id="form1" runat="server">
    

        <uc1:TopHeader ID="TopHeader1" runat="server" />
        <table width="100%" align="center" class="parabr">
        <tr>
        <td align="center" class="formtitle" colspan="2">

            Approve / Reject MHCode Change Details</td>
        </tr>        
        <tr>
        <td align="right" width="50%">
                <asp:label id="lblTreasury" runat="server" CssClass="mandatory">Select Treasury : </asp:label>
        </tr>
        <td align="left" width="50%">
									<asp:dropdownlist id="DrpStocode" runat="server" 
                    CssClass="formlines" Width="160px" 
                    onselectedindexchanged="DrpStocode_SelectedIndexChanged" AutoPostBack="True"></asp:dropdownlist>
                <asp:imagebutton 
                                        id="ibtnTokenGo" runat="server"  ImageAlign="AbsBottom" 
                                        ImageUrl="../Images/go.gif" CausesValidation="False" 
                                        onclick="ibtnTokenGo_Click" Width="18px"></asp:imagebutton>
        </tr>
    <tr>
    <td colspan="2">
        <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="2" 
            ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="False" 
            AllowPaging="True" Font-Names="Calibri" Font-Size="Small" 
            onrowcommand="GridView1_RowCommand" 
            onpageindexchanging="GridView1_PageIndexChanging" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="TokenNo">
                    <ItemTemplate>
                        <asp:Label ID="lblTokenNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DPCode">
                    <ItemTemplate>
                        <asp:Label ID="lblDPCode" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BillType">
                    <ItemTemplate>
                        <asp:Label ID="lblBillType" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BillAmount">
                    <ItemTemplate>
                        <asp:Label ID="lblBillAmount" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillAmount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" onclick="lnkView_Click" CommandName="MyCustomCommand">View</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Approved" ItemStyle-HorizontalAlign="Center">                    
                    <ItemTemplate>
                        <asp:CheckBox ID="chkApproved" runat="server" AutoPostBack="true" 
                            oncheckedchanged="chkApproved_CheckedChanged" />
                    </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Reject" ItemStyle-HorizontalAlign="Center">                    
                    <ItemTemplate>
                        <asp:CheckBox ID="chkReject" runat="server" AutoPostBack="true" 
                             />
                    </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"  />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" />
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
    <tr>
    <td colspan="2">
                <asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label><asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
    </tr>
    </table>    
    <asp:Panel ID="pnlControls" Runat="server" Visible="false">
        <TABLE cellSpacing="0" cellPadding="2" width="100%" border="0">
            <tr>
            <td>
            <TABLE cellSpacing="0" cellPadding="0" width="100%" border="1">
        <tr>
        <td vAlign="top" width="40%">
        <table width="100%" align="center">
        <tr><td align="center" class="formtitle" >Pay BreakUp Details</td></tr>
        <tr><td>
        
                                    <asp:GridView ID="dgP2" runat="server" Width="100%" CellPadding="2" 
            ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="False" 
            Font-Names="Calibri" Font-Size="Small">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="DPCode">
                    <ItemTemplate>
                        <asp:Label ID="lblDPCode" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lblTokenNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SUBJECT") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Bill Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblBillType" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"  />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
         </td></tr>
            
        </table>
        </td>
        <td vAlign="top" width="35%">
          <table width="100%" align="center"><tr><td align="center" class="formtitle" >Pay Deduction Details</td></tr> 
            <tr><td>
            
            <asp:GridView ID="dgP3" runat="server" Width="100%" CellPadding="2" 
            ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="False" 
            Font-Names="Calibri" Font-Size="Small">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="DPCode">
                    <ItemTemplate>
                        <asp:Label ID="lblDPCode" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lblTokenNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SUBJECT") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Bill Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblBillType" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"  />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
            </td></tr>
            </table> 
        </td>
        <td vAlign="top" width="25%">
            <table width="100%" align="center">
            <tr><td align="center" class="formtitle">CR/OR Details</td></tr>
            <tr><td>
            
            <asp:GridView ID="dgP4" runat="server" Width="100%" CellPadding="2" 
            ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="False" 
            Font-Names="Calibri" Font-Size="Small">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="TokenNo">
                    <ItemTemplate>
                        <asp:Label ID="lblTokenNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DPCode">
                    <ItemTemplate>
                        <asp:Label ID="lblDPCode" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Bill Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblBillType" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"  />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#3333CC" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
            </td></tr>
            
            </table>
        </td>
        </tr>      

        </TABLE>
        </td>
        </tr>
        </TABLE>
        
        
        
        
    </asp:Panel>
    <table class="style1">
            <tr>
                <td align="center">
                    <asp:LinkButton ID="lnkPreviousDetails" runat="server" Visible="false"
                        CssClass="mandatory" onclick="lnkPreviousDetails_Click">View Previous Details</asp:LinkButton>
                </td>
            </tr>
        </table>
    <asp:Panel ID="Panel1" Runat="server" Visible="false">
        <TABLE cellSpacing="0" cellPadding="2" width="100%" border="0">
            <tr>
            <td>
            <TABLE cellSpacing="0" cellPadding="0" width="100%" border="1">
        <tr>
        <td vAlign="top" width="40%">
        <table width="100%" align="center">
        <tr><td align="center" bgcolor="#666699" 
                    
                style="font-family: Verdana; color: #FFFFFF; font-weight: bold; font-size: small;">Pay BreakUp Details</td></tr>
        <tr><td>
        
                                    <asp:GridView ID="GridView2" runat="server" Width="100%" CellPadding="3" 
                                        GridLines="Vertical" AutoGenerateColumns="False" 
            Font-Names="Calibri" Font-Size="Small" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
                                        BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:TemplateField HeaderText="DPCode">
                    <ItemTemplate>
                        <asp:Label ID="lblDPCode" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lblTokenNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SUBJECT") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Bill Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblBillType" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amt") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"  />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" Font-Names="Verdana" 
                                            Font-Size="Small" HorizontalAlign="Center" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
         </td></tr>
            
        </table>
        </td>
        <td vAlign="top" width="35%">
          <table width="100%" align="center"><tr><td align="center" bgcolor="#666699" 
                    
                  style="font-family: Verdana; color: #FFFFFF; font-weight: bold; font-size: small;">Pay Deduction Details</td></tr> 
            <tr><td>
            
            <asp:GridView ID="GridView3" runat="server" Width="100%" CellPadding="3" 
                    GridLines="Vertical" AutoGenerateColumns="False" 
            Font-Names="Calibri" Font-Size="Small" BackColor="White" BorderColor="#E7E7FF" 
                    BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:TemplateField HeaderText="DPCode">
                    <ItemTemplate>
                        <asp:Label ID="lblDPCode" runat="server" 
                            Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lblTokenNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SUBJECT") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Bill Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblBillType" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amt") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"  />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
                    Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
            </td></tr>
            </table> 
        </td>
        <td vAlign="top" width="25%">
            <table width="100%" align="center">
            <tr><td align="center" bgcolor="#666699" 
                    
                    style="font-family: Verdana; color: #FFFFFF; font-weight: bold; font-size: small;">CR/OR Details</td></tr>
            <tr><td>
            
            <asp:GridView ID="GridView4" runat="server" Width="100%" CellPadding="3" 
                    GridLines="Vertical" AutoGenerateColumns="False" 
            Font-Names="Calibri" Font-Size="Small" BackColor="White" BorderColor="#E7E7FF" 
                    BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:TemplateField HeaderText="TokenNo">
                    <ItemTemplate>
                        <asp:Label ID="lblTokenNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DPCode">
                    <ItemTemplate>
                        <asp:Label ID="lblDPCode" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Bill Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblBillType" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amt") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"  />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
                    Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
            </td></tr>
            
            </table>
        </td>
        </tr>      

        </TABLE>
        </td>
        </tr>
        </TABLE>
                       
    </asp:Panel>

        

        <table class="style1">
            <tr>
                <td align="center">
                     <asp:button id="btnApprove" runat="server" Width="90px" CssClass="formbuttons" 
                    Text="Approve" onclick="btnApprove_Click" 
            onclientclick="return confirmDelete();" Visible="False"></asp:button>
        <asp:Button ID="btnReject" runat="server" CssClass="formbuttons" 
            onclick="btnReject_Click" Text="Reject" Width="90px" Visible="False" />
        <asp:Button ID="btnClear" runat="server" CssClass="formbuttons" 
            onclick="btnClear_Click" Text="Clear" Width="90px" /></td>
            </tr>
        </table>

        

     <uc6:ErrorLabel ID="ErrorLabel1" runat="server" />
                <uc7:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>