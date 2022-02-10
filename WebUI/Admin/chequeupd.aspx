<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Page language="c#" Codebehind="chequeupd.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.chequeupd" %>
<%@ Register TagPrefix="uc1" TagName="ChequeMenus" Src="../UserControls/ChequeMenus.ascx" %>
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
	</HEAD>
	<body id="Cheque_InputDateAssign" leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmSAReportHome" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD colSpan="2">
						<uc1:ChequeMenus id="ChequeMenus1" runat="server"></uc1:ChequeMenus></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">                    
						<table class="parabr" cellSpacing="5" cellPadding="2" width="80%" align="center" border="0">
                        <tr>
								<TD class="formtitle" align="center" colSpan="4"><asp:label id="frmtitle" runat="server" CssClass="formtitle">Cheque Input Date Assigning</asp:label></TD>
							</tr>
							<tr>
								<td class="rptHead" colSpan="5">Input Date Assigning</td>
							</tr>
							<tr>
								<td align="right" width="200"><asp:label id="lblFromToken" CssClass="mandatory" Runat="server"> Token No.</asp:label></td>
								<td align="left" width="300"><asp:dropdownlist id="Cbofromyear" runat="server" CssClass="formlines" Width="75px"></asp:dropdownlist><asp:textbox id="txttokenno" tabIndex="2" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator1" CssClass="mandatory" ErrorMessage="*" ControlToValidate="txttokenno"
										Runat="server"></asp:requiredfieldvalidator>
									<asp:imagebutton id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnTokenGo_Click"></asp:imagebutton><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtTokenNo"
										ErrorMessage="Data required"></asp:requiredfieldvalidator></td>
								<TD colSpan="2"><asp:label id="lblMessage" CssClass="validatemessage" ForeColor="Red" Runat="server"></asp:label></TD>
							<tr>
								<td align="right"><asp:label id="lbldpcode" CssClass="mandatory" Runat="server"> Dpcode</asp:label></td>
								<td colspan="2"><asp:textbox id="txtdpcode" CssClass="formlines"  onblur="chkbadchar(this);" Runat="server" Enabled="false"></asp:textbox></td>
							</tr>
							<tr>
								<td align="right"><asp:label id="lbldocode" CssClass="mandatory" Runat="server"> DOCode</asp:label></td>
								<td colspan="2"><asp:textbox id="txtdocode" CssClass="formlines" Runat="server" onblur="chkbadchar(this);" Enabled="false"></asp:textbox></td>
							</tr>
							<tr>
								<td align="right"><asp:label id="lblamount" CssClass="mandatory" Runat="server">Bill Amount</asp:label></td>
								<td colspan="2"><asp:textbox id="txtBillamount" CssClass="formlines" Runat="server" onblur="chkbadchar(this);" Enabled="false"></asp:textbox></td>
							</tr>
							<tr>
								<td align="right"><asp:label id="Label2" CssClass="mandatory" Runat="server">Bill Status</asp:label></td>
								<TD vAlign="top" colSpan="2">
									<asp:DropDownList id="Cbobillstatus" runat="server" CssClass="formlines" Enabled="False" Width="200px">
										<asp:ListItem Value="0" Selected="true">Select Bill Status</asp:ListItem>
										<asp:ListItem Value="1">Bill submitted at counter</asp:ListItem>
										<asp:ListItem Value="2">Auditor-1 Processing</asp:ListItem>
										<asp:ListItem Value="3">Auditor-1 Passed</asp:ListItem>
										<asp:ListItem Value="4">Auditor-2 Processing</asp:ListItem>
										<asp:ListItem Value="5">Auditor-2 Passed</asp:ListItem>
										<asp:ListItem Value="6">Auditor-3 Processing</asp:ListItem>
										<asp:ListItem Value="7">Auditor-3 Passed</asp:ListItem>
										<asp:ListItem Value="8">Cheque Printing</asp:ListItem>
										<asp:ListItem Value="9">Cheque Delivered</asp:ListItem>
										<asp:ListItem Value="10">Input Processing</asp:ListItem>
									</asp:DropDownList></TD>
							</tr>
							<tr>
								<td align="right"><asp:label id="Label1" CssClass="mandatory" Runat="server">Ecs Status</asp:label></td>
								<TD vAlign="top" colSpan="2">
									<asp:DropDownList id="CboEcs" runat="server" CssClass="formlines" Enabled="False">
										<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
										<asp:ListItem Value="1">ECS Non Salary</asp:ListItem>
										<asp:ListItem Value="2">ECS Salary</asp:ListItem>
									</asp:DropDownList></TD>
							</tr>
							<tr>
								<td align="right"><asp:label id="Label4" CssClass="mandatory" Runat="server">Existing Date</asp:label></td>
								<td colspan="2"><asp:textbox id="txtexdate" CssClass="formlines" Runat="server" Enabled="false" onblur="chkbadchar(this);"></asp:textbox></td>
							</tr>
							<tr>
								<td align="right"><asp:label id="Label3" CssClass="mandatory" Runat="server">Enter Date(DD/MM/YYYY)</asp:label></td>
								<td colspan="2"><asp:textbox id="txtdate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('frmSAReportHome.txtdate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
                                     <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtdate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                        </td>
							</tr>
							<tr>
								<td align="center" colSpan="5"><asp:button id="btnSubmit" CssClass="formbuttons" Runat="server" Width="100px" Text="Save" onclick="btnSubmit_Click"></asp:button><asp:button id="btncancel" CssClass="formbuttons" Runat="server" Width="100px" Text="Clear" onclick="btncancel_Click"></asp:button></td>
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
