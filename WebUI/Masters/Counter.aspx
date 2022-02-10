<%@ Page language="c#" Codebehind="Counter.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.Counter" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
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
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="MCounter" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Counter Details</asp:label></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token Number</asp:label></TD>
								<TD width="35%">
									<asp:DropDownList id="CboTokenYear" runat="server" CssClass="formlines">
										<asp:ListItem Value="2006">2006</asp:ListItem>
										<asp:ListItem Value="2007" Selected="True">2007</asp:ListItem>
										<asp:ListItem Value="2008">2008</asp:ListItem>
										<asp:ListItem Value="2009">2009</asp:ListItem>
										<asp:ListItem Value="2010">2010</asp:ListItem>
										<asp:ListItem Value="2011">2011</asp:ListItem>
										<asp:ListItem Value="2012">2012</asp:ListItem>
										<asp:ListItem Value="2013">2013</asp:ListItem>
									</asp:DropDownList><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" MaxLength="19" AutoPostBack="True" ontextchanged="txtTokenNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<tr>
								<TD width="15%">
									<asp:label id="lblDOCode" runat="server" CssClass="mandatory">DOCode</asp:label></TD>
								<TD colspan="3">
									<asp:textbox id="txtDOCode" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="5"
										Width="50px" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox>
									<asp:DropDownList id="cboDrawingOfficer" runat="server" CssClass="formlines" AutoPostBack="True" Width="210px"
										Font-Size="XX-Small" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></TD>
							</tr>
							<TR>
								<TD width="15%">
									<asp:label id="lblDPCode" runat="server" CssClass="mandatory">DPCode</asp:label></TD>
								<TD colspan="3">
									<asp:textbox id="txtDPCode" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="15" onblur="chkbadchar(this);"></asp:textbox>
									<asp:DropDownList id="cbodpcode" runat="server" AutoPostBack="True" Font-Size="XX-Small" Width="130px" onselectedindexchanged="cbodpcode_SelectedIndexChanged"></asp:DropDownList>
									<asp:DropDownList id="drpsubdpcode" runat="server" AutoPostBack="True" Font-Size="XX-Small" Width="80px" onselectedindexchanged="drpsubdpcode_SelectedIndexChanged"></asp:DropDownList></TD>
							</TR>
							<tr>
								<TD width="15%"><asp:label id="lblBillType" runat="server" CssClass="mandatory">BillType</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillType" runat="server" CssClass="formlines" MaxLength="6" AutoPostBack="True"
										Visible="False" onblur="chkbadchar(this);"></asp:textbox>
									<asp:DropDownList id="cboBillType" runat="server" AutoPostBack="True" Width="190px" onselectedindexchanged="cboBillType_SelectedIndexChanged"></asp:DropDownList></TD>
								<TD align="left" width="15%">
									<asp:label id="lblEcs" runat="server" CssClass="mandatory" Width="112px">Whether ECS or Not</asp:label></TD>
								<TD vAlign="top" colSpan="3">
									<asp:DropDownList id="CboEcs" runat="server" CssClass="formlines">
										<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
										<asp:ListItem Value="1">ECS Non Salary</asp:ListItem>
										<asp:ListItem Value="2">ECS Salary</asp:ListItem>
									</asp:DropDownList></TD>
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
								<TD colSpan="4">
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Update" onclick="btnSave_Click"></asp:button>
									<asp:button id="btnCancel" runat="server" CssClass="formbuttons" Width="90px" CausesValidation="False"
										Text="Clear" onclick="btnCancel_Click"></asp:button>
									<asp:button id="btnSearch" runat="server" CssClass="formbuttons" Width="90px" Text="Search" onclick="btnSearch_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD colSpan="4"></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AllowPaging="True" PageSize="15"
										CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" width="100%" onselectedindexchanged="dgItems_SelectedIndexChanged">
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
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
            

		</form>
	</body>
</HTML>
