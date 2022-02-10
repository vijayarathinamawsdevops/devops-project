<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="BudSub.aspx.cs" AutoEventWireup="True" SmartNavigation="True" Inherits="eKaruvoolam.WebUI.Masters.BudSub" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvooalm - Budget Sub Entry</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="BudSub" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr valign="top">
					<td align="center" height="100%">
						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colspan="4" align="center"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Budget Sub Entry (11 digit)</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width="15%"><asp:label id="lblMHCODE" runat="server" CssClass="mandatory">MHCODE</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtMHCODE" runat="server" CssClass="formlines" MaxLength="11" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD align="right" width="15%"><asp:label id="lblADHD" runat="server" CssClass="mandatory">ADHD</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtADHD" runat="server" CssClass="formlines" MaxLength="4" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<tr>
								<td align="right"><asp:label id="lblDESC" runat="server" CssClass="mandatory">Description</asp:label></td>
								<TD colSpan="3"><asp:textbox id="txtDESC" runat="server" Width="280px" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></TD>
							</tr>
							<TR>
								<TD align="right" width="15%"><asp:label id="lblDESC1" runat="server" CssClass="mandatory">Description 1</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDESC1" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD align="right" width="15%"><asp:label id="lblDESC2" runat="server" CssClass="mandatory">Description 2</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDESC2" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validationmessage" Font-Bold="True" Font-Size="X-Small"
										ForeColor="Red"></asp:label></TD>
							</TR>
							<TR>
								<TD align="center" colSpan="4"><asp:button id="btnSave" runat="server" Width="100px" CssClass="formbuttons" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;
									<asp:button id="btnCancel" runat="server" Width="100px" CssClass="formbuttons" Text="Clear"
										CausesValidation="False" onclick="btnCancel_Click"></asp:button>&nbsp;
									<asp:button id="btnSearch" runat="server" Width="100px" CssClass="formbuttons" Text="Search" onclick="btnSearch_Click"></asp:button></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="tblDataGrid" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD vAlign="top" align="center"><br>
									<asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AutoGenerateColumns="False"
										width="100%" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="White"
										CellPadding="3" PageSize="20" AllowPaging="True">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="MHCode">
												<ItemTemplate>
													<asp:Label ID="dMHCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"MHCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description">
												<ItemTemplate>
													<asp:Label ID="dlblDesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description 1" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlblDesc1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description 2" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlblDesc2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="ADHD">
												<ItemTemplate>
													<asp:Label ID="dlblADHD" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ADHD") %>'>
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
									</asp:datagrid></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
