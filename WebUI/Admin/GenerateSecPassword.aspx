<%@ Page language="c#" Codebehind="GenerateSecPassword.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.GenerateSecPassword" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Generate Secondary Password</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmSecondarypwd" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td class="rptHead" style="PADDING-LEFT: 20px" colSpan="2"><IMG src="../Images/settings.gif" align="absMiddle">Administrator 
						Seetings</td>
				</tr>
				<tr>
					<td vAlign="top" align="center" colSpan="2" height="100%">
						<table cellSpacing="4" cellPadding="0" width="80%" border="0">
							<tr>
								<td>
									<div style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 200px"><asp:datagrid id="dgUsersList" runat="server" CellPadding="3" BackColor="White" BorderWidth="1px"
											BorderStyle="None" BorderColor="#CCCCCC" CssClass="tableleftbgcolor" Width="100%">
											<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
											<ItemStyle ForeColor="#000066"></ItemStyle>
											<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
											<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
											<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
										</asp:datagrid></div>
								</td>
							</tr>
							<tr>
								<td align="right"><INPUT class="formbuttons" style="WIDTH: 100px" onclick="SendTextForPrint()" type="button"
										value="  Print Report ">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<TR>
					<TD colSpan="2">
						<div style="VISIBILITY: hidden"><asp:textbox id="txtPrintContent" Width="100%" Runat="server" TextMode="MultiLine" Wrap="False"
								Rows="10" ReadOnly="True" Enabled="True" Height="45px"></asp:textbox></div>
					</TD>
				</TR>
				<tr>
					<td colSpan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
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
		}
		function SendTextForPrint()
		{
			var prtobject;			
			prtobject = new ActiveXObject("RawPrinter.clsPrintLib");			
			prtobject.SendTextToPrinter(document.getElementById("txtPrintMsg").value);
		}
		</SCRIPT>
	</body>
</HTML>
