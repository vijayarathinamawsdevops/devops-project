<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<%@ Page language="c#" Codebehind="InputForm.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAuditReports.InputForm" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>InputForm</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/PreAudit.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="InputForm" method="post" runat="server">
			<table height="100%" width="100%" align="center">
				<tr>
					<td height="20"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></td>
				</tr>
				<tr>
					<td>
						<table width="400" align="center">
							<tr>
								<td class="tblrow" colSpan="2">Input Details To Generate Reports</td>
							</tr>
							<tr>
								<td><IMG style="WIDTH: 56px; HEIGHT: 54px" height="54" src="../Images/login-2.gif" width="56"></td>
								<td>
									<table height="50" width="250" align="center">
										<tr>
											<TD><asp:label id="lblEmpIdNo" Runat="server" CssClass="mandatory">EmpIdNo</asp:label></TD>
											<TD><asp:textbox id="txtEmpIdNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
										</tr>
										<TR>
											<TD><asp:label id="lblIdSuffix" Runat="server" CssClass="mandatory">EmpIdsuffix</asp:label></TD>
											<TD><asp:dropdownlist id="drpEMPSuffix" tabIndex="-1" runat="server" Width="135" CssClass="drptxt"></asp:dropdownlist></TD>
										</TR>
										<tr>
											<td><asp:label id="lblbdate" Runat="server" CssClass="mandatory">Date</asp:label></td>
											<td><asp:textbox id="txtdate" Runat="server" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
													href="javascript:show_calendar('InputForm.txtdate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
                                                    
                                                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtdate"
                                                    CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                     |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>    
                                                    
                                                    </td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td align="center" colSpan="2"><asp:button id="btnSubmit" Runat="server" CssClass="formbuttons" Text="Submit" onclick="btnSubmit_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnCancel" Runat="server" CssClass="formbuttons" Text="Cancel"></asp:button></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="20">
					<td style="HEIGHT: 25px"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr height="20">
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
