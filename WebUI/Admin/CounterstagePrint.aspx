<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<%@ Page language="c#" Codebehind="CounterstagePrint.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.CounterstagePrint" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>SAReportHome</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	    <style type="text/css">
            .style1
            {
                width: 100%;
            }
        </style>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmSAReportHome" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table class="parabr" cellSpacing="5" cellPadding="2" width="80%" align="center" border="0">
							<tr>
								<td class="rptHead"><IMG src="../Images/report.gif" align="absMiddle">CounterStage 
									Tokenentry Report Parameters<table class="style1" width="100%">
                                        <tr>
                                            <td width="20%">
                                                <asp:label id="lblFromToken" CssClass="mandatory" Runat="server">From TokenNo.</asp:label>
                                            </td>
                                            <td width="30%">
                                                <asp:dropdownlist id="Cbofromyear" runat="server" CssClass="formlines" Width="88px"></asp:dropdownlist><asp:textbox id="txtfromtoken" tabIndex="2" CssClass="formlines" onblur="chkbadchar(this);" Runat="server"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator1" CssClass="mandatory" ErrorMessage="*" ControlToValidate="txtfromtoken"
										Runat="server"></asp:requiredfieldvalidator>
                                            </td>
                                            <td width="20%">
                                                <asp:label id="lblTOToken" CssClass="mandatory" Runat="server">To TokenNo.</asp:label>
                                            </td>
                                            <td width="30%">
                                                <asp:dropdownlist id="cboToyear" runat="server" CssClass="formlines" Width="80px"></asp:dropdownlist><asp:textbox id="txtToToken" tabIndex="1" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="20%">
                                                <asp:label id="lbldate" CssClass="mandatory" Runat="server">Enter Date(DD/MM/YYYY) format</asp:label>
                                            </td>
                                            <td>
                                                <asp:textbox id="txtFromDate" CssClass="formlines" Runat="server" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('frmSAReportHome.txtFromDate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A><asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ErrorMessage="*" ControlToValidate="txtFromDate"></asp:requiredfieldvalidator>
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" 
                                                    ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                                  CssClass="validatemessage"  
                                                    ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:button id="btnSubmit" CssClass="formbuttons" Runat="server" Width="95px" Text="Genarate Report" onclick="btnSubmit_Click"></asp:button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
							</tr>
							<tr>
								<td>
									<table id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td width="2%">&nbsp;</td>
											<td valign="top"><uc1:ReportPage id="ReportPage1" runat="server"></uc1:ReportPage></td>
											<td width="2%">&nbsp;</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
