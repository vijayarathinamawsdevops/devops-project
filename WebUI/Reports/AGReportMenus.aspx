<%@ Page language="c#" Codebehind="AGReportMenus.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.AGReportMenus" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>AG Report Menus</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="../Styles/style1.css">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body leftMargin="0" rightMargin="0" topMargin="0">
		<form id="frmAGReportMenus" method="post" runat="server">
			<TABLE id="Table1" class="tableleftbgcolor" border="0" cellSpacing="0" cellPadding="0"
				width="100%" height="100%">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td style="PADDING-LEFT: 20px" class="rptHead" colSpan="2"><IMG align="absMiddle" src="../Images/iconreport.gif">Report 
						Generation</td>
				</tr>
				<tr>
					<td width="7%">&nbsp;</td>
					<td height="100%" vAlign="top" align="center">
						<table border="0" cellSpacing="4" cellPadding="0" width="95%">
							<tr>
								<td class="rptSubHead" width="50%">Report Category</td>
							</tr>
							<tr>
								<td align="left">
									<table border="0" cellSpacing="2" cellPadding="0" width="100%" class="menutree">
										<tr>
											<td style="WIDTH: 440px; HEIGHT: 20px"><IMG align="middle" src="../Images/bullet2.gif">&nbsp;<A class="linktxt" href="SAReportHome.aspx">Sub 
													Account Reports</A></td>
											<TD style="HEIGHT: 20px"></TD>
											<td style="HEIGHT: 20px"><IMG align="middle" src="../Images/bullet2.gif">&nbsp;<A class="linktxt" href="MAReportHome.aspx">Main 
													Account Reports</A></td>
											<TD style="HEIGHT: 20px"></TD>
										</tr>
										<tr>
											<td style="WIDTH: 440px; HEIGHT: 17px"><IMG align="middle" src="../Images/bullet2.gif">&nbsp;<A class="linktxt" href="../Admin/PostingAbsReport.aspx">
													Posting Report</A>
											</td>
											<TD style="HEIGHT: 17px"></TD>
											<td style="HEIGHT: 17px"><IMG align="middle" src="../Images/bullet2.gif">&nbsp;<A class="linktxt" href="../Admin/UploadtoXML.aspx">
													Generate Accounts File for CTA </A>
											</td>
											<TD style="HEIGHT: 17px"></TD>
										</tr>
										<tr>
											<td style="WIDTH: 440px; HEIGHT: 17px">
                                                <img align="middle" src="../Images/bullet2.gif" />&nbsp;<a class="linktxt" 
                                                    href="ExportData.aspx"> Generate Salary Text File for CTA</a></td>
											<TD style="HEIGHT: 17px">&nbsp;</TD>
											<td style="HEIGHT: 17px">&nbsp;</td>
											<TD style="HEIGHT: 17px">&nbsp;</TD>
										</tr>
										<tr>
											<td style="WIDTH: 440px; display: none;"><IMG align="middle" src="../Images/bullet2.gif">&nbsp; <FONT color="#3300ff" size="2">
													<FONT color="#000099" size="1">Enter TO/STO Code&nbsp; </FONT></FONT>
												<asp:textbox id="txtToCode" runat="server" Width="56px" onblur="chkbadchar(this);" ontextchanged="txtToCode_TextChanged"></asp:textbox>&nbsp;<asp:linkbutton style="Z-INDEX: 0" id="lnkupload" Runat="server" Font-Size="10" Font-Name="Times New Roman" onclick="lnkupload_Click">Import SubTreasury Data to Main Server</asp:linkbutton></td>
											<TD style="HEIGHT: 17px"></TD>
											<td style="HEIGHT: 17px">&nbsp;</td>
											<TD style="HEIGHT: 17px"></TD>
										<tr>
											<td colSpan="2" align="left" style="display: none"><IMG align="middle" src="../Images/bullet2.gif">&nbsp;<asp:linkbutton style="Z-INDEX: 0" id="lnkcompiledata" Runat="server" Font-Size="10pt" Font-Name="Times New Roman"
													Visible="True" Font-Bold="True" Font-Names="Times New Roman" onclick="lnkcompiledata_Click">Upload Linuxdata to ATBPS-SQL Server</asp:linkbutton></td>
											<TD align="left"></TD>
											<TD align="center"></TD>
										</tr>
									</table>
									<asp:label id="lblMessage" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="#00C000"></asp:label></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
