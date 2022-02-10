<%@ Page language="c#" Codebehind="DOSignatureView.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.DOSignatureView" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>DOSignatureView</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="DOSignatureView" method="post" runat="server">
			<asp:Button id="btnGo" style="Z-INDEX: 101; LEFT: 190px; POSITION: absolute; TOP: 5px" runat="server"
				Text="Go" CssClass="formbuttons" Width="60px" onclick="Button1_Click"></asp:Button>
			<asp:TextBox id="txtDOCode" style="Z-INDEX: 102; LEFT: 83px; POSITION: absolute; TOP: 7px" runat="server"
				CssClass="formlines" MaxLength="5" Width="87px"></asp:TextBox>
			<asp:Label id="lblDOCode" style="Z-INDEX: 103; LEFT: 5px; POSITION: absolute; TOP: 6px" runat="server">DO Code</asp:Label>
			<asp:RequiredFieldValidator id="rfvDOCode" style="Z-INDEX: 104; LEFT: 177px; POSITION: absolute; TOP: 8px" runat="server"
				CssClass="validationmessage" ErrorMessage="*" ControlToValidate="txtDOCode"></asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
