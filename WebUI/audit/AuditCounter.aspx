<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuditCounter.aspx.cs" Inherits="eKaruvoolam.WebUI.audit.AuditCounter" %>

<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>

<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>

<%@ Register TagPrefix="uc1" TagName="CounterMenus" Src="../UserControls/CounterMenus.ascx" %>

<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Counter</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>

	<body id="Audit_EditTokenNo" leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Counter3" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<td vAlign="top"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Edit Token Entry</asp:label></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token Number</asp:label></TD>
								<TD width="35%"><asp:dropdownlist id="CboTokenYear" runat="server" CssClass="formlines"></asp:dropdownlist><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="19" onkeypress="numeralsOnly(this)"   onblur="chkbadchar(this);" ontextchanged="txtTokenNo_TextChanged"></asp:textbox></TD>
							</TR>
							<tr>
								<TD width="15%"><asp:label id="lblDOCode" runat="server" CssClass="mandatory">DOCode</asp:label></TD>
								<TD colSpan="3"><asp:textbox id="txtDOCode" runat="server" Width="50px" CssClass="formlines" AutoPostBack="True"
									onblur="chkbadchar(this);"	MaxLength="5" ontextchanged="txtDOCode_TextChanged"></asp:textbox><asp:dropdownlist id="cboDrawingOfficer" runat="server" Width="210px" CssClass="formlines" AutoPostBack="True"
										Font-Size="XX-Small" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:dropdownlist></TD>
							</tr>
							<TR>
								<TD width="15%"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DPCode</asp:label></TD>
								<TD colSpan="3"><asp:textbox id="txtDPCode" runat="server" onblur="chkbadchar(this);" CssClass="formlines" AutoPostBack="True" MaxLength="15"></asp:textbox><asp:dropdownlist id="cbodpcode" runat="server" Width="130px" AutoPostBack="True" Font-Size="XX-Small" onselectedindexchanged="cbodpcode_SelectedIndexChanged"></asp:dropdownlist><asp:dropdownlist id="drpsubdpcode" runat="server" Width="80px" AutoPostBack="True" Font-Size="XX-Small" onselectedindexchanged="drpsubdpcode_SelectedIndexChanged"></asp:dropdownlist></TD>
							</TR>
							<tr>
								<TD width="15%"><asp:label id="lblBillType" runat="server" CssClass="mandatory">BillType</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillType" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="6" onblur="chkbadchar(this);"
										Visible="False"></asp:textbox><asp:dropdownlist id="cboBillType" runat="server" Width="190px" AutoPostBack="True" onselectedindexchanged="cboBillType_SelectedIndexChanged"></asp:dropdownlist></TD>
								<TD align="left" width="15%"><asp:label id="lblEcs" runat="server" Width="112px" CssClass="mandatory">Whether ECS or Not</asp:label></TD>
								<TD vAlign="top" colSpan="3"><asp:dropdownlist id="CboEcs" runat="server" CssClass="formlines" Visible="False" onselectedindexchanged="CboEcs_SelectedIndexChanged">
										<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
										<asp:ListItem Value="1">ECS Non Salary</asp:ListItem>
										<asp:ListItem Value="2">ECS Salary</asp:ListItem>
									</asp:dropdownlist></TD>
							</tr>
							<TR>
								<TD width="15%"><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" MaxLength="19" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblCounterID" runat="server" CssClass="mandatory">Counter ID</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtCounterID" runat="server" CssClass="formlines" MaxLength="5" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnSave" runat="server" Width="90px" CssClass="formbuttons" Text="Update" onclick="btnSave_Click"></asp:button><asp:button id="btnCancel" runat="server" Width="90px" CssClass="formbuttons" Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:button><asp:button id="btnSearch" runat="server" Width="90px" CssClass="formbuttons" Text="Search" onclick="btnSearch_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD colSpan="4"></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:datagrid id="dgItems" runat="server" 
                                        CssClass="tableleftbgcolor" width="100%" BorderColor="#CCCCCC"
										BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" PageSize="15" AllowPaging="True" 
                                        onselectedindexchanged="dgItems_SelectedIndexChanged" 
                                        oneditcommand="dgItems_EditCommand" 
                                        onpageindexchanged="dgItems_PageIndexChanged">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:datagrid></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
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
