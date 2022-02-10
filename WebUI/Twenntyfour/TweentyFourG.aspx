<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TweentyFourG.aspx.cs" Inherits="eKaruvoolam.WebUI.Twenntyfour.TweentyFourG" %>
 <%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
 <%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tweenty FourG</title>
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
<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
    <form id="TweentyFourForm" runat="server">
    <Ajax:ToolkitScriptManager ID="AjaxScript" runat="server"></Ajax:ToolkitScriptManager>
     <table class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<tr>
					<td><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></td></tr>
                    <tr>
                    <TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">IT Header</asp:label></TD>
				</tr>
                </table>
    <div>
    <ajax:Accordion
    ID="MyAccordion"  
    runat="Server"
    SelectedIndex="0"
     Width="1400px"
    AutoSize="none"
    FadeTransitions="true"
    TransitionDuration="250"
    FramesPerSecond="40"
    RequireOpenedPane="false"
    SuppressHeaderPostbacks="true">
        
    <Panes>
    
        <ajax:AccordionPane ID="AccordionPane1"
            HeaderCssClass="accordionHeader"
            HeaderSelectedCssClass="accordionHeaderSelected" runat="server"
            ContentCssClass="accordionContent">
            
            <Header>
    <h3>Account Officer Details<asp:Image ID="imgarrow1" runat="server" ImageUrl="../images/Click.jpg" Width="50px" Height="15px" /></h3>
    </Header>
     <Content> 
    <table class="tableleftbgcolor">
    <tr><td>
    <asp:Label id="lblAccount" runat="server" CssClass="mandatory" Width="135px"> AIN</asp:Label>
    </td>
    <td>
    <asp:textbox id="txtAccount" MaxLength="7" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox>
    <asp:requiredfieldvalidator ID="revAcc" runat="server" ErrorMessage="AIN Required" CssClass="validatemessage" ControlToValidate="txtAccount"></asp:requiredfieldvalidator>
    </td>
    <td><asp:Label id="lblPAO" runat="server" CssClass="mandatory" Width="135px">PAO Number</asp:Label></td> 
    <td><asp:TextBox ID="txtPAO"  MaxLength="7" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
    </tr>
    
    <tr><td><asp:Label id="lbloffice" runat="server" CssClass="mandatory" Width="135px">Account Office Name</asp:Label></td>
    <td><asp:TextBox ID="txtoffice" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="revoffice" runat="server" ErrorMessage="Office Name Required" CssClass="validatemessage" ControlToValidate="txtoffice"></asp:requiredfieldvalidator>
    </td>
    
    <td><asp:Label id="lblAddress2" runat="server" CssClass="mandatory" Width="135px">Address2</asp:Label></td> 
    <td><asp:TextBox ID="txtAddress2" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
    
    </tr>
    <tr>
    <td><asp:Label id="lblAddress1" runat="server" CssClass="mandatory" Width="135px">Address1</asp:Label></td>
    <td><asp:TextBox ID="txtAddress1" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="revAddress1" runat="server" ErrorMessage="Address Required" CssClass="validatemessage" ControlToValidate="txtAddress1"></asp:requiredfieldvalidator>
    </td>
     <td><asp:Label id="lblAddress4" runat="server" CssClass="mandatory" Width="135px">Address4</asp:Label></td> 
    <td><asp:TextBox ID="txtAddress4" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
     
    </tr>
    <tr><td><asp:Label id="lblAddress3" runat="server" CssClass="mandatory" Width="135px">Address3</asp:Label></td>
    <td><asp:TextBox ID="txtAddress3" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    
    </td>
    <td><asp:Label id="lblEmail" runat="server" CssClass="mandatory" Width="135px">Email ID</asp:Label></td> 
    <td><asp:TextBox ID="txtEmail" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="rvEmail" runat="server" ErrorMessage="Mail Required" CssClass="validatemessage" ControlToValidate="txtEmail"></asp:requiredfieldvalidator>
    <asp:RegularExpressionValidator ID="revEmail" runat="server" 
            ErrorMessage="Format is Wrong" CssClass="validatemessage" 
            ControlToValidate="txtEmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
    </tr>
    <tr><td><asp:Label id="lblCity" runat="server" CssClass="mandatory" Width="135px">City</asp:Label></td> 
    <td><asp:TextBox ID="txtCity" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="revCity" runat="server" ErrorMessage="City Required" CssClass="validatemessage" ControlToValidate="txtCity"></asp:requiredfieldvalidator>

    </td>
    <td><asp:Label id="lblSTD" runat="server" CssClass="mandatory" Width="135px">STD Number</asp:Label></td> 
    <td><asp:TextBox ID="txtCode" runat="server" MaxLength="5" Width="50px" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="revCode" runat="server" ErrorMessage="*" CssClass="validatemessage" ControlToValidate="txtCode"></asp:requiredfieldvalidator>
     <asp:TextBox ID="txtstd" runat="server" MaxLength="10" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="revstd" runat="server" ErrorMessage="Phone Number Required" CssClass="validatemessage" ControlToValidate="txtCode"></asp:requiredfieldvalidator>
    </td>
    </tr>
     <tr><td><asp:Label id="lblPincode" runat="server" CssClass="mandatory" Width="135px">Pin Code</asp:Label></td> 
    <td><asp:TextBox ID="txtPincode" MaxLength="6" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="revPin" runat="server" ErrorMessage="PinCode Required" CssClass="validatemessage" ControlToValidate="txtPincode"></asp:requiredfieldvalidator>
    </td>
     <td><asp:Label id="lblstate" runat="server" CssClass="mandatory" Width="135px">State</asp:Label></td> 
    <td><asp:TextBox ID="txtstate" MaxLength="2" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="revstate" runat="server" ErrorMessage="State Required" CssClass="validatemessage" ControlToValidate="txtstate"></asp:requiredfieldvalidator>
    </td>
     
      </tr>
     </table>
     </Content> </ajax:AccordionPane></Panes> 
     
 
        
    <Panes>
    
        <ajax:AccordionPane ID="AccordionPane2"
            HeaderCssClass="accordionHeader"
            HeaderSelectedCssClass="accordionHeaderSelected" runat="server"
            ContentCssClass="accordionContent">
            
            <Header>
    <h3>Responsible Person Details<asp:Image ID="Image1" runat="server" ImageUrl="../images/Click.jpg" Width="50px" Height="15px" /></h3>
    </Header>
    <Content> 
    <table class="tableleftbgcolor"> <tr><td><asp:Label ID="lblresname" runat="server" CssClass="mandatory" Width="135px">Name</asp:Label></td> 
    <td><asp:TextBox ID="txtresname" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="rfvname" runat="server" ErrorMessage="Name Required" CssClass="validatemessage" ControlToValidate="txtresname"></asp:requiredfieldvalidator>
    </td>
    <td><asp:Label ID="lblresAddress2" runat="server" CssClass="mandatory" Width="135px">Address2</asp:Label></td> 
    <td><asp:TextBox ID="txtresAddress2" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
    </tr>
    <tr><td><asp:Label ID="lblresDestination" runat="server" CssClass="mandatory" Width="135px">Destination</asp:Label></td> 
    <td><asp:TextBox ID="txtreDestination" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="rfvDestination" runat="server" ErrorMessage="Name Required" CssClass="validatemessage" ControlToValidate="txtreDestination"></asp:requiredfieldvalidator>
    </td>
    <td><asp:Label ID="lblresAddress4" runat="server" CssClass="mandatory" Width="135px">Address4</asp:Label></td> 
    <td><asp:TextBox ID="txtresAddress4" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
    </tr>
    
    <tr><td><asp:Label ID="lblresAddress1" runat="server" CssClass="mandatory" Width="135px">Address1</asp:Label></td> 
    <td><asp:TextBox ID="txtresAddress1" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
     <asp:requiredfieldvalidator ID="rfvAddress" runat="server" ErrorMessage="Address Required" CssClass="validatemessage" ControlToValidate="txtresAddress1"></asp:requiredfieldvalidator>
    </td>
    <td><asp:Label ID="lblresMobile" runat="server" CssClass="mandatory" Width="135px">Mobile Number</asp:Label></td> 
    <td><asp:TextBox ID="txtresMobile" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
    </tr>
     <tr><td><asp:Label ID="lblresAddress3" runat="server" CssClass="mandatory" Width="135px"> Address3</asp:Label></td> 
    <td><asp:TextBox ID="txtresAddress3" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
    
    </tr>
     <tr><td><asp:Label ID="lblresCity" runat="server" CssClass="mandatory" Width="135px">City</asp:Label></td> 
    <td><asp:TextBox ID="txtresCity" MaxLength="25" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="rfvCity" runat="server" ErrorMessage="City Required" CssClass="validatemessage" ControlToValidate="txtresCity"></asp:requiredfieldvalidator>
    </td>
    
    </tr>
     <tr><td><asp:Label ID="lblresPinCode" runat="server" CssClass="mandatory" Width="135px">Pin Code</asp:Label></td> 
    <td><asp:TextBox ID="txtresPin" MaxLength="6" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
     <asp:requiredfieldvalidator ID="rfvpin" runat="server" ErrorMessage="PinCode Required" CssClass="validatemessage" ControlToValidate="txtresPin"></asp:requiredfieldvalidator>
    </td>
    <td><asp:Label ID="lblresstd" runat="server" CssClass="mandatory" Width="135px">STD Number</asp:Label></td> 
    <td><asp:TextBox ID="txtresCode" MaxLength="5" Width="50px" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="rfvCode" runat="server" ErrorMessage="*" CssClass="validatemessage" ControlToValidate="txtresCode"></asp:requiredfieldvalidator>
    <asp:TextBox ID="txtresstd" MaxLength="10" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="rfvstd" runat="server" ErrorMessage="Phone Number Required" CssClass="validatemessage" ControlToValidate="txtresstd"></asp:requiredfieldvalidator></td>
    </tr>
    <tr><td><asp:Label ID="lblFinance" runat="server" CssClass="mandatory" Width="135px">Finance Year</asp:Label></td> 
    <td><asp:TextBox ID="txtFinance" MaxLength="4" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
     
    </td>
    <td><asp:Label ID="lblAoCategory" runat="server" CssClass="mandatory" Width="135px">AO Category</asp:Label></td>
    <td><asp:TextBox ID="txtCategory" MaxLength="2" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
        <asp:requiredfieldvalidator ID="rfvCategory" runat="server" ErrorMessage="Category Required" CssClass="validatemessage" ControlToValidate="txtCategory"></asp:requiredfieldvalidator>

    </td>
    </tr>
    <tr><td><asp:Label ID="lblresstate" runat="server" CssClass="mandatory" Width="135px">State</asp:Label></td> 
    <td><asp:TextBox ID="txtresState" MaxLength="2" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="rfvState" runat="server" ErrorMessage="State Required" CssClass="validatemessage" ControlToValidate="txtresState"></asp:requiredfieldvalidator>
    </td>
    <td><asp:Label ID="lblresEmail" runat="server" CssClass="mandatory" Width="135px">Email ID</asp:Label></td> 
    <td><asp:TextBox ID="txtresEmail" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
    <asp:requiredfieldvalidator ID="rfvemail" runat="server" ErrorMessage="Mail Required" CssClass="validatemessage" ControlToValidate="txtresEmail"></asp:requiredfieldvalidator>
    <asp:RegularExpressionValidator ID="revresEmail" runat="server" 
            ErrorMessage="Format is Wrong" CssClass="validatemessage" 
            ControlToValidate="txtresEmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td>
     </table></Content></ajax:AccordionPane></Panes> 
      
      
        
    <Panes>
    
        <ajax:AccordionPane ID="AccordionPane3"
            HeaderCssClass="accordionHeader"
            HeaderSelectedCssClass="accordionHeaderSelected" runat="server"
            ContentCssClass="accordionContent">
            
            <Header>

     <h3>Category of Deductor of whom statement is being submitted * Central/State Government<asp:Image ID="Image2" runat="server" ImageUrl="../images/Click.jpg" Width="50px" Height="15px" /></h3></Header> 
     <Content> 
     <table class="tableleftbgcolor">
     <tr><td><asp:Label ID="lblStateName" runat="server" CssClass="mandatory" Width="135px">State Name</asp:Label></td> 
    <td><asp:TextBox ID="txtStateName" MaxLength="2" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
    <td><asp:Label ID="lblMinistry" runat="server" CssClass="mandatory" Width="135px">Ministry</asp:Label></td> 
    <td><asp:TextBox ID="txtministry" MaxLength="3" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td></tr>
    <tr><td><asp:Label ID="lblSubMinistry" runat="server" CssClass="mandatory" Width="135px">SubMinistry</asp:Label></td> 
    <td><asp:TextBox ID="txtSubMinistry" MaxLength="3" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
    <%--<td><asp:Label ID="lblTOCode" runat="server" CssClass="mandatory" Width="135">TOCode</asp:Label></td>
    <td><asp:TextBox ID=txtTOCde" runat="server" Enabled="false" CssClass=formlines"></asp:TextBox></td>--%></tr>
     </table>
     </Content></ajax:AccordionPane></Panes></ajax:Accordion>
       
     <table class="tableleftbgcolor">
     <tr><td><asp:HiddenField ID="hidval" runat="server" /></td></tr>
     <tr><td colspan="2"><asp:Label ID="lblError" runat="server" CssClass="validatemessage"></asp:Label></td></tr>
     <tr><td align="left"><asp:Button ID="btnsave" runat="server" CssClass="formbuttons" Text="Save" Width="100px"
             onclick="btnsave_Click"/></td>
     <td align="left"><asp:Button ID="btnCancel" runat="server" CssClass="formbuttons" Text="Cancel" Width="100px"
             onclick="btnCancel_Click" /></td></tr>
    <tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
    <tr><td colspan="2" style="width:1400px"><uc1:footer id="Footer1" runat="server"></uc1:footer></td></tr>
     </table>
    </div>
    </form>
</body>
</html>
