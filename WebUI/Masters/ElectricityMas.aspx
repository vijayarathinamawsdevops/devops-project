<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="ElectricityMas.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.ElectricityMas" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Electricity Master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="ElectricityMas" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD width="15%">
						<uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<TR>
					<td valign="top">
						<table width="98%" cellpadding="2" cellspacing="2" border="0" align="center" class="parabr">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Electricity Master Details</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblDOCode" runat="server" CssClass="mandatory">DOCode</asp:Label>
                                    <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*" Font-Size="10pt"></asp:Label>
                                </TD>
								<TD width='35%'><asp:TextBox id="txtDOCode" runat="server" CssClass="formlines" MaxLength="5" Width="50px" AutoPostBack="True" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:DropDownList id="cboDrawingOfficer" runat="server" CssClass="formlines" Font-Size="XX-Small"
										AutoPostBack="True" Width="190px" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                        <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											Display="Dynamic" Enabled="true" ControlToValidate="txtDOCode"></asp:RequiredFieldValidator>
                                        </TD>
								<TD align="right" width='15%'>
                                    <asp:Label id="lblOfficeCode" runat="server" 
                                        CssClass="mandatory">Office Code </asp:Label>
									<asp:Label id="Label1" runat="server" CssClass="mandatory">(Max Sl. No.)</asp:Label>
                                    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*" Font-Size="10pt"></asp:Label>
                                </TD>
								<TD width='35%'>
                                    <asp:TextBox id="txtOfficeCode" runat="server" CssClass="formlines" 
                                        MaxLength="11" Enabled="false" onblur="chkbadchar(this);" ReadOnly="True"></asp:TextBox>
									<asp:DropDownList id="CboDept" runat="server" CssClass="drptxt" Visible="False"></asp:DropDownList>
									<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										Display="Dynamic" ControlToValidate="txtOfficeCode"></asp:RequiredFieldValidator></TD>
							</TR>
							<TR>
								<TD align="right" width='15%' style="HEIGHT: 37px"><asp:Label id="lblOfficeName" runat="server" CssClass="mandatory">Office Name</asp:Label>
                                    <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*" Font-Size="10pt"></asp:Label>
                                </TD>
								<TD width='35%' style="HEIGHT: 37px"><asp:TextBox id="txtOfficeName" runat="server" CssClass="formlines" MaxLength="50" Width="250px" onblur="chkbadchar(this);"></asp:TextBox>
									<%--<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										Display="Dynamic" ControlToValidate="txtOfficeName"></asp:RequiredFieldValidator>--%>
									<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" 
                                        CssClass="validatemessage" ErrorMessage="Data Required"
										Display="Dynamic" ControlToValidate="txtOfficeName"></asp:RequiredFieldValidator></TD>
								<TD align="right" width='15%' style="HEIGHT: 37px">
									<asp:Label id="lblMeterNo" runat="server" CssClass="mandatory">Meter Number</asp:Label>
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*" Font-Size="10pt"></asp:Label>
                                </TD>
								<TD width='35%' style="HEIGHT: 37px">
									<asp:TextBox id="txtMeterNo" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										Display="Dynamic" ControlToValidate="txtMeterNo"></asp:RequiredFieldValidator></TD>
							</TR>
							<TR>
								<TD align="right" width='15%' vAlign="top"><asp:Label id="lblOfficeAdd2" runat="server" CssClass="mandatory">Office Address</asp:Label></TD>
								<TD width='35%'>
									
										<asp:TextBox id="txtOfficeAdd1" runat="server" CssClass="formlines" Width="250px" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox>
										 <BR>
										<asp:TextBox id="txtOfficeAdd2" runat="server" CssClass="formlines" MaxLength="50" Width="250px" onblur="chkbadchar(this);"></asp:TextBox>
                                        	 <BR>
										<asp:TextBox id="txtOfficeAdd3" runat="server" CssClass="formlines" Width="250px" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox>
								</TD>
								<TD align="right" width='15%' vAlign="top">
									<asp:Label id="lblServiceConnNo" runat="server" CssClass="mandatory">Service Connection Number</asp:Label></TD>
								<TD width='35%' vAlign="top">
									<asp:TextBox id="txtServiceConnNo" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD align="right" width='15%' vAlign="top"><asp:Label id="lblTOCode" runat="server" 
                                        CssClass="mandatory">TO Code</asp:Label></TD>
								<TD width='35%'>
									<asp:TextBox id="txtTOCode" runat="server" CssClass="formlines" MaxLength="50" 
                                        onblur="chkbadchar(this);" ReadOnly="True" Enabled="False"></asp:TextBox>
								</TD>
								<TD align="right" width='15%' vAlign="top">
									&nbsp;</TD>
								<TD width='35%' vAlign="top">
									&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan='4'>
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label><asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label></TD>
							</TR>
							<TR>
								<TD colSpan="4" align="center">
									<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:Button>
									<asp:Button id="btnCancel" runat="server" CssClass="formbuttons" Text="Clear" CausesValidation="False"
										Width="90px" onclick="btnCancel_Click"></asp:Button>&nbsp;<asp:Button CausesValidation="False"
                                        id='btnSearch' runat='server' CssClass='formbuttons' Text='Search' Width="90px" onclick="btnSearch_Click"
										 ></asp:Button>
									<asp:Button id="btnDel" runat="server" CssClass="formbuttons" Text="Delete" 
                                        Width="90px" onclick="btnDel_Click" Visible="False"></asp:Button>&nbsp;<%--<asp:button 
                                        id="btnContinue" runat="server" CssClass="formbuttons" Width="90px" 
                                        Visible="False" Text="Continue.." onclick="btnContinue_Click"></asp:button>--%></TD>
							</TR>
						</table>
					</td>
				</TR>
				<tr>
					<td valign="top" height="100%" align="center"><br>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan="4">
									<asp:DataGrid id="dgItems" AutoGenerateColumns="False" runat="server"
										CssClass="tableleftbgcolor" AllowPaging="True" PageSize="15" CellPadding="3" BackColor="White"
										BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" width="100%">
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
											<asp:TemplateColumn HeaderText="Office Code">
												<ItemTemplate>
													<asp:Label id="dglbloffcode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"OFFICECODE") %>'>
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
											<asp:TemplateColumn HeaderText="Metter No">
												<ItemTemplate>
													<asp:Label id="dglblmetterno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"METERNO") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Ser.Con.No">
												<ItemTemplate>
													<asp:Label id="dglblscno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Serviceconnno") %>'>
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
