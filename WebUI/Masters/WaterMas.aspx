<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="WaterMas.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.WaterMas" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Water Master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="WaterMas" method="post" runat="server">
			<TABLE id="Table1" class="tableleftbgcolor" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD width="15%">
						<uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<TR>
					<td>
						<table width="98%" cellpadding="2" cellspacing="2" border="0" align="center" class="parabr">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Water Master Details</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width='15%' style="HEIGHT: 37px"><asp:Label id="lblDoCode" runat="server" CssClass="mandatory">DO Code</asp:Label>
                                    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width='35%' style="HEIGHT: 37px">
                                    <asp:textbox id="txtDOCode0" runat="server" 
                                        CssClass="formlines" style="text-transform: uppercase" Width="50px" MaxLength="5" AutoPostBack="True" 
                                        onblur="chkbadchar(this);" ontextchanged="txtDOCode0_TextChanged"></asp:textbox>
                                    <asp:dropdownlist id="cboDrawingOfficer" runat="server" CssClass="drptxt" 
                                        Width="200px" AutoPostBack="True" 
                                        onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist>
                                    <asp:TextBox id="txtDoCode" runat="server" CssClass="formlines" MaxLength="5" 
                                        onblur="chkbadchar(this);" Visible="False" Width="20%"></asp:TextBox>
									<%--<asp:RequiredFieldValidator id="rfvtxtDoCode" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
										Display="Dynamic" ControlToValidate="txtDoCode"></asp:RequiredFieldValidator>--%></TD>
								<TD align="right" width='15%' style="HEIGHT: 37px">
                                    <asp:Label id="lblOfficeCode" 
                                        runat="server" CssClass="mandatory">Office Code </asp:Label>
									<asp:Label id="Label1" runat="server" CssClass="mandatory">(Max Sl. No.)</asp:Label>
                                    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
									</TD>
								<TD width='35%' style="HEIGHT: 37px">
									<asp:TextBox id="txtOfficeCode" runat="server" CssClass="formlines" 
                                        Enabled="false" MaxLength="11" onblur="chkbadchar(this);" ReadOnly="True"></asp:TextBox>
									<%--<asp:RequiredFieldValidator id="rfvtxtOfficeCode" runat="server" CssClass="validatemessage" ControlToValidate="txtOfficeCode"
										Display="Dynamic" ErrorMessage="Data required"></asp:RequiredFieldValidator>--%>
									<asp:DropDownList id="CboDept" runat="server" CssClass="drptxt" Visible="False"></asp:DropDownList>
									</TD>
							</TR>
							<TR>
								<TD align="right" width="15%">
									<asp:Label id="lblMeterNo" runat="server" CssClass="mandatory">Meter Number</asp:Label>
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width="35%">
									<asp:TextBox id="txtMeterNo" runat="server" CssClass="formlines" MaxLength="10" 
                                        onblur="chkbadchar(this);" Width="200px"></asp:TextBox>
									<asp:RequiredFieldValidator id="rfvtxtMeterNo" runat="server" 
                                        CssClass="validatemessage" ErrorMessage="Mete No. required"
										Display="Dynamic" ControlToValidate="txtMeterNo"></asp:RequiredFieldValidator></TD>
								<TD align="right" width="15%"><asp:Label id="lblOfficeName" runat="server" CssClass="mandatory">Office Name</asp:Label>
                                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width="35%"><asp:TextBox id="txtOfficeName" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator id="rfvtxtMeterNo0" runat="server" 
                                        CssClass="validatemessage" ErrorMessage="Office Name required"
										Display="Dynamic" ControlToValidate="txtOfficeName"></asp:RequiredFieldValidator></TD>
							</TR>
							<TR>
								<TD align="right" width='15%' vAlign="top"><asp:Label id="lblOfficeAdd1" runat="server" CssClass="mandatory">Office Address</asp:Label></TD>
								<TD width="35%"><asp:TextBox id="txtOfficeAdd1" runat="server" CssClass="formlines" MaxLength="50" Width="200px" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:TextBox id="txtOfficeAdd2" runat="server" CssClass="formlines" MaxLength="50" Width="200px" onblur="chkbadchar(this);"></asp:TextBox>
									<br />
									<asp:TextBox id="txtOfficeAdd3" runat="server" CssClass="formlines" MaxLength="50" Width="200px" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD align="right" width="15%"><asp:Label ID="lblTOCode" runat="server" CssClass="mandatory">TOCode</asp:Label></TD>
								<TD width="35%"><asp:TextBox ID="txtTOCode" runat="server" Enabled="false" 
                                        CssClass="formlines" onblur="chkbadchar(this);" ReadOnly="True"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></TD>
							</TR>
							<TR>
								<TD align="center" colSpan="4">
									<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:Button>
									<asp:Button id="btnCancel" runat="server" CssClass="formbuttons" Width="90px" Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:Button>
									<asp:Button id="btnSearch" runat="server" CssClass="formbuttons" Width="90px" Text="Search"
										  onclick="btnSearch_Click" CausesValidation="false"></asp:Button>
									<asp:Button id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" Visible="False" onclick="btnDel_Click"></asp:Button></TD>
							</TR>
						</table>
					</td>
				</TR>
				<TR>
					<TD valign="top" height="100%" align="center"><br>
						<asp:DataGrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AllowPaging="True" PageSize="15"
							CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC"
							width="98%" AutoGenerateColumns="False">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
							<ItemStyle ForeColor="#000066"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
							<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
							<Columns>
								<asp:TemplateColumn HeaderText="DO Code">
									<ItemTemplate>
										<asp:Label id="dgdocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"docode") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Office Code" >
									<ItemTemplate>
										<asp:Label id="dgofficecode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officecode") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Office Name">
									<ItemTemplate>
										<asp:Label id="dgofficename" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officename") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Address 1">
									<ItemTemplate>
										<asp:Label id="dgofficeadd1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd1") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Address 2">
									<ItemTemplate>
										<asp:Label id="dgofficeadd2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd2") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Address 3">
									<ItemTemplate>
										<asp:Label id="dgofficeadd3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd3") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Meter No">
									<ItemTemplate>
										<asp:Label id="dgmeterno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"meterno") %>'>
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
						</asp:DataGrid></TD>
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
