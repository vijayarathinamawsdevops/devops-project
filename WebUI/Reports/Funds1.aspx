<%@ Page language="c#" Codebehind="Funds1.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.Funds1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Funds1</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Funds1" method="post" runat="server">
			<asp:Button id="btnPrint" style="Z-INDEX: 101; LEFT: 33px; POSITION: absolute; TOP: 106px" runat="server" Text="Generate" CssClass="formbuttons" onclick="btnPrint_Click"></asp:Button>
			<asp:Button id="btnView" style="Z-INDEX: 102; LEFT: 128px; POSITION: absolute; TOP: 104px" runat="server" Text="View" onclick="btnview_Click"></asp:Button>
			<asp:TextBox id="txtrptdate" style="Z-INDEX: 103; LEFT: 127px; POSITION: absolute; TOP: 30px; right: 955px;" 
              onblur="chkbadchar(this);"  runat="server" Width="97px" CssClass="formlines"></asp:TextBox>
            <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
			href="javascript:show_calendar('txtrptdate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
              <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtrptdate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
			<asp:Label id="lblrptdate" style="Z-INDEX: 104; LEFT: 41px; POSITION: absolute; TOP: 31px" runat="server" Width="66px" Height="11px" CssClass="formlines">Enter Date</asp:Label></form>
	</body>
</HTML>
