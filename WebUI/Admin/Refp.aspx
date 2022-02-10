<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refp.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.Refp" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
 <%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Refp</title>
     <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>

         
       


        <script language="javascript" type ="text/javascript" >
            function numeralsOnly(evt) {
                evt = (evt) ? evt : event;
                var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
                if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                    alert("Enter only number in this field.");
                    return false;
                }
                return true;
            } 
        </script>
</head>
<body>
    <form id="RefpForm" runat="server">
    <TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
                <tr>
                    <TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Refp</asp:label></TD>
				</tr>
                </TABLE>
   <table>
   <tr><td colspan="2"><asp:HiddenField ID="hidval" runat="server" /></td></tr>
   <tr> 
   <td> 
       <asp:Label ID="lblCode" runat="server" CssClass="mandatory" Width="135px">Code</asp:Label>
    </td>
   <td> <asp:TextBox ID="txtCode" MaxLength="3" runat="server" CssClass="formlines" onblur="chkbadchar(this);" ></asp:TextBox>
   <asp:RequiredFieldValidator ID="RfvCode" runat="server" CssClass="validatemessage" ControlToValidate="txtCode" ErrorMessage="Data Required"></asp:RequiredFieldValidator> </td>
   <td><asp:Label ID="lblSubject" runat="server" CssClass="mandatory" Width="135px">Subject</asp:Label></td>
   <td><asp:TextBox ID="txtSub" MaxLength="10" runat="server" CssClass="formlines" onblur="chkbadchar(this);" ></asp:TextBox>
    
   </td>
    
    
   </tr>
   <tr><td><asp:Label ID="lblNATR" runat="server" CssClass="mandatory" Width="135px" >Nature</asp:Label></td>
   <td><asp:DropDownList ID="DDLNature" runat="server" CssClass="formlines"></asp:DropDownList>
    
    
   </td>

   <td><asp:Label ID="lblSNO" runat="server" CssClass="mandatory" Width="135px">Sort Order Number</asp:Label></td>
   <td><asp:TextBox ID="txtSNO" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    
   </td>
   </tr> 
   <tr><td colspan="4"><asp:Label ID="LblErr" runat="server" CssClass="validatemessage"></asp:Label></td></tr>
   <tr><td><asp:Button ID="btnSave" runat="server" CssClass="formbuttons" 
           Text="Save" onclick="btnSave_Click"  /></td> <td>
      <asp:Button ID="btnClear" runat="server" CssClass="formbuttons" 
           Text="Clear" onclick="btnClear_Click"  CausesValidation="false"/>
           </td>
   <td><asp:Button ID="btnDelete" runat="server" CssClass="formbuttons" Text="Delete" CausesValidation="false"
           onclick="btnDelete_Click" /></td>
           <td><asp:Button ID="btnsearch" runat="server" CssClass="formbuttons" Text="Search"  
           onclick="btnsearch_Click" /></td>
   </tr></table><br />

    

   <table width="1400px">
   <tr><td width="1400px">
   <asp:GridView ID="GVRefp" runat="server" CssClass="tableleftbgcolor"  Width="800px"
    AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Code,NATR"  
    OnPageIndexChanging="GVRefp_Page"   OnRowCommand="GVRefp_Command"
      
           onrowdeleting="GVRefp_RowDeleting" CellPadding="4" ForeColor="#333333" 
           GridLines="None"> 
    
       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    
   <Columns>
    
    <asp:TemplateField HeaderText="Code">
  
   <ItemTemplate>
   
   <asp:Label ID="lblCode" runat="server" CssClass="mandatory" Width="135px" Text='<%#Eval("Code") %>'></asp:Label>
    
   </ItemTemplate>
   <EditItemTemplate>
  <asp:TextBox ID="txtSub" runat="server" CssClass="formlines" Text='<%#Eval("Code") %>'></asp:TextBox>
   </EditItemTemplate>
   </asp:TemplateField>
    
    <asp:TemplateField HeaderText="Subject">
  
   <ItemTemplate>
   
   <asp:Label ID="lblSubject" runat="server" CssClass="mandatory" Width="135px" Text='<%#Eval("SUBJECT") %>'></asp:Label>
    
   </ItemTemplate>
   <EditItemTemplate>
  <asp:TextBox ID="txtSub" runat="server" CssClass="formlines" Text='<%#Eval("SUBJECT") %>'>></asp:TextBox>
   </EditItemTemplate>
   </asp:TemplateField>

   <asp:TemplateField HeaderText="Nature">
   
   <ItemTemplate>
   <asp:Label ID="lblNatr" runat="server" CssClass="mandatory" Width="135px" Text='<%#Eval("NATR") %>'></asp:Label>
    
   </ItemTemplate>
   <EditItemTemplate>
   <asp:DropDownList ID="DDLNature"  DataSourceID="SqlDataSource1" SelectedValue='<%# Eval("NATR") %>' runat="server" AppendDataBoundItems="true" DataTextField="Nature" ></asp:DropDownList> 
    
   </EditItemTemplate>
   </asp:TemplateField>
 
    <asp:TemplateField HeaderText="Sort Order No">
   <ItemTemplate>
   <asp:Label ID="lblSON" runat="server" CssClass="mandatory" Width="135px" Text='<%#Eval("SortOrderNo") %>'></asp:Label>
    
   </ItemTemplate>
   <EditItemTemplate>
   <asp:TextBox ID="txtSON" runat="server" CssClass="formlines" Text='<%#Eval("SortOrderNo") %>'></asp:TextBox>
   </EditItemTemplate>
   </asp:TemplateField>
       <asp:TemplateField HeaderText="Edit">
       <ItemTemplate>
       <asp:LinkButton ID="lnkselect" runat="server" Text="Edit" CommandName="Select" CommandArgument='<%# Eval("Code") + ";" + Eval("NATR")%>' CausesValidation="false"></asp:LinkButton>
       </ItemTemplate>
       </asp:TemplateField>
       
       
       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True"  CausesValidation="false"  
           ShowHeader="True" />
   </Columns>
   
       <EditRowStyle BackColor="#999999" />
       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="#506C8C" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
   
   </asp:GridView>
   </td></tr></table>
   <table>
        
   <tr>
					<td style="width:1400px"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td style="width:1400px"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
   </table>
    </form>
</body>
</html>
