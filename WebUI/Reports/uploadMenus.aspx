<%@ Page language="c#" Codebehind="uploadMenus.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.uploadMenus" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>AG Report Menus</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<form id="frmAGReportMenus" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td colspan="2" style="PADDING-LEFT:20px" class="rptHead"><img src="../Images/iconreport.gif" align="absMiddle">&nbsp;&nbsp; 
						Upload Files to CTA</td>
				</tr>
				<tr>
					<td width="7%">&nbsp;</td>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="4" width="95%">
							<tr>
								<td class="rptSubHead" width="50%"><EM><FONT color="#33cc00" size="2"><FONT color="#ff3300">Note 
												:</FONT> <FONT color="#0000cc">The files should be in the format specified ie 
												p1.txt ,cn.txt, r1.txt </FONT></FONT></EM></td>
							</tr>
							<tr>
								<td>
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<TD align="left"><IMG style="Z-INDEX: 0" align="middle" src="../Images/bullet2.gif">&nbsp;&nbsp;
												<asp:LinkButton style="Z-INDEX: 0" id="lnkuploadtoCTA" Runat="server" Font-Size="Medium" Font-Name="Times New Roman"
													Visible="True" Font-Bold="True" CssClass="lnk" onclick="lnkuploadtoCTA_Click">Upload Files to CTA</asp:LinkButton></TD>
										</tr>
										<TR>
											<TD align="left"></TD>
										</TR>
										<TR>
											<TD align="left"></TD>
										</TR>
										<TR>
											<%--<TD align="left"><IMG style="Z-INDEX: 0" align="middle" src="../Images/bullet2.gif">&nbsp;&nbsp;&nbsp;
												<asp:LinkButton style="Z-INDEX: 0" id="lbtnReport" Font-Bold="True" Visible="True" Font-Name="Times New Roman"
													Font-Size="Medium" Runat="server" CssClass="lnk" onclick="lbtnReport_Click">Display status Report</asp:LinkButton></TD>--%>
										</TR>
									</table>
									<asp:Label id="lblMessage" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="#00C000"></asp:Label>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td colspan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
