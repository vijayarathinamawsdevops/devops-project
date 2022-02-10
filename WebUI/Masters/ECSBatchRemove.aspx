<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ECSBatchRemove.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.ECSBatchRemove" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register src="../UserControls/EcsMenus.ascx" tagname="EcsMenus" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>eKaruvooalm - ECS Batch Remove</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
        <LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>

        <script type="text/javascript" language="javascript">
            function confirmDelete() {
                return confirm("Are you sure!  You want to Remove Batch???");
            }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
                <tr> 
                <TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
                 </tr>
                
				<TR>
                <td><uc2:EcsMenus ID="EcsMenus1" runat="server" /></td>
					
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
                    <TABLE id="Table2" class="parabr" cellSpacing="2" cellPadding="2" width="98%" border="0">
							<TR>
								<TD align="center" colspan="6"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">ECS Batch Remove</asp:label></TD>
							</TR>
                            <tr><td colspan="6"></td></tr>
                            <td colspan="6" style="width:1000px">
                                <asp:GridView ID="gvecsbatch" runat="server" 
                                    width="1100px"  AutoGenerateColumns="False" 
                                    AllowPaging="True" onpageindexchanging="gvecsbatch_PageIndexChanging" 
                                    CellPadding="4" ForeColor="#333333" GridLines="Vertical" 
                                      HorizontalAlign="Center" >
                                      
                                <AlternatingRowStyle BackColor="White" />
                            <Columns>
                            <asp:TemplateField HeaderText="Token Number">
                            <ItemTemplate>
                            <asp:Label ID="lbltoken" runat="server" Text='<%#Eval("Tokenno")%>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Ecs Net">
                            <ItemTemplate>
                            <asp:Label ID="lblecsnet" runat="server" Text='<%#Eval("Ecsnet") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Ecs Batch">
                            <ItemTemplate >
                            <asp:Label ID="lblbatch" runat="server" Text='<%#Eval("Ecsbatch")%>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField >
                            <asp:TemplateField HeaderText="Remove Batch" >
                            <ItemTemplate>
                            <asp:LinkButton ID="lnkbatch" runat="server" Text="Remove" onclick="lnkbatch_Click" OnClientClick="return confirmDelete()">Remove</asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
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
                            </asp:GridView> </td>
                            </tr>
                            <TR>
					<TD>
						<uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></TD>
				</TR>
				<TR>
					<TD>
						<uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR></TABLE></TABLE>  
    </div>
    </form>
</body>
</html>
