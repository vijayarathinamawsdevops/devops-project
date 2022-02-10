<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="BuildingRentMas.aspx.cs" AutoEventWireup="True" SmartNavigation="True" Inherits="eKaruvoolam.WebUI.Masters.BuildingRentMas" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD runat="server">
		<title>eKaruvoolam - BuildingRentMas</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="BuildingRentMas" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE id="Table1" class="parabr" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Building Rent Master</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblDOCode" runat="server" CssClass="mandatory">DOCode</asp:Label>
                                    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width='35%'><asp:TextBox id="txtDOCode" runat="server" CssClass="formlines" MaxLength="5" Width="50px" AutoPostBack="True" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:DropDownList id="cboDrawingOfficer" runat="server" CssClass="formlines" Width="180px" AutoPostBack="True"
										Font-Size="XX-Small" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:DropDownList></TD>
								<TD align="right" width='15%'><asp:Label id="lblOfficeCode" runat="server" CssClass="mandatory">Office Code (Max SN)</asp:Label>
                                    <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width='35%'>
                                    <asp:TextBox id="txtOfficeCode" runat="server" CssClass="formlines" 
                                        MaxLength="10" onblur="chkbadchar(this);" ReadOnly="True" Enabled="False"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblOfficeName" runat="server" CssClass="mandatory">Office Name</asp:Label>
                                    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width='35%'><asp:TextBox id="txtOfficeName" runat="server" CssClass="formlines" MaxLength="50" Width="200px" onblur="chkbadchar(this);"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtOfficeName" ErrorMessage="Data Required" Font-Bold="True" 
                                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </TD>
								<TD align="right" width='15%'><asp:Label id="lblSqft" runat="server" CssClass="mandatory">Sqft</asp:Label>
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width='35%'><asp:TextBox id="txtSqft" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtSqft" ErrorMessage="Data Required" Font-Bold="True" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </TD>
							</TR>
							<TR valign="top">
								<TD align="right" width="15%" rowspan="2"><asp:Label id="lblOfficeAdd1" runat="server" CssClass="mandatory">Office Address</asp:Label></TD>
								<TD width="35%" rowspan="2">
                                <asp:TextBox id="txtOfficeAdd1" runat="server" CssClass="formlines" MaxLength="50" Width="200px" onblur="chkbadchar(this);"></asp:TextBox>
									</br>
                                    <asp:TextBox id="txtOfficeAdd2" runat="server" CssClass="formlines" 
                                        MaxLength="50" Width="200px" onblur="chkbadchar(this);"></asp:TextBox>
									</br><asp:TextBox id="txtOfficeAdd3" runat="server" CssClass="formlines" MaxLength="50" Width="200px" onblur="chkbadchar(this);"></asp:TextBox>
								</TD>
								<TD align="right" width="15%"><asp:Label id="lblRent" runat="server" CssClass="mandatory">Rent</asp:Label>
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width="35%"><asp:TextBox id="txtRent" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblIt" runat="server" CssClass="mandatory">I.T.</asp:Label>
                                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width='35%'><asp:TextBox id="txtIt" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD align="right" width="15%"><asp:Label id="lblPeriodFrom" runat="server" CssClass="mandatory">PeriodFrom (dd/mm/yyyy)</asp:Label></TD>
								<TD width="35%"><asp:TextBox id="txtPeriodFrom" runat="server" CssClass="formlines" 
                                        MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtPeriodFrom_CalendarExtender" runat="server" 
                                        Enabled="True" TargetControlID="txtPeriodFrom" Format="dd/MM/yyyy"></asp:CalendarExtender>
                                </TD>
								<TD align="right" width="15%"><asp:Label id="lblPeriodTo" runat="server" CssClass="mandatory">PeriodTo (dd/mm/yyyy)</asp:Label></TD>
								<TD width="35%">
									<asp:TextBox id="txtPeriodTo" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtPeriodTo_CalendarExtender" runat="server" 
                                        Enabled="True" TargetControlID="txtPeriodTo" Format="dd/MM/yyyy"></asp:CalendarExtender>
                                </TD>
							</TR>
							<TR>
								<TD align="right" width="15%"><asp:Label id="lblTOCode" runat="server" 
                                        CssClass="mandatory">TO Code</asp:Label></TD>
								<TD width="35%">
									<asp:TextBox id="txtTOCode" runat="server" CssClass="formlines" Enabled="False" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD align="right" width="15%">&nbsp;</TD>
								<TD width="35%">
									&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>&nbsp;
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></TD>
							</TR>
							<TR>
								<TD colSpan='4' align="center"><asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' Width="90px" onclick="btnSave_Click"></asp:Button>
									<asp:Button id='btnCancel' runat='server' Text='Clear' CausesValidation='False' CssClass='formbuttons'
										Width="90px" onclick="btnCancel_Click"></asp:Button>&nbsp;<asp:Button 
                                        id='btnSearch' runat='server' CssClass='formbuttons' Text='Search' Width="90px"
										  onclick="btnSearch_Click" CausesValidation="False"  ></asp:Button>
									<asp:Button id="btnDel" runat="server" CssClass="formbuttons" Text="Delete" 
                                        Width="90px" onclick="btnDel_Click" Visible="False"></asp:Button></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan='4'><asp:DataGrid id='dgItems' AutoGenerateColumns="False" runat='server' CssClass='tableleftbgcolor'
										width='100%' BorderColor='#CCCCCC' BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3'
										PageSize='15' AllowPaging='True'><SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
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
											<asp:TemplateColumn HeaderText="Office Code">
												<ItemTemplate>
													<asp:Label id="dglbloffcode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Office Name">
												<ItemTemplate>
													<asp:Label id="dglbloffname" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"OFFICENAME") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Address 1">
												<ItemTemplate>
													<asp:Label id="dglbladd1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Address 2">
												<ItemTemplate>
													<asp:Label id="dglbladd2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Address 3">
												<ItemTemplate>
													<asp:Label id="dglbladd3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"officeadd3") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText=" Sqft ">
												<ItemTemplate>
													<asp:Label id="dglblsqft" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"sqft") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText=" Rent ">
												<ItemTemplate>
													<asp:Label id="dglblrent" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"rent") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText=" IT ">
												<ItemTemplate>
													<asp:Label id="dglblit" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"it") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Preiod From">
												<ItemTemplate>
													<asp:Label id="dglblpdfrom" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Periodfrom") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Period To">
												<ItemTemplate>
													<asp:Label id="dglblpdto" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"periodto") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;|&nbsp;
													<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign='Left' ForeColor='#000066' BackColor='White' Mode='NumericPages'></PagerStyle>
									</asp:DataGrid></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
            

		</form>
	</body>
</HTML>
