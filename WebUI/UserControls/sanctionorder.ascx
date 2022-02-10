<%@ Control Language="c#" AutoEventWireup="True" Codebehind="sanctionorder.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.sanctionorder" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<asp:label id="lblSanctionOrder" CssClass="mandatory" runat="server">Sanction Order</asp:label>
<asp:textbox id="txtSanctionOrder" runat="server" onblur="chkbadchar(this);"></asp:textbox>
<asp:label id="lblSanctionDate" CssClass="mandatory" runat="server">Sanction Date</asp:label>
<asp:textbox id="txtSanctionDate" CssClass="formlines" runat="server" onblur="chkbadchar(this);"></asp:textbox>
<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;" href="javascript:show_calendar('this.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtSanctionDate"
CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
<script language="JavaScript" src="../Scripts/date-picker.js"></script>
