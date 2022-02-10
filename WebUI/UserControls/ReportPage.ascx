<%@ Control Language="c#" AutoEventWireup="True" Codebehind="ReportPage.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.ReportPage" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<meta content="JavaScript" name="vs_defaultClientScript">
<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
<script language="JavaScript" src="../Scripts/date-picker.js"></script>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<table cellSpacing="2" cellPadding="2" width="100%" border="0">
	<tr>
		<td width="5%"><IMG src="../images/report.gif" align="absMiddle"></td>
		<td><asp:label id="lblReportTitle" CssClass="rptHead" Runat="server"></asp:label></td>
	</tr>
	<tr>
		<td colSpan="2">
			<table class="parabr" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td class="menuon" width="78%">Report Preview</td>
					<td><IMG height="27" src="../images/menu_on.gif" width="28"></td>
					<td width="25%">
						<table cellSpacing="2" cellPadding="0" width="100%" border="0">
							<tr>
								<td class="imgbuttons" align="right" width="10%">&nbsp;<asp:imagebutton 
                                        id="imgbacktomenu" Runat="server" ImageUrl="../Images/back.gif" ImageAlign="AbsMiddle"
										AlternateText="To Print the Report" onclick="imgbacktomenu_Click" style="height: 10px"></asp:imagebutton>&nbsp;Menu</td>
								<td class="imgbuttons" width="7%"><asp:imagebutton id="imgSave" Runat="server" ImageUrl="../Images/save.jpg" ImageAlign="AbsMiddle"
										AlternateText="To Save the Report as Text File" BorderStyle="None" onclick="imgSave_Click"></asp:imagebutton>&nbsp;Save</td>
								<td class="imgbuttons" align="right" width="7%">&nbsp;<asp:imagebutton 
                                        id="imgPrint" Runat="server" ImageUrl="../Images/printer.gif" ImageAlign="AbsMiddle"
										AlternateText="To Print the Report" onclick="imgPrint_Click" Width="17px"></asp:imagebutton>&nbsp;Print</td>
								<td class="imgbuttons" align="right" width="7%">&nbsp;<asp:imagebutton id="Imagebutton1" Runat="server" ImageUrl="../Images/printer.gif" ImageAlign="AbsMiddle"
										AlternateText="To download the Report" onclick="Imagebutton1_Click"></asp:imagebutton>&nbsp;Download</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="top" width="100%" colSpan="3"><asp:textbox id="txtReportText" CssClass="lblrptText" Runat="server" Rows="25" Wrap="False" ReadOnly="True"
							Columns="100" Width="100%" TextMode="MultiLine"></asp:textbox></td>
				</tr>
				<tr>
					<td colSpan="3">
						<asp:label id="lblMessage" runat="server" CssClass="validatemessage" Height="10px"></asp:label>
					</td>
				</tr>
				<tr>
					<td colSpan="3">
						<div style="DISPLAY: none">
							<asp:Label ID="lblFileName" Runat="server"></asp:Label></div>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<script language="javascript">
function SendTextForPrint(txtClientId)
{
	var prtobject;			
	prtobject = new ActiveXObject("RawPrinter.clsPrintLib");							
	alert(document.getElementById(txtClientId).value);
	prtobject.SendTextToPrinter(document.getElementById(txtClientId).value);
	prtobject = null;
}
</script>
