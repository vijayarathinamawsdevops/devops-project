<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="Dept.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.Dept" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Department</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Dept" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Department - Office Details Entry</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width="15%"><asp:label id="lblDepartmentCode" runat="server" CssClass="mandatory">Department</asp:label></TD>
								<TD width="35%">
									<asp:DropDownList id="cboDept" runat="server" Width="250px" AutoPostBack="True" CssClass="formlines" onselectedindexchanged="cboDept_SelectedIndexChanged"></asp:DropDownList><asp:textbox id="txtDepartmentCode" runat="server" CssClass="formlines" MaxLength="4" Visible="False" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<tr>
								<TD align="right" width="15%"><asp:label id="lblDepartmentName" runat="server" CssClass="mandatory">OfficeName</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDepartmentName" runat="server" CssClass="formlines" MaxLength="80" Width="200px"
										Font-Size="Smaller" onblur="chkbadchar(this);"></asp:textbox>
									<asp:requiredfieldvalidator id="reqDepartmentName" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtDepartmentName">*</asp:requiredfieldvalidator></TD>
							</tr>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
							<TR>
								<td colspan="4" align="center">
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:button>
									<asp:button id="btnCancel" runat="server" CssClass="formbuttons" Text="Clear" CausesValidation="False"
										Width="90px" onclick="btnCancel_Click"></asp:button>
									<asp:button id="btnSearch" runat="server" CssClass="formbuttons" Text="Search" Visible="False"
										Width="90px" onclick="btnSearch_Click"></asp:button>
									<asp:button id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" Visible="False" onclick="btnDel_Click"></asp:button>
								</td>
							</TR>
						</TABLE>
						<br>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan="4"><asp:datagrid id="dgItems" AutoGenerateColumns="False" runat="server" CssClass="tableleftbgcolor"
										AllowPaging="True" PageSize="15" CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None"
										BorderColor="#CCCCCC" width="100%"><SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
										<ItemStyle ForeColor='#000066'></ItemStyle>
										<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
										<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Office Code">
												<ItemTemplate>
													<asp:Label id="dglbloffcode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officecode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Office Name">
												<ItemTemplate>
													<asp:Label id="dglbloffname" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officename") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;&nbsp;|&nbsp;
													<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign='Left' ForeColor='#000066' BackColor='White' Mode='NumericPages'></PagerStyle>
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
