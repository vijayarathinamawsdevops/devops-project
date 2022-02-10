<%@ Page language="c#" Codebehind="PrintObjections.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PrintObjections" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="javascript">
		 function PrintMe()
		 {			
			//document.getElementById("btnPrint").style.display:hidden;
			//window.print();			
		 }
		</script>
	</HEAD>
	<body onload="PrintMe()" MS_POSITIONING="GridLayout">
		<form id="PrintObjections" method="post" runat="server">
			<br>
			<TABLE class="brdr" id="Table1" cellSpacing="2" cellPadding="1" width="98%" align="center"
				border="0">
				<tr>
					<td class="formbuttonsbg" colSpan="4" height="43"><b>Automated Treasury Bill And 
							Accounting System</b></td>
				</tr>
				<TR>
					<TD colSpan="2"><asp:label id="Label1" runat="server" CssClass="normal">Label</asp:label></TD>
				</TR>
				<TR>
					<td align="right" colSpan="3"><asp:panel id="pnlButtons" Width="600px" Runat="server" Visible="False"><INPUT class="formbuttons" style="WIDTH: 100px" onclick="SendTextForPrint()" type="button"
								value="  Print  ">
						</asp:panel></td>
					<td><asp:button id="noprint" runat="server" CssClass="formbuttons" Width="100px" Text="Done" onclick="btnReturn_Click"></asp:button><asp:button id="btnPrint" Runat="server" Text="Print" Visible="False" onclick="btnPrint_Click"></asp:button></td>
				</TR>						
			</TABLE>
			<TABLE id="Table11" cellSpacing="2" cellPadding="1" width="98%" align="center"	border="0">
				<TR>
					<TD colSpan="4">
						<div style="VISIBILITY: hidden">
							<asp:textbox id="txtPrintMsg" Height="45px" Width="100%" Enabled="True" ReadOnly="True" Rows="10"
								Wrap="False" TextMode="MultiLine" Runat="server"></asp:textbox>
							<br>
							<asp:Label ID="lblprttext" Runat="server"></asp:Label>
						</div>
					</TD>
				</TR>		
			</table>
		</form>
		<SCRIPT language="javascript">
		function textPrint()
		{
			var obj;			
			obj = new ActiveXObject("TitleMessage.AlertBox");
			obj.Samp = document.getElementById("txtPrintMsg").value;
			obj.StartPrinting(document.getElementById("txtPrintMsg").value);
		}
		function SendTextToPrinter()
		{
			var prtobj;			
			prtobj = new ActiveXObject("RawPrinter.clsPrintLib");			
			prtobj.SendTextToSelectedPrinter(document.getElementById("txtPrintMsg").value);
			prtobj = null;
		}
		function SendTextForPrint()
		{
			var prtobject;			
			prtobject = new ActiveXObject("RawPrinter.clsPrintLib");						
			//alert(document.getElementById("lblprttext").innerText); 
			prtobject.SendTextToPrinter(document.getElementById("lblprttext").innerText);
			prtobject = null;
		}
		</SCRIPT>
	</body>
</HTML>