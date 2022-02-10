<%@ Page language="c#" Codebehind="InputMain.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Input.InputMain" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
  <HEAD>
		<title>eKaruvoolam - Input Main</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="javascript">

			function ShowScrollPopup(srcScreen,KeyField,OperMode,sTitle,Width,Height)
			{
				alert('hi');
			}
		</script>
        <style type="text/css">
            .style2
            {
                height: 187px;
            }
        </style>
</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="InputMain" method="post" runat="server">
        <%--  
         
            --%>
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td align="left" valign="top" height="100%" style="PADDING-LEFT:15px">
						<table border="0" cellpadding="2" cellspacing="6" width="90%" class="parabr" 
                            align="center">
							<tr>
								<td width="40%" align="center" valign="middle" class="formtitle" colspan="2" 
                                    style="width: 100%">&nbsp;</td>
							</tr>
							<tr>
								<td width="40%" align="right" valign="middle"><asp:label id="Label2" runat="server" CssClass="mandatory">STO Name</asp:label></td>
								<td align="left" width="60%"><asp:dropdownlist id="DrpStocode" runat="server" CssClass="formlines" Width="160px" onselectedindexchanged="DrpStocode_SelectedIndexChanged"></asp:dropdownlist></td>
							</tr>
							<TR>
								<td width="40%" align="right" valign="middle"><asp:label id="lblTransDate" runat="server" CssClass="mandatory">Transaction Date</asp:label></td>
								<td align="left" valign="middle" width="60%">
									<asp:textbox id="txtTransDate" runat="server" CssClass="formlines" MaxLength="10" ontextchanged="txtTransDate_TextChanged"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('InputMain.txtTransDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT>
									<asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ControlToValidate="txtTransDate"
										ErrorMessage="Date Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="revTranDate" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtTransDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator><FONT 
            face="Courier New" color=#6600ff><STRONG></STRONG></FONT>
								</td>
							</TR>
							<tr>
								<TD width="45%" align="right"><asp:label id="lblInputType" runat="server" CssClass="mandatory">Input Type</asp:label></TD>
								<TD width="60%"><asp:dropdownlist id="cboInputType" runat="server" CssClass="drptxt" AutoPostBack="True" Width="190px" onselectedindexchanged="cboInputType_SelectedIndexChanged"></asp:dropdownlist></TD>
							</tr>
							<TR>
								<TD width="40%" align="right">
									<asp:Label id="Label1" runat="server" CssClass="mandatory">Report</asp:Label></TD>
								<TD width="60%">
									<asp:DropDownList id="cboReportType" runat="server" CssClass="drptxt" Width="190px" AutoPostBack="True" onselectedindexchanged="cboReportType_SelectedIndexChanged"></asp:DropDownList></TD>
							</TR>
							<tr>
								<TD width="40%" align="right"><asp:label id="lblReceiptType" runat="server" CssClass="mandatory">Receipt Type</asp:label></TD>
								<TD width="60%"><asp:dropdownlist id="cboReceiptType" runat="server" Width="190px" CssClass="drptxt" AutoPostBack="True"
										Enabled="False" onselectedindexchanged="cboReceiptType_SelectedIndexChanged"></asp:dropdownlist></TD>
							</tr>
						</table>
					    <br />
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td><br>
						<uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
            <%--
    --%>
		</form>
	</body>
</HTML>
