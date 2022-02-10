<%@ Page language="c#" Codebehind="TelephoneMas.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.TelephoneMas" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - TelephoneMas</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="TelephoneMas" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0">
				<TR>
					<TD width="15%"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table11" cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:Label ID="tilTele" runat="server" CssClass="formtitle" Width="100%">TelePhoneMas</asp:Label></TD>
							</TR>
							<TR>
								<TD align="right" width="10%"><asp:label id="lblDOCode" runat="server" CssClass="mandatory">DO Code</asp:label></TD>
								<TD width="30%"><asp:textbox id="txtDOCode" runat="server" CssClass="formlines" Width="50px" MaxLength="5" AutoPostBack="True" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:dropdownlist id="cboDrawingOfficer" runat="server" CssClass="drptxt" Width="200px" AutoPostBack="True" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist></TD>
                                <td align="right"><asp:label id="lblmaxsno" runat="server" CssClass="mandatory" Visible="true">Sl. No :</asp:label></td><td>
                                <asp:textbox id="txtmaxslno" runat="server" CssClass="formlines" 
                                    Enabled="false" onblur="chkbadchar(this);" BorderStyle="Solid" 
                                    MaxLength="11"></asp:textbox></td>
                                        
							</TR>
							 
							<TR>
								<TD align="right" width="10%"><asp:label id="lblOfficeName" runat="server" CssClass="mandatory">Office Name</asp:label></TD>
								<TD width="30%"><asp:textbox id="txtOfficeName" runat="server" CssClass="formlines" Width="250px" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvOfficeName" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										Display="Dynamic" ControlToValidate="txtOfficeName"></asp:requiredfieldvalidator></TD>
								<TD align="right" width="15%"><asp:label id="lblTelephoneNo" runat="server" CssClass="mandatory">Telephone/Cell Number</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtTelephoneNo" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvTelephoneNo" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										Display="Dynamic" ControlToValidate="txtTelephoneNo"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD vAlign="top" align="right" width="10%" colSpan="1" rowSpan="3"><asp:label id="lblOfficeAdd2" runat="server" CssClass="mandatory">Office Address</asp:label></TD>
								<TD width="30%" rowSpan="3">
									<P><asp:textbox id="txtOfficeAdd1" runat="server" CssClass="formlines" Width="250px" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox><BR>
										<asp:textbox id="txtOfficeAdd2" runat="server" CssClass="formlines" Width="250px" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox><BR>
										<asp:textbox id="txtOfficeAdd3" runat="server" CssClass="formlines" Width="250px" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></P>
								</TD>
								<TD vAlign="top" align="right" width="15%"><asp:label id="lblMaxCalls" runat="server" CssClass="mandatory">Maximum Calls Allowed</asp:label></TD>
								<TD vAlign="top" width="35%"><asp:textbox id="txtMaxCalls" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);">0</asp:textbox></TD>
							</TR>
							<TR>
								<TD align="right" width="10%"><asp:label id="lblMaxAmount" runat="server" CssClass="mandatory">Maximum Amount</asp:label></TD>
								<TD width="30%"><asp:textbox id="txtMaxAmount" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);">0</asp:textbox></TD>
							</TR>
							<TR>
								<TD align="right" width="10%"><asp:label id="lblNo_of_telephones" runat="server" CssClass="mandatory">No of Telephones</asp:label></TD>
								<TD width="30%"><asp:textbox id="txtNo_of_telephones" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);">1</asp:textbox></TD>
							</TR>
							<TR>
								<TD align="right" width="10%"><asp:label id="lblResi_Office_Cell" runat="server" CssClass="mandatory">Phone Number Type</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtResi_Office_Cell" runat="server" CssClass="formlines" MaxLength="1" Visible="False" onblur="chkbadchar(this);"></asp:textbox><asp:dropdownlist id="cboPhone" runat="server" CssClass="drptxt" Width="130px">
										<asp:ListItem Value="1">Residence Phone</asp:ListItem>
										<asp:ListItem Value="2">Office Phone</asp:ListItem>
										<asp:ListItem Value="3">Cell Phone</asp:ListItem>
									</asp:dropdownlist></TD>
								<TD align="right" width="15%"><asp:label id="lblGroup_Ind" runat="server" CssClass="mandatory">Individual / Group</asp:label></TD>
								<TD width="35%"><asp:dropdownlist id="cboGroup" runat="server" CssClass="drptxt" Width="100px">
										<asp:ListItem Value="1">Individual</asp:ListItem>
										<asp:ListItem Value="2">Group</asp:ListItem>
									</asp:dropdownlist><asp:textbox id="txtGroup_Ind" runat="server" CssClass="formlines" MaxLength="1" Visible="False" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
                            <tr><td align="right" width="15%"><asp:Label ID="lblTOCode" runat="server" CssClass="mandatory">TOCode</asp:Label></td>
                            <td><asp:TextBox ID="txtTOCode" runat="server" Enabled="false" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
                            </td>
                            </tr>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD align="center" colSpan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;<asp:button id="btnCancel" runat="server" CssClass="formbuttons" Width="90px" Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:button>
									<asp:button id="btnSearch" runat="server" CssClass="formbuttons" Width="90px"  CausesValidation="false"
										Text="Search" onclick="btnSearch_Click"></asp:button><asp:button id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" onclick="btnDel_Click"></asp:button>&nbsp;<%--<asp:button 
                                        id="btnContinue" runat="server" CssClass="formbuttons" Width="90px" 
                                        Visible="False" Text="Continue.." onclick="btnContinue_Click"></asp:button>--%></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="Table111" cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center"><asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" width="100%" BorderColor="#CCCCCC"
										BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" PageSize="15" AutoGenerateColumns="False"
										AllowPaging="True" onselectedindexchanged="dgItems_SelectedIndexChanged">
										<SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
										<ItemStyle ForeColor='#000066'></ItemStyle>
										<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
										<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="DOCode">
												<ItemTemplate>
													<asp:Label id="dgdocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"docode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Sr.No">
												<ItemTemplate>
													<asp:Label id="dgsrno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"srno") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Office Code" Visible="true">
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
													<asp:Label id="dgaddress1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Address 2">
												<ItemTemplate>
													<asp:Label id="dgaddress2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Address 3">
												<ItemTemplate>
													<asp:Label id="dgaddress3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd3") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Telephone No">
												<ItemTemplate>
													<asp:Label id="dgteleno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"telephoneno") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Max Calls">
												<ItemTemplate>
													<asp:Label id="dgmaxcalls" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"maxcalls") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Max Amount">
												<ItemTemplate>
													<asp:Label id="dgmaxamt" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"maxamount") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Group" Visible="False">
												<ItemTemplate>
													<asp:Label id="dggroup" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"group_ind") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Resicall" Visible="False">
												<ItemTemplate>
													<asp:Label id="dgresicall" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Resi_Office_Cell") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="No. of Phones">
												<ItemTemplate>
													<asp:Label id="dgnooftele" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"no_of_telephones") %>'>
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
					<td colSpan="4"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
