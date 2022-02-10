<%@ Register TagPrefix="uc1" TagName="ReportMenuItems" Src="../UserControls/ReportMenuItems.ascx" %>
<%@ Page language="c#" Codebehind="mmdepo.aspx.cs" AutoEventWireup="false" Inherits="eKaruvoolam.WebUI.Reports.mmdepo" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - MM Deposit</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body topmargin="0" leftmargin="0" rightmargin="0">
		<form id="mmdepo" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td valign="top" width="20%">
						<uc1:ReportMenuItems id="ReportMenuItems1" runat="server"></uc1:ReportMenuItems></td>
					<td align="left" valign="top" height="100%" style="PADDING-LEFT:20px;PADDING-TOP:20px">
						<table border="0" cellpadding="2" cellspacing="2" width="90%" class="brdr">
							<TR class="formtitle">
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server">MM Deposit - Report</asp:label></TD>
							</TR>
							<TR>
								<TD><asp:Label id="lblFromDate" runat="server" CssClass="mandatory">From Date</asp:Label></TD>
								<TD style="WIDTH: 93px"><asp:TextBox id="txtFromDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
									<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('mmdepo.txtFromDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>

                            <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
								<TD><asp:Label id="lblToDate" runat="server" CssClass="mandatory">To Date</asp:Label></TD>
								<TD><asp:TextBox id="txtToDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
									<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('mmdepo.txtToDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                        
                                    <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtToDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                        </TD>
							</TR>
							<TR>
								<TD><asp:Label id="lblRcptDepoAdj" runat="server" CssClass="mandatory">Any Receipt Deposit Adjustment Entry</asp:Label></TD>
								<TD style="WIDTH: 93px"><uc1:YesNo id="YesNo1" runat="server"></uc1:YesNo></TD>
								<TD><asp:Label id="lblReport" runat="server" CssClass="mandatory">Select Report</asp:Label></TD>
								<TD><asp:DropDownList id="cboReport" runat="server" CssClass="drptxt" AutoPostBack="True"></asp:DropDownList></TD>
							</TR>
							<TR>
								<TD><asp:Label id="lblDpCode" runat="server" CssClass="mandatory"></asp:Label></TD>
								<TD style="WIDTH: 93px"><asp:TextBox id="txtDpCode" runat="server" CssClass="formlines" MaxLength="15" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD><asp:Label id="lblBreak" runat="server" CssClass="mandatory">Break With Drawing Officer</asp:Label></TD>
								<TD><uc1:YesNo id="YesNo2" runat="server"></uc1:YesNo></TD>
							</TR>
							<TR>
								<TD><asp:Label id="lblDo" runat="server" CssClass="mandatory">Drawing Officer</asp:Label></TD>
								<TD style="WIDTH: 93px"><asp:DropDownList id="cboDo" runat="server" CssClass="drptxt"></asp:DropDownList></TD>
								<TD><asp:Label id="lblOB" runat="server" CssClass="mandatory">Opening Balance</asp:Label></TD>
								<TD><asp:TextBox id="txtOB" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD>
									<asp:Label id="Label1" runat="server" CssClass="mandatory">Drawing Officer Code</asp:Label></TD>
								<TD style="WIDTH: 93px">
									<asp:TextBox id="txtDOCode" runat="server" Width="49px" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD colspan="4"><asp:Button id="btnPrint" runat="server" Text="Generate Report" 
                                        Width="120px" CssClass="formbuttons" ></asp:Button>
									<asp:button id="cmdImport" runat="server" CssClass="formbuttons" Text="Download" Width="120px"></asp:button></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td colspan="2">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
