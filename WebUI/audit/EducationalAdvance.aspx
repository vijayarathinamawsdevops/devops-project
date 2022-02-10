<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Page language="c#" Codebehind="EducationalAdvance.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.EducationAdvance" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Education Advance</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<FORM id="EducationalAdvance" method="post" runat="server">
			<TABLE id="Table1" class="tableleftbgcolor" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD colSpan="4" style="text-align:left">
									<uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
                            </table>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr">
								<TR>
									<TD colSpan="4">
										<uc1:GPFNumber id="GPFNumber1" runat="server"></uc1:GPFNumber></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblFormSanctionOrder" runat="server" CssClass="mandatory"> Sanction Order</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtSanctionOrder" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="50"></asp:TextBox>
										<asp:RequiredFieldValidator id="rfvdSanctionOrder" runat="server" CssClass="validatemessage" ControlToValidate="txtSanctionOrder"
											Display="Dynamic" ErrorMessage="Data required"></asp:RequiredFieldValidator></TD>
									<TD width="15%">
										<asp:Label id="lblDate" runat="server" CssClass="mandatory">Sanction Date</asp:Label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionDate" onblur="chkbadchar(this);" runat="server" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('EducationalAdvance.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvdSanctionDate" runat="server" CssClass="validatemessage" ControlToValidate="txtSanctionDate"
											Display="Dynamic" ErrorMessage="Data required"></asp:RequiredFieldValidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblCourseType" runat="server" CssClass="mandatory">Nature Of Course</asp:Label></TD>
									<TD width="35%">
										<asp:DropDownList id="cboCourseType" runat="server" CssClass="drptxt" Width="140px" AutoPostBack="True" onselectedindexchanged="cboCourseType_SelectedIndexChanged"></asp:DropDownList></TD>
									<TD width="15%">
										<asp:Label id="lblAmount" runat="server" CssClass="mandatory">Amount Admissible</asp:Label></TD>
									<TD width="35%">
										<asp:Label id="lblAmountText" runat="server" CssClass="mandatory"></asp:Label></TD>
								</TR>
								<TR>
									<TD>
										<asp:Label id="lblnoinstall" CssClass="mandatory" Runat="server">No Of Installments</asp:Label></TD>
									<TD>
										<asp:TextBox id="txtnoinstall" onblur="chkbadchar(this);" CssClass="formlines" Runat="server"></asp:TextBox>&nbsp;
										<asp:RequiredFieldValidator id="Requiredfieldvalidator3" runat="server" CssClass="validatemessage" ControlToValidate="txtnoinstall"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
										<asp:TextBox id="todaydate" runat="server" Visible="False"></asp:TextBox></TD>
                                        </table>
							</asp:Panel><TR>
								<TD>
									<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:Button>
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></TD>
							</TR>
							<TR>
								<TD>
									<uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</FORM>
	</body>
</HTML>
