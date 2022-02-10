<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paochequenew.aspx.cs" Inherits="eKaruvoolam.WebUI.Cheque.Paochequenew" %>
 <%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ChequeMenus" Src="../UserControls/ChequeMenus.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table width="100%" align="center" border="0">
      <tr><td><uc1:chequemenus id="ChequeMenus1" runat="server"></uc1:chequemenus></td></tr>
      <tr><td align="center"><asp:label id="frmtitle" runat="server" CssClass="formtitle">Generate Cheque For Printing</asp:label></td></tr>
      <tr><td><asp:button id="btnGenerate" runat="server" CssClass="formbuttons" Text="Generate" Width="100px" onclick="btnGenerate_Click"></asp:button></td></tr>
      </table>
      <div id="chqdisplay" style="DISPLAY:block">
      <asp:Panel ID="pnlPrintPass" runat="server" Visible="False">
      <table>
      <tr><td><INPUT id="Button1" class="formbuttons" onclick="SendTextForPrinting()" value=" Print Cheque  "
															type="button" name="Button1" runat="server"></td></tr>
       <tr><td class="mandatory">Cheque Preview</td></tr>
       <tr><td><DIV style="DISPLAY: block">
															<asp:textbox id="txtChequetext" Width="100%" Runat="server" Height="95px" Enabled="True" Rows="10"
																Wrap="False" ReadOnly="True" TextMode="MultiLine"></asp:textbox><BR>
															<asp:Label id="lblChequetext" Runat="server"></asp:Label></DIV></td></tr>
       <tr><td><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></td></tr>
       <tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
      </table>
      </asp:Panel></div>
    </div>
    </form>

    <script language="javascript" type="text/javascript">
        function SendTextToPrinter() {
            var prtobj;
            prtobj = new ActiveXObject("RawPrinter.clsPrintLib");
            prtobj.SendTextToSelectedPrinter(document.getElementById("txtChequetext").value);
            prtobj = null;
        }
        function SendTextForPrinting() {
            var prtobject;
            var retvalue;
            prtobject = new ActiveXObject("RawPrinter.clsPrintLib");
            //prtobject.SendTextToPrinter(document.getElementById("txtChequetext").value);
            alert(document.getElementById("lblChequetext").innerText);
            retvalue = prtobject.SendBytesToPrinter(document.getElementById("lblChequetext").innerText);
            document.getElementById("txtChequetext").value = "";
            document.getElementById("chqdisplay").style.display = "none";
            prtobject = null;
        }
		</script>
</body>
</html>
