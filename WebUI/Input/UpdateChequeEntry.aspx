<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="UpdateChequeEntry.aspx.cs" AutoEventWireup="True" Inherits="WebUI.Input.UpdateChequeEntry" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>UpdateChequeEntry</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	    <style type="text/css">
            .style2
            {
                height: 20px;
                width: 446px;
            }
            .style3
            {
                width: 446px;
            }
            .style4
            {
                width: 142px;
            }
        </style>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="InputChequeEntry" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<TR>
					<td vAlign="top" align="center" height="100%">
						<table cellSpacing="2" cellPadding="2" class="parabr" width="98%" border="0">
							<tr>
								<TD style="HEIGHT: 20px"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label></TD>
								<TD class="style2">
									<asp:DropDownList id="CboTokenYear" runat="server" CssClass="formlines" Width="56px">
										<%--<asp:ListItem Value="2006">2006</asp:ListItem>
										<asp:ListItem Value="2007" Selected="True">2007</asp:ListItem>
										<asp:ListItem Value="2008">2008</asp:ListItem>
										<asp:ListItem Value="2009">2009</asp:ListItem>
										<asp:ListItem Value="2010">2010</asp:ListItem>
										<asp:ListItem Value="2011">2011</asp:ListItem>
										<asp:ListItem Value="2012">2012</asp:ListItem>
										<asp:ListItem Value="2013">2013</asp:ListItem>--%>
									</asp:DropDownList>
									<asp:dropdownlist id="DrpStocode" runat="server" CssClass="formlines" Width="160px" ></asp:dropdownlist>
								    <asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" Width="155px"  
                                        onblur="chkbadchar(this);"></asp:textbox>&nbsp;<asp:imagebutton id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnTokenGo_Click"></asp:imagebutton></TD>
								<td class="mandatory">Choose Cheque or Other State Pension</td>
								<td class="style4">
									<asp:DropDownList id="cboNature" runat="server" CssClass="formlines">
										<asp:ListItem Value="Q">Cheque</asp:ListItem>
										<asp:ListItem Value="S">Other State Pensions</asp:ListItem>
									</asp:DropDownList></td>
							</tr>
							<tr>
								<td class="mandatory">DO Code</td>
								<td class="style3">
									<asp:textbox id="txtDOCode" tabIndex="2" runat="server" CssClass="formlines" MaxLength="5" AutoPostBack="True"
										Width="50px" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvDOCode" runat="server" Display="Dynamic" ErrorMessage="***" ControlToValidate="txtDOCode"></asp:requiredfieldvalidator>
									<asp:dropdownlist id="cboDrawingOfficer" runat="server" CssClass="formlines" AutoPostBack="True" Width="260px"
										TabIndex="2" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist>
								</td>
								<td class="mandatory">DP Code</td>
								<td class="style4"><asp:textbox id="txtDPCode" runat="server" CssClass="formlines" Width="125px" ontextchanged="txtDPCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="reqDPCode" Runat="server" ControlToValidate="txtDPCode">!</asp:requiredfieldvalidator></td>
							</tr>
							<tr>
								<td class="mandatory">Cheque No./PPO No.</td>
								<td class="style3"><asp:textbox id="txtChequeNo" runat="server" CssClass="formlines" Width="125px" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="reqtxtChequeNo" Runat="server" ControlToValidate="txtChequeNo">!</asp:requiredfieldvalidator></td>
								<td class="mandatory">Amount (Rs.)</td>
								<td class="style4"><asp:textbox id="txtAmount" runat="server" CssClass="formlines" Width="125px" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="reqtxtAmount" Runat="server" ControlToValidate="txtAmount">!</asp:requiredfieldvalidator></td>
							</tr>
							<TR>
								<TD class="mandatory">Payment Type</TD>
								<TD class="style3">
									<asp:dropdownlist id="cboPaymentType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
								<TD class="mandatory"></TD>
								<TD class="style4"></TD>
							</TR>
							<tr>
								<td class="mandatory"></td>
								<td colSpan="3"><asp:textbox id="txtRemarks" runat="server" CssClass="formlines" Width="185px" TextMode="MultiLine"
										Rows="2" Columns="100" Visible="False" onblur="chkbadchar(this);"></asp:textbox></td>
							</tr>
                            <tr>
                            <td colspan="4">
                            <asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
                            </td>
                            </tr>
							<tr>
								<td style="PADDING-LEFT:10px" colspan="4">
									<asp:button id="btnSave" CssClass="formbuttons" Width="100px" Runat="server" Text="Update" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnCancel" CssClass="formbuttons" Width="100px" Runat="server" CausesValidation="false" Text="Cancel" onclick="btnCancel_Click"></asp:button>
								</td>
							</tr>
						</table>
					</td>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
