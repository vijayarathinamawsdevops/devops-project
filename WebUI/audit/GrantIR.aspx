<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GrantIR.aspx.cs" Inherits="eKaruvoolam.WebUI.audit.GrantIR" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CounterMenus" Src="../UserControls/CounterMenus.ascx" %>

<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GrantIR</title>

    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
        <script language="JavaScript" src="../Scripts/date-picker.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr><td colspan="4"><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></td></tr>
    <tr><td colspan="4"><uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></td></tr>
    <tr><td><asp:Label ID="lblSO" runat="server" CssClass="mandatory" Text="Sanction Order No."></asp:Label></td>
    <td><asp:TextBox ID="txtSO" onblur="chkbadchar(this);" runat="server" CssClass="formlines"></asp:TextBox></td>
    <td><asp:Label ID="lblSDate" runat="server" CssClass="mandatory" Text="Sanction Date"></asp:Label></td>
    <td><asp:TextBox ID="txtDate" runat="server" CssClass="formlines"></asp:TextBox>
    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
    href="javascript:show_calendar('txtDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
	<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" CssClass="validatemessage" Display="Dynamic"
	ControlToValidate="txtSanctionDate" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
	<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" 
    ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
	ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></td></tr>

    <tr><td><asp:Label ID="lbldeath" runat="server" Text="Death Date" CssClass="mandatory"></asp:Label></td>
    <td><asp:TextBox ID="txtDeath" onblur="chkbadchar(this);" runat="server" CssClass="formlines"></asp:TextBox>
    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
    href="javascript:show_calendar('txtDeath')"><IMG src="../Images/show-calendar.gif" border="0"></A>
	<asp:RequiredFieldValidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" Display="Dynamic"
	ControlToValidate="txtSanctionDate" ErrorMessage="Data Required"></asp:RequiredFieldValidator>
	<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" 
    ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
	ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
    </td>
    <td><asp:Label ID="SAmt" runat="server" CssClass="mandatory" Text="Sanction Amount"></asp:Label></td>
    <td><asp:TextBox ID="txtAmt" onblur="chkbadchar(this);" runat="server" CssClass="formlines"></asp:TextBox></td></tr>
    <tr><td><asp:Label ID="lblDrawAmt" runat="server" CssClass="mandatory" Text="Drawing Amount"></asp:Label></td>
    <td><asp:TextBox ID="txtDrawAmt" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvAmt" ControlToValidate="txtDrawAmt" runat="server" CssClass="validatemessage" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td><asp:Label ID="lblbalance" runat="server" CssClass="mandatory" Text="Balance Amount"></asp:Label></td>
    <td><asp:TextBox ID="txtbalance" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:TextBox></td></tr>
    <tr><td colspan="4"></td></tr>
    <tr><td colspan="2" align="center"><asp:Button ID="btnsave" runat="server" CssClass="formbuttons" Text="SAVE" onclick="btnsave_Click" /></td>
    <td><asp:Label ID="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label><asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label></td></tr>
    <tr><td colspan="4"></td></tr>
    <tr><td colspan="4"><uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></td></tr>
    <tr><td colspan="4"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td></tr>
	<tr><td colspan="4"><uc1:Footer id="Footer1" runat="server"></uc1:Footer></td></tr>
    </table>
    </div>
    </form>
</body>
</html>
