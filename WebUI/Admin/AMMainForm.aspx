<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="AMMainForm.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.AMMainForm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>AM Module</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script>
			function setControlFocus()
			{
				document.getElementById("txtTokenNo").focus();
			}
		</script>
	</HEAD>
	<BODY leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<FORM id="frmAMModule" method="post" runat="server">
			<table cellPadding="0" width="100%" border="0" height="100%" class="tableleftbgcolor" id="Table1"
				cellSpacing="0">
				<TR>
					<TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top" colspan="2">
						<table border="0" cellpadding="2" cellspacing="4" width="75%" class="parabr" align="center">
							<tr>
								<TD align="center" colspan="2"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">AM Module</asp:label></TD>
							</tr>
							<tr>
								<td Class="mandatory" align="right">Type of Bill</td>
								<td>
									<asp:RadioButtonList CssClass="textblackbold11px" ID="radBillType" Runat="server" RepeatDirection="Horizontal">
										<asp:ListItem Value="1" Selected="True">Payment Bill</asp:ListItem>
										<asp:ListItem Value="0">Receipt</asp:ListItem>
									</asp:RadioButtonList>
								</td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="lblTokenNo" Runat="server" CssClass="mandatory">Token Number</asp:Label></td>
								<td>
									<asp:DropDownList id="CboChallanYear" runat="server" Width="100px" CssClass="formlines"></asp:DropDownList>
									<asp:TextBox ID="txtTokenNo" Runat="server" CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);" ontextchanged="txtTokenNo_TextChanged"></asp:TextBox>
									<asp:RequiredFieldValidator ID="reqTokenNo" Runat="server" ControlToValidate="txtTokenNo" ErrorMessage="Required">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="lblAMDate" Runat="server" CssClass="mandatory">AM Date</asp:Label></td>
								<td>
									<asp:TextBox ID="txtAMDate" Runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('frmAMModule.txtAMDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
									<asp:RequiredFieldValidator ID="reqAMDate" Runat="server" ControlToValidate="txtAMDate" CssClass="validatemessage" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtAMDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
								</td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="lblAMSourceSign" Runat="server" CssClass="mandatory">Source Sub Account Sign</asp:Label></td>
								<td>
									<asp:DropDownList id="drpSourcesign" Runat="server" CssClass="formlines"></asp:DropDownList>
									<asp:RequiredFieldValidator ID="redSourcesign" Runat="server" CssClass="validatemessage" ControlToValidate="drpSourcesign" ErrorMessage="Required">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td align="right"><asp:Label ID="Label2" Runat="server" CssClass="mandatory">Destination Sub Account Sign</asp:Label></td>
								<td>
									<asp:DropDownList id="drpDessign" Runat="server"  CssClass="formlines"></asp:DropDownList>
									<asp:RequiredFieldValidator ID="reqdrpDessign" Runat="server" ControlToValidate="drpDessign" CssClass="validatemessage" ErrorMessage="Required">*</asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td Class="mandatory" align="right"><asp:Label ID="lblOverwrite" Runat="server" CssClass="mandatory">Overwrite Existing AM Records</asp:Label></td>
								<td>
									<asp:RadioButtonList CssClass="textblackbold11px" ID="radAMFlag" Runat="server" RepeatDirection="Horizontal">
										<asp:ListItem Value="1">Yes</asp:ListItem>
										<asp:ListItem Value="0" Selected="True">No</asp:ListItem>
									</asp:RadioButtonList>
								</td>
							</tr>
							<tr>
								<td align="right" colspan="2">
									<asp:Button ID="btnNext" Runat="server" Text="Next >>" Width="95" CssClass="formbuttons" onclick="btnNext_Click"></asp:Button>&nbsp;
									<asp:Button ID="btnClear" Runat="server" Text="Clear" CausesValidation="False" Width="95px"
										CssClass="formbuttons" onclick="btnClear_Click"></asp:Button>
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
		</FORM>
	</BODY>
</HTML>
