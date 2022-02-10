<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="MainReports.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAuditReports.MainReports" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>MainReports</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/PreAudit.css" type="text/css" rel="stylesheet">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="MainReports" method="post" runat="server">
			<table height="100%" width="100%">
				<TR>
					<TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td colspan="2" style="PADDING-LEFT:20px" class="rptHead"><img src="../Images/analyzestep.gif" align="absMiddle">
						PreAudit Main Reports</td>
				</tr>
				<tr>
					<td width="63" style="WIDTH: 63px">&nbsp;</td>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="4" width="95%">
							<tr>
								<td class="rptSubHead" width="50%">PreAudit Details</td>
								<td class="rptSubHead" width="50%">Bill Register</td>
							</tr>
							<tr>
								<td>
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/PreAuditReports/LastPayCertificate.aspx"><FONT size="2">Last 
														Pay Certificate</FONT></a></td>
										</tr>
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/PreAuditReports/HistoryOfService.aspx"><FONT size="2">History 
														Of Service</FONT></a></td>
										</tr>
										<tr>
											<td align="center"><img src="../Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/PreAuditReports/LoanDetails.aspx"><FONT size="2">Loan 
														Details</FONT></a></td>
										</tr>
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/PreAuditReports/LeaveAccount.aspx"><FONT size="2">Leave 
														Details</FONT></a></td>
										</tr>
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/PreAuditReports/PayLeaveSalarySlip.aspx"><FONT size="2">Pay 
														Leave Salary Slip</FONT></a></td>
										</tr>
									</table>
								</td>
								<td valign="top">
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="../BillRegister/DailyTokenDetails.aspx"><FONT face="Arial" size="2">Daily 
														Token Details</FONT></a></td>
										</tr>
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/BillRegister/BillDistReport.aspx"><FONT size="2" face="Arial">BillDistributionReport</FONT></a></td>
										</tr>
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/BillRegister/BillDistReport.aspx"><FONT size="2">BillRegister(F.D)</FONT></a></td>
										</tr>
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/BillRegister/BillDistReport.aspx"><FONT size="2">BillRegister(N.F.D)</FONT></a></td>
										</tr>
										<tr>
											<td align="center"><img src="http://localhost/WebUI/Images/dots.jpg" height="12" width="12"></td>
											<td class="linktxt"><a href="/WebUI/BillRegister/Adv_Drawn_Art99.aspx"><FONT size="2">Adv_Drawn_Article99</FONT></a></td>
										</tr>
									</table>
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
			</table>
		</form>
	</body>
</HTML>
