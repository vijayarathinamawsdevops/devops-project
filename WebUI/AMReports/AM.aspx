<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AM.aspx.cs" Inherits="eKaruvoolam.WebUI.AMReports.AM" %>

<%@ Register src="../UserControls/topheader.ascx" tagname="topheader" tagprefix="uc1" %>
<%@ Register src="../UserControls/PayBreakup.ascx" tagname="PayBreakup" tagprefix="uc6" %>
<%@ Register src="../UserControls/PayDeductions.ascx" tagname="PayDeductions" tagprefix="uc7" %>
<%@ Register src="../UserControls/PayCR_OR.ascx" tagname="PayCR_OR" tagprefix="uc8" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script language="javascript" src="../Scripts/date-picker.js"></script>
    <%--<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">--%>
    <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
    </head>
<body id="AM_AM">
    <form id="form1" runat="server">
    <TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD colSpan="4">
    
       <uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD></TR>
       
				<TR>
					<TD align="center" class="formtitle" style="HEIGHT: 19px">Alteration Memo. - 
                        Payments</TD>
				</TR>
				<tr>
					<td align="center" valign="top" height="100%">
    
        
        <table >
            <tr>
                <td align="left" width="150">
                    <asp:Label ID="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:Label> </td>
                   <td width="450" align="left"> <asp:DropDownList ID="CboTokenYear" runat="server" CssClass="formlines" Width="60" >
                    </asp:DropDownList>
                    <asp:DropDownList ID="DrpStocode" runat="server" CssClass="formlines" 
                        onselectedindexchanged="DrpStocode_SelectedIndexChanged" Width="130"  >
                    </asp:DropDownList>
                    <asp:TextBox ID="txtTokenNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);" 
                        ontextchanged="txtTokenNo_TextChanged" Width="145px"></asp:TextBox>
                    <asp:ImageButton ID="ibtnTokenGo" runat="server" CausesValidation="False" 
                        ImageAlign="AbsBottom" ImageUrl="../Images/go.gif" 
                        onclick="ibtnTokenGo_Click" />
                    <asp:Label ID="lblMessage0" Runat="server">&nbsp;</asp:Label>
                </td>
                <td align="left"><asp:Label ID="lblSRSA" runat="server" CssClass="mandatory">SRSANO.</asp:Label></td>
            <td align="left"><asp:TextBox ID="txtxsrsa" runat="server" CssClass="formlines"></asp:TextBox></td>
                <%--<td align="left" width="150"><asp:Label ID="lblbillamt" runat="server" CssClass="mandatory" Text="Gross Bill Amount"></asp:Label></td>
 
                <td align="left" >
                <asp:TextBox ID="txtBillamount" runat="server" onblur="chkbadchar(this);" CssClass="formlines">0</asp:TextBox>
                </td>--%>

             
            </tr>
            <tr>
                <td align="left"> <asp:Label ID="lblSign" runat="server" CssClass="mandatory">AM Sign</asp:Label> 
                  
                     
                </td>
                <td align="left"><asp:RadioButtonList ID="rbtnas" runat="server"  
                       CssClass="mandatory"   RepeatDirection="Horizontal"
                        onselectedindexchanged="rbtnas_SelectedIndexChanged">
                        <asp:ListItem Value="0">Add</asp:ListItem>
                        <asp:ListItem Value="1">Subtract</asp:ListItem>
                    </asp:RadioButtonList></td>
                <td align="left" width="150">
                    <asp:Label ID="lblAMDate" runat="server" CssClass="mandatory" Text="AM Date"></asp:Label>
                </td>
                <td align="left">
                    
                     <asp:TextBox ID="txtDate" runat="server"    CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
                    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;" href="javascript:show_calendar('txtDate')">
                    <IMG src="../Images/show-calendar.gif" border="0"></A>
                    
                     
                                        <asp:requiredfieldvalidator id="rfvDate" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDate"
										ErrorMessage="*"></asp:requiredfieldvalidator>

                                 <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Format is dd/mm/yyyy"  ControlToValidate="txtDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                    
                    
                    </td>
                 
            </tr>
            <tr>
                <td  align="left">
                    <asp:Label ID="lblBillType" runat="server" Text="Choose Bill Type" 
                        CssClass="mandatory"></asp:Label>
                </td>
                <td align="left" >
                    <asp:DropDownList ID="DrpBillType" runat="server" 
                        CssClass="formlines" AutoPostBack="True" 
                        onselectedindexchanged="DrpBillType_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <%--<td align="left" >
                    <asp:Label ID="lblDOCode" runat="server" CssClass="mandatory" Text="DO Code"></asp:Label>
                </td>
                <td align="left" >
                    <asp:TextBox ID="txtDOCode" runat="server" 
                        ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"
                         Width="100px" MaxLength="5" CssClass="formlines" AutoPostBack="True"></asp:TextBox>
                    &nbsp;
                    <asp:DropDownList ID="DrpDOCode" runat="server" AutoPostBack="True" 
                        CssClass="formlines" 
                        onselectedindexchanged="DrpDOCode_SelectedIndexChanged" Width="160px">
                    </asp:DropDownList>
                </td>--%>
            <%--</tr>
            <tr--%>>
                
                <td align="left" >
                    <asp:Label ID="lblDPCode" runat="server" Text="DP Code" CssClass="mandatory"></asp:Label>
                </td>
                <td width="450" align="left" >
                    <asp:TextBox ID="txtDPcode" runat="server" onblur="chkbadchar(this);"
                        ontextchanged="txtDPcode_TextChanged"  CssClass="formlines" Width="150px"></asp:TextBox>
                    
                    <%--<asp:DropDownList ID="DrpDPCode" runat="server" AutoPostBack="True" 
                        CssClass="formlines" Width="100px"
                        onselectedindexchanged="DrpDPCode_SelectedIndexChanged"  
                        >
                    </asp:DropDownList>
                     <asp:DropDownList ID="DrpSubDPCode" runat="server" AutoPostBack="True" 
                        style="margin-top: 0px"  CssClass="formlines" Width="100px"
                        onselectedindexchanged="DrpSubDPCode_SelectedIndexChanged" >
                    </asp:DropDownList>--%>
                </td>
            </tr>
             
             
            <tr>
                <td colspan="2" align="center">
                    <uc6:PayBreakup ID="PayBreakup1" runat="server" />
                </td>
                <td  colspan="2">
                    <uc7:PayDeductions ID="PayDeductions1" runat="server" />
                </td>
                <td >
                    <uc8:PayCR_OR ID="PayCR_OR1" runat="server" />
                </td>
            </tr>
            <tr><td><asp:Button ID="btnSave" runat="server" CssClass="formbuttons" 
        onclick="btnSave_Click" Text="Save" Height="19px" Width="43px" /> </td>
        <td><asp:Button ID="btnDelete" runat="server" CssClass="formbuttons" OnClick="btndelete_Click" Text="Delete" /></td>
        <td>
          <asp:Button ID="btnCancel" runat="server" CssClass="formbuttons" CausesValidation="false" OnClick="btncancel_Click" Text="Cancel"/></tr>
        </table>
    
    </div>
    <table class="tableleftbgcolor">
        <tr>
            <td>
                
                    <asp:Label  ID="lblMessage" CssClass="validatemessage" runat="server"></asp:Label>
                
            </td>
            <td>
                <asp:Label ID="lblTotal" runat="server" CssClass="validatemessage"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="left">
                <uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
            
        </tr>
    </table>
    </form>
</body>
</html>
