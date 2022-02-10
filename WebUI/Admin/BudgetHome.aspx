<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Page language="c#" Codebehind="BudgetHome.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.BudgetHome" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Admin Settingse</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="frmBudget" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td colspan="2" style="PADDING-LEFT:20px" class="rptHead"><img src="../Images/settings.gif" align="absMiddle">Administrator 
						Settings</td>
				</tr>
				<tr>
					<td width="7%">&nbsp;</td>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="4" width="95%" 
                            style="font-size: medium">
							<tr>
								<td class="rptSubHead"><STRONG>Budget Allocation Details</STRONG></td>
							</tr>
							<tr>
								<td valign="top">
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td><img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Masters/DoAllotmentMas.aspx" class="linktxt">Budget 
													Allotment Quartely Wise</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Admin/BudgetBalance.aspx" class="linktxt">View 
													Budget Balance</a></td>
										</tr>
										<TR>
											<td><IMG src="../Images/bullet2.gif" align="middle">&nbsp;<A class="linktxt" href="../Admin/budgetupload.aspx">Upload 
													budget Data</A></td>
										</TR>
										<TR>
											<TD></TD>
										</TR>
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
			</TABLE>
		</form>
	</body>
</HTML>
