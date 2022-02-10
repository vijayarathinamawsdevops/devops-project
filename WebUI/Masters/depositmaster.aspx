<%@ Page language="c#" Codebehind="depositmaster.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Deposits.depositmaster" SmartNavigation="True" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Deposit Master</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="depositmaster" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD class="formtitle" align="center" colSpan="4">Deposit Master Details Entry</TD>
							</TR>
							<TR>
								<TD align="right" style="HEIGHT: 11px" width="15%"><asp:label id="lbldepositnumber" runat="server" CssClass="mandatory">Deposit Number</asp:label></TD>
								<TD style="HEIGHT: 11px" width="35%"><asp:textbox id="txtdepositnumber" runat="server" CssClass="formlines" Enabled="False" MaxLength="19" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD align="right" style="HEIGHT: 11px" width="15%"><asp:label id="lblremittersname" runat="server" CssClass="mandatory">Remitter's Name</asp:label></TD>
								<TD style="HEIGHT: 11px" width="35%"><asp:textbox id="txtremittersname" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvRemitName" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtremittersname"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD align="right" style="HEIGHT: 24px" width="15%"><asp:label id="lbldepositamount" runat="server" CssClass="mandatory">Deposit Amount</asp:label></TD>
								<TD style="HEIGHT: 24px" width="35%"><asp:textbox id="txtdepositamount" runat="server" CssClass="formlines" MaxLength="19" onblur="chkbadchar(this);"></asp:textbox><asp:rangevalidator id="rvDepositAmount" runat="server" CssClass="validatemessage" Display="Dynamic"
										ControlToValidate="txtdepositamount" ErrorMessage="Data Incorrect" Type="Double" MinimumValue="0" MaximumValue="10000000000000"></asp:rangevalidator><asp:requiredfieldvalidator id="rfvDepositAmount" runat="server" CssClass="validatemessage" Display="Dynamic"
										ControlToValidate="txtdepositamount" ErrorMessage="Data  Required"></asp:requiredfieldvalidator></TD>
								<TD align="right" style="HEIGHT: 24px" width="15%"><asp:label id="lbldepositdate" runat="server" CssClass="mandatory">Deposit Date</asp:label></TD>
								<TD style="HEIGHT: 24px" width="35%"><asp:textbox id="txtdepositdate" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('depositmaster.txtdepositdate');"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"><asp:requiredfieldvalidator id="rfvDepositDate" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtdepositdate" ErrorMessage="Data Required"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="revDepositDate" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtdepositdate" ErrorMessage="Enter Date in dd/mm/yyyy format" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:regularexpressionvalidator></A></TD>
							</TR>
							<TR>
								<TD align="right" style="HEIGHT: 31px" width="15%"><asp:label id="lblbankchallannumber" runat="server" CssClass="mandatory" Width="99px">Challan Number</asp:label></TD>
								<TD style="HEIGHT: 31px" width="35%"><asp:textbox id="txtbankchallannumber" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><asp:rangevalidator id="rfvChallanNo" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtbankchallannumber"
										ErrorMessage="Data Incorrect" Type="Double" MinimumValue="0" MaximumValue="100000000000000"></asp:rangevalidator><asp:requiredfieldvalidator id="rfvBankChallanNo" runat="server" CssClass="validatemessage" Display="Dynamic"
										ControlToValidate="txtbankchallannumber" ErrorMessage="Data  Required"></asp:requiredfieldvalidator></TD>
								<TD align="right" style="HEIGHT: 31px" width="15%"><asp:label id="lblRefAuthority" runat="server" CssClass="mandatory">Refunding Authority</asp:label></TD>
								<TD style="HEIGHT: 31px" width="35%"><asp:textbox id="txtRefAuthority" runat="server" CssClass="formlines" MaxLength="30" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvRefAuthority" runat="server" CssClass="validatemessage" Display="Dynamic"
										ControlToValidate="txtRefAuthority" ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD align="right" width="15%"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDPCode" runat="server" CssClass="formlines" AutoPostBack="True" ontextchanged="txtDPCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:label id="lblDPDescription" runat="server" CssClass="mandatory"></asp:label></TD>
								<td align="right"><asp:label id="lblDepositPlace" runat="server" CssClass="mandatory">Place of Deposit</asp:label></td>
								<td><asp:textbox id="txtDepositPlace" runat="server" CssClass="formlines" MaxLength="30" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvDepositPlace" runat="server" CssClass="validatemessage" Display="Dynamic"
										ControlToValidate="txtDepositPlace" ErrorMessage="Data Required"></asp:requiredfieldvalidator></td>
							</TR>
							<TR>
								<TD align="right" width="15%"><asp:label id="lbldeposit_type" runat="server" CssClass="mandatory">Deposit Type</asp:label></TD>
								<TD width="45%"><asp:dropdownlist id="cboDepositType" runat="server" CssClass="drptxt" AutoPostBack="True" Width="400px" onselectedindexchanged="cboDepositType_SelectedIndexChanged"></asp:dropdownlist></TD>
								<TD align="right" width="15%"><asp:label id="lblpurpose" runat="server" CssClass="mandatory">Purpose</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtpurpose" runat="server" CssClass="formlines" Width="200px" AutoPostBack="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
                            <tr><td align="right" width="15%"><asp:Label ID="lblTOCode" runat="server" CssClass="mandatory">TOCode</asp:Label></td>
                            <td><asp:TextBox ID="txtTOCode" runat="server" CssClass="formlines" Enabled="false" onblur="chkbadchar(this);"></asp:TextBox></td>
                            </tr>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
							<TR>
								<TD align="center" colSpan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button><asp:button id="btnSearch" runat="server" CssClass="formbuttons" Width="90px" Text="Search"
										CausesValidation="False"  onclick="btnSearch_Click"></asp:button><asp:button id="btnCancel" runat="server" CssClass="formbuttons" Width="90px" Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:button><asp:button id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" CausesValidation="False"
										  onclick="btnDel_Click"></asp:button></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan="4"><asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AllowPaging="True" PageSize="15"
										CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" width="100%"
										AutoGenerateColumns="False" onselectedindexchanged="dgItems_SelectedIndexChanged">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Deposit No.">
												<ItemTemplate>
													<asp:Label id="dglbldepno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"depositnumber") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Remt.Name">
												<ItemTemplate>
													<asp:Label id="dglblremname" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"remittersname") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Type" Visible="False">
												<ItemTemplate>
													<asp:Label id="dglbltype" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"deposit_type") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Dep. Date">
												<ItemTemplate>
													<asp:Label id="dglbldepdate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"depositdate") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText=" Amount ">
												<ItemTemplate>
													<asp:Label id="dglbldepamt" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"depositamount") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Challan No.">
												<ItemTemplate>
													<asp:Label id="dglblchalno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"bankchallannumber") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DP Code">
												<ItemTemplate>
													<asp:Label id="dglbldpcode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Authority" Visible="False">
												<ItemTemplate>
													<asp:Label id="dglblauth" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"refauthority") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText=" Place ">
												<ItemTemplate>
													<asp:Label id="dglblplace" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"depositplace") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText=" Purpose " Visible="false">
												<ItemTemplate>
													<asp:Label id="dglpurpose" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"purpose") %>'>
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
