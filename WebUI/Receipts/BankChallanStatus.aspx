<%@ Page language="c#" Codebehind="BankChallanStatus.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Receipts.BankChallanStatus" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
  <HEAD>
		<title>Bank Challan Status</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
</HEAD>
	<body bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmBankChallan" method="post" runat="server">
			<table id="Table1" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
				</tr>
				<tr>
					<td vAlign="top" height="100%">
						<table id="SubTable1" height="100%" cellSpacing="5" cellPadding="1" width="100%" border="0">
							<TR>
								<td vAlign="middle" align="right" width="20%"><asp:label id="lblTransDate" runat="server" CssClass="mandatory">Transaction Date</asp:label></td>
								<td vAlign="middle" align="left" width="45%"><asp:textbox id="txtTransDate" runat="server" CssClass="formlines" MaxLength="10"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('frmBankChallan.txtTransDate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
									<asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ErrorMessage="Date Required"
										ControlToValidate="txtTransDate"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="revTranDate" runat="server" CssClass="validatemessage" ErrorMessage="Invalid Date"
										ControlToValidate="txtTransDate" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:regularexpressionvalidator></td>
								<td><asp:Button ID="btnSubmit" Runat="server" Text="Submit" CssClass="formbuttons" Width="110px" onclick="btnSubmit_Click"></asp:Button></td>
							</TR>
							<tr>
								<td vAlign="top" align="center" colSpan="3" height="100%">
									<asp:datagrid id="dgrdBankChallanStatus" PageSize="20" PagerStyle-Mode="NumericPages" PagerStyle-HorizontalAlign="Right"
										ShowFooter="True" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="White"
										CellPadding="2" Width="95%" CssClass="tableleftbgcolor" Runat="server">
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
									</asp:datagrid>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
