<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EcsMenus.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.EcsMenus" %>

<link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../Scripts/date-picker.js"></script>
<script language="JavaScript" src="../Scripts/ekvm.js"></script>
<link rel="stylesheet" type="text/css" href="../Styles/menu_style.css" />

   <div class="menu"> 
          <ul id="navlist">
            <li>   
             <asp:HyperLink ID="lnkBatchAssigning" runat="server"   
                  style="text-decoration: underline" NavigateUrl="~/WebUI/Admin/EcsBatch.aspx">ECS Batch Assigning</asp:HyperLink>      
           </li>
          <li>
             <asp:HyperLink ID="lnkEcsCredit" runat="server"   
                 style="text-decoration: underline" NavigateUrl="~/WebUI/Masters/EcsCredit.aspx">Credit ECS</asp:HyperLink>  
          </li>
          <li>
            <asp:HyperLink ID="lnkEcsReports" runat="server"  
                  style="text-decoration: underline" NavigateUrl="~/WebUI/Admin/EcsHome.aspx">ECS Reports</asp:HyperLink>            
          </li>
          <li>
            <asp:HyperLink ID="lnkECSHistory" runat="server"  
                  style="text-decoration: underline" NavigateUrl="~/WebUI/Admin/ECSHistory.aspx">ECS History</asp:HyperLink>            
          </li>
          <li>
            <asp:HyperLink ID="HyperLink1" runat="server"  
                  style="text-decoration: underline" NavigateUrl="../Masters/ECSBatchRemove.aspx">ECS Batch Delete</asp:HyperLink>            
          </li>
          </ul>
     </div>