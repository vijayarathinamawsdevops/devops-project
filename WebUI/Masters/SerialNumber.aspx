<%@ Page language="c#" Codebehind="SerialNumber.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.SerialNumber" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - SerialNumber</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="SerialNumber" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
						<uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td align="center" valign="top">
						<TABLE id="Table21" class="parabr" cellSpacing="1" cellPadding="1" width="90%" border="0">
							<TR>
								<TD align="center"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">DO - Generate Serial Number</asp:label></TD>
							</TR>
							<tr>
								<td>
									<TABLE id="Table2" cellSpacing="2" cellPadding="2" width="100%" border="0">
										<TR>
											<TD width="15%"><asp:label id="lblDoCode" runat="server" CssClass="mandatory">DoCode</asp:label></TD>
											<TD width="35%"><asp:textbox id="txtDoCode" runat="server" CssClass="formlines" MaxLength="5" Width="50px" AutoPostBack="True" onblur="chkbadchar(this);"></asp:textbox><asp:dropdownlist id="cboDrawingOfficer" runat="server" CssClass="formlines" Width="175px" AutoPostBack="True"
													Font-Size="XX-Small" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist></TD>
											<TD width="15%"><asp:label id="Label1" runat="server" CssClass="mandatory">Serial Number Perfix</asp:label></TD>
											<TD width="30%"><asp:textbox id="txtPrefix" runat="server" CssClass="formlines" MaxLength="3" Width="30px" onblur="chkbadchar(this);"></asp:textbox></TD>
										</TR>
										<TR>
											<TD width="15%" valign="top"><asp:label id="lblFromNumber" runat="server" CssClass="mandatory">From Number</asp:label></TD>
											<TD width="35%" valign="top"><asp:textbox id="txtFromNumber" runat="server" CssClass="formlines" MaxLength="19" onblur="chkbadchar(this);"></asp:textbox><asp:RequiredFieldValidator ID="reqFromNumber" Runat="server" ControlToValidate="txtFromNumber">!</asp:RequiredFieldValidator></TD>
											<TD width="15%" valign="top"><asp:label id="lblToNumber" runat="server" CssClass="mandatory">To Number</asp:label></TD>
											<TD width="30%"><asp:textbox id="txtToNumber" runat="server" CssClass="formlines" MaxLength="19" onblur="chkbadchar(this);"></asp:textbox><asp:RequiredFieldValidator ID="reqToNumber" Runat="server" ControlToValidate="txtToNumber">!</asp:RequiredFieldValidator><asp:CompareValidator ID="compFromToNumber" Runat="server" Operator="GreaterThan" ControlToCompare="txtFromNumber"
													ControlToValidate="txtToNumber" ErrorMessage="To Number should be greater than From Number" Type="Integer"></asp:CompareValidator></TD>
										</TR>
										<TR>
											<TD colSpan="4">
												<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
										</TR>
										<TR>
											<TD colSpan="4">
												<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
										</TR>
										<TR>
											<TD colspan="4" align="center">
												<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:button>&nbsp;
												<asp:button id="btnCancel" runat="server" CssClass="formbuttons" Width="90px" Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:button>
												<asp:button id="btnSearch" runat="server" CssClass="formbuttons" Text="Search" Width="90px" onclick="btnSearch_Click"></asp:button>&nbsp;
												<asp:button id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" CausesValidation="False" onclick="btnDel_Click"></asp:button>
												<asp:ValidationSummary ID="errSummary" Runat="server" DisplayMode="BulletList" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
											</TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</TABLE>
					</td>
				</tr>
				<TR>
					<TD height="100%" valign="top" align="center"><br>
						<asp:datagrid id="dgItems" AutoGenerateColumns="False" runat="server" CssClass="tableleftbgcolor"
							AllowPaging="True" PageSize="15" CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None"
							BorderColor="#CCCCCC" width="90%">
							<SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
							<ItemStyle ForeColor='#000066'></ItemStyle>
							<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
							<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
							<Columns>
								<asp:TemplateColumn HeaderText="DO Code">
									<ItemTemplate>
										<asp:Label id="dglbldocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOCODE") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText=" Prefix ">
									<ItemTemplate>
										<asp:Label id="dglblprefix" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"prefix") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="From No">
									<ItemTemplate>
										<asp:Label id="dgllblfromno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"fromnumber") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="To No">
									<ItemTemplate>
										<asp:Label id="dglbltono" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"tonumber") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Action">
									<ItemTemplate>
										<asp:LinkButton ID="lnkedit" Runat="server" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
							<PagerStyle HorizontalAlign='Left' ForeColor='#000066' BackColor='White' Mode='NumericPages'></PagerStyle>
						</asp:datagrid>
					</TD>
				</TR>
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
