<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="EcsHome.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.EcsHome" %>
<%@ Register src="../UserControls/EcsMenus.ascx" tagname="EcsMenus" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Admin Settingse</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
        <script language="javascript" src="../Scripts/date-picker.js"></script>
	    <style type="text/css">
            .style2
            {
                height: 15px;
            }
            .style3
            {
                font-size: 14px;
                font-family: Verdana;
                font-weight: bold;
                color: Blue;
                height: 20px;
                padding-right: 15px;
            }
        </style>
	    </HEAD>
    
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="frmAdmin" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
                <td   colSpan="2"  >
    
                    <uc2:EcsMenus ID="EcsMenus1" runat="server" />
    
                    </td>
				</tr>
				<tr>
					<td width="7%">&nbsp;</td>
					<td vAlign="top" align="center" height="100%">
						<table cellSpacing="4" cellPadding="0" width="95%" border="0">
							<tr>
								<td>
									<table cellSpacing="2" cellPadding="0" width="65%"
										border="0" align="center" class="parabr">
										<TBODY>
											<TR>
												<TD class="style3" align="left" colspan="2" >
												    ECS Reports</TD>
											</TR>
											<TR>
												<TD align="center" colspan="2" style="font-size: medium">&nbsp;</TD>
											</TR>
											<TR>
												<TD align="left" style="font-size: medium" width="20%">
													<asp:label id="Label1" runat="server" CssClass="mandatory">Enter ECS Batch</asp:label></TD>
												<TD align="left" style="font-size: medium" width="45%">
                                                    <asp:textbox id="txtbatch" 
                                                        CssClass="formlines" Runat="server" onblur="chkbadchar(this);" 
                                                        MaxLength="11" AutoPostBack="True" ontextchanged="txtbatch_TextChanged"></asp:textbox><asp:Label 
                                                        ID="Label7" runat="server" CssClass="validatemessage" 
                                                        Text="e.g. : TOCode+ECSBatch"></asp:Label>
                                                    <asp:button id="btnRBI" runat="server" CssClass="formbuttons" Width="105px" Text="Generate Report" onclick="btnRBI_Click"></asp:button>
                                                    <asp:button id="btnDownload" runat="server" CssClass="formbuttons" 
                                                        Width="105px" Text="Download" onclick="btnDownload_Click"></asp:button>
													</TD>
											</TR>
											<TR>
												<TD align="left" style="font-size: medium" width="22%">
													<asp:label id="lbldt" runat="server" CssClass="mandatory">Settlement Date for RECS</asp:label></TD>
												<TD align="left" style="font-size: medium" width="45%">
                                                <asp:textbox id="txtFromDate" CssClass="formlines" Runat="server" 
                                                        onblur="chkbadchar(this);" MaxLength="10" Enabled="False"></asp:textbox>
<%--  16-04-2013 Hide Calender dates comes on run time    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('txtFromDate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>--%>
                                                        <FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT><asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
													</TD>
											</TR>
											<TR>
												<TD align="left" style="font-size: medium" width="20%"><asp:label id="Label2" 
                                                        runat="server" CssClass="mandatory">Maximum Amount(Salary)</asp:label></TD>
												<TD align="left" style="font-size: medium" width="45%"><asp:textbox id="txtmaxamt" CssClass="formlines" Runat="server" Enabled="False" onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:label id="Label4" runat="server" CssClass="mandatory" Visible="False">NSD</asp:label><asp:textbox id="txtnsd1" CssClass="formlines" Runat="server" Enabled="False" Visible="False" onblur="chkbadchar(this);"></asp:textbox></TD>
											</TR>
											<TR>
												<TD align="left" style="font-size: medium" width="20%"><asp:label id="Label3" 
                                                        runat="server" CssClass="mandatory">Total Amount(Salary)</asp:label></TD>
												<TD align="left" style="font-size: medium" width="45%"><asp:textbox id="txttotal" CssClass="formlines" Runat="server" onblur="chkbadchar(this);" Enabled="False"></asp:textbox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:label id="Label5" runat="server" CssClass="mandatory" Visible="False">NSD</asp:label><asp:textbox id="txtnsd2" CssClass="formlines" Runat="server" Enabled="False" Visible="False" onblur="chkbadchar(this);"></asp:textbox></TD>
											</TR>
											<TR>
												<TD align="center" style="font-size: medium">&nbsp;</TD>
												<TD align="left" style="font-size: medium" width="45%"><asp:label id="Label6" runat="server" CssClass="mandatory" Width="210px">Total Number of Employees</asp:label><asp:label id="lblTotEmp" runat="server" CssClass="mandatory" Width="84px" ForeColor="Magenta"></asp:label></TD>
											</TR>
											<TR>
												<TD align="center" colspan="2" class="style2"></TD>
											</TR>
										</TBODY>
									</table>
									<asp:panel id="PanelUpload" runat="server">
                                    <div align="center">
                                    <table class="parabr" width="65%">
                                        <tr>
                                            <td>
                                                <asp:HyperLink ID="lnkRBIReport" runat="server" CssClass="mandatory" 
                                                    Target="_blank" Font-Underline="True" ForeColor="#0066CC">RBI Report</asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="lnkECSCheckRegister" runat="server" CssClass="mandatory" 
                                                    Target="_blank" Font-Underline="True" ForeColor="#0066CC">ECSCheckRegister</asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="lnkPaymentRegister" runat="server" CssClass="mandatory" 
                                                    Target="_blank" Font-Underline="True" ForeColor="#0066CC">PaymentRegister</asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="lnkECSUploadFile1" runat="server" CssClass="mandatory" 
                                                    Font-Underline="True" ForeColor="#0066CC" Target="_blank">ECSFileUpload1</asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="lnkECSUploadFile2" runat="server" CssClass="mandatory" 
                                                    Font-Underline="True" ForeColor="#0066CC" Target="_blank">ECSUploadFile2</asp:HyperLink>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:HyperLink ID="lnkBankWiseReport" runat="server" CssClass="mandatory" 
                                                    Font-Underline="True" ForeColor="#0066CC" Target="_blank">BankWiseReport</asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="lnkBankWiseAbsReport" runat="server" CssClass="mandatory" 
                                                    Font-Underline="True" ForeColor="#0066CC" Target="_blank">BankWiseAbsReport</asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="lnkDOWiseReport" runat="server" CssClass="mandatory" 
                                                    Font-Underline="True" ForeColor="#0066CC" Target="_blank">DOWiseReport</asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="lnkEmployeeReport" runat="server" CssClass="mandatory" 
                                                    Font-Underline="True" ForeColor="#0066CC" Target="_blank">Duplicate Employee</asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="lnkAccountNoDetails" runat="server" CssClass="mandatory" 
                                                    Font-Underline="True" ForeColor="#0066CC" Target="_blank">Duplicate Account No</asp:HyperLink>
                                            </td>
                                        </tr>
                                    </table>
                                    </div>
                        </asp:panel>
					                <P>&nbsp;</P>
								</td>
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
		</TD></TR></TBODY></TABLE>
	</body>
</HTML>
