<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="DoAllotmentMas.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.DoAllotmentMas" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - DoAllotment Master</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
        <script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="DoAllotmentMas" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD width="15%" colSpan="4"><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table1" cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Budget Appropriation Entry</asp:label></TD>
							</TR>
							<TR>
								<td width="15%"><asp:label id="lblDocode" runat="server" CssClass="mandatory">Docode</asp:label></td>
								<TD colSpan="3"><asp:textbox id="txtDocode" runat="server" Width="50px" CssClass="formlines" AutoPostBack="True"
										MaxLength="5" ontextchanged="txtDocode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:dropdownlist id="cboDrawingOfficer" runat="server" Width="200px" CssClass="drptxt" AutoPostBack="True"
										Font-Size="XX-Small" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDpcode" runat="server" CssClass="mandatory">Dpcode</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDpcode" runat="server" CssClass="formlines" 
                                        MaxLength="15" onblur="chkbadchar(this);" AutoPostBack="True" 
                                        ontextchanged="txtDpcode_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvtxtDpCode" runat="server" CssClass="validatemessage" ControlToValidate="txtDpcode"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
								<TD width="15%"><asp:label id="lblBillType" runat="server" CssClass="mandatory">Bill Type</asp:label></TD>
								<TD width="35%"><asp:dropdownlist id="cboBillType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblFin_year" runat="server" CssClass="mandatory">Financial year</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtFin_year" runat="server" CssClass="formlines" MaxLength="9" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblAmt_sanc" runat="server" CssClass="mandatory">Amount Sanctioned</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtAmt_sanc" runat="server" CssClass="formlines" 
                                        MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox><asp:requiredfieldvalidator id="rfvtxtAmt_Sanc" runat="server" CssClass="validatemessage" ControlToValidate="txtAmt_sanc"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="Label9" runat="server" CssClass="mandatory">Addl_Allotment</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtAddl_allot" runat="server" CssClass="formlines" 
                                        MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox></TD>
								<TD width="15%"><asp:label id="Label10" runat="server" CssClass="mandatory">15% Reserved</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtreser" runat="server" CssClass="formlines" 
                                        MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 133px; HEIGHT: 42px" width="133"><asp:label id="lblQuarter1" runat="server" CssClass="mandatory">Quarter1</asp:label><asp:label id="Label1" runat="server" CssClass="mandatory" ForeColor="Red">(Apr - Jun)</asp:label></TD>
								<TD style="WIDTH: 278px; HEIGHT: 42px" width="278"><asp:textbox id="txtQuarter1" 
                                        runat="server" CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox><asp:requiredfieldvalidator id="rfvtxtQ1" runat="server" CssClass="validatemessage" ControlToValidate="txtQuarter1"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
								<TD style="WIDTH: 134px; HEIGHT: 42px" width="134"><asp:label id="lblQuarter2" runat="server" CssClass="mandatory">Quarter2</asp:label><asp:label id="Label2" runat="server" CssClass="mandatory" ForeColor="Red">(Jul - Sep)</asp:label></TD>
								<TD style="HEIGHT: 42px" width="35%"><asp:textbox id="txtQuarter2" runat="server" 
                                        CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox><asp:requiredfieldvalidator id="rfvtxtQ2" runat="server" CssClass="validatemessage" ControlToValidate="txtQuarter2"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 133px; HEIGHT: 20px" width="133"><asp:label id="lblQuarter3" runat="server" CssClass="mandatory">Quarter3</asp:label><asp:label id="Label3" runat="server" CssClass="mandatory" ForeColor="Red">(Oct - Dec)</asp:label></TD>
								<TD style="WIDTH: 278px; HEIGHT: 20px" width="278"><asp:textbox id="txtQuarter3" 
                                        runat="server" CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox><asp:requiredfieldvalidator id="rfvtxtQ3" runat="server" CssClass="validatemessage" ControlToValidate="txtQuarter3"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
								<TD style="WIDTH: 134px; HEIGHT: 20px" width="134"><asp:label id="lblQuarter4" runat="server" CssClass="mandatory">Quarter4</asp:label><asp:label id="Label4" runat="server" CssClass="mandatory" ForeColor="Red">(Jan - Mar)</asp:label></TD>
								<TD style="HEIGHT: 20px" width="35%"><asp:textbox id="txtQuarter4" runat="server" 
                                        CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox><asp:requiredfieldvalidator id="rfvtxtQ4" runat="server" CssClass="validatemessage" ControlToValidate="txtQuarter4"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 133px; HEIGHT: 18px" width="133"><asp:label id="Label5" runat="server" CssClass="mandatory">Quarter1 Amount spent</asp:label></TD>
								<TD style="WIDTH: 278px; HEIGHT: 18px" width="278"><asp:textbox id="txtamt_rele1" 
                                        runat="server" CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox></TD>
								<TD style="WIDTH: 134px; HEIGHT: 18px" width="134"><asp:label id="Label7" runat="server" CssClass="mandatory">Quarter2 Amount spent</asp:label></TD>
								<TD style="HEIGHT: 18px" width="35%"><asp:textbox id="txtamt_rele2" runat="server" 
                                        CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 133px" width="133"><asp:label id="Label6" runat="server" CssClass="mandatory">Quarter3 Amount spent</asp:label></TD>
								<TD style="WIDTH: 278px" width="278"><asp:textbox id="txtamt_rele3" runat="server" 
                                        CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox></TD>
								<TD style="WIDTH: 134px" width="134"><asp:label id="Label8" runat="server" CssClass="mandatory">Quarter4 Amount spent</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtamt_rele4" runat="server" CssClass="formlines" 
                                        MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 133px; HEIGHT: 21px" width="133"><asp:label id="lblRevised" runat="server" CssClass="mandatory">Revised</asp:label></TD>
								<TD style="WIDTH: 278px; HEIGHT: 21px" width="278"><asp:textbox id="txtRevised" 
                                        runat="server" CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox></TD>
								<TD style="WIDTH: 134px; HEIGHT: 21px" width="134"><asp:label id="lblFma" runat="server" CssClass="mandatory">Final Modification Appropriation (FMA)</asp:label></TD>
								<TD style="HEIGHT: 21px" width="35%"><asp:textbox id="txtFma" runat="server" 
                                        CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 133px; HEIGHT: 21px" width="133">
									<asp:label id="lblGoNumber" runat="server" CssClass="mandatory">GO Number</asp:label></TD>
								<TD style="WIDTH: 278px; HEIGHT: 21px" width="278">
									<asp:textbox id="txtGoNumber" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD style="WIDTH: 134px; HEIGHT: 21px" width="134">
									<asp:label id="lblGoValid" runat="server" CssClass="mandatory">GO Valid upto Date(dd/mm/yyyy)</asp:label></TD>
								<TD style="HEIGHT: 21px" width="35%">
									<asp:textbox id="txtGoValidDate" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>
                                    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('DoAllotmentMas.txtGoValidDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
                                   <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtGoValidDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                    </TD>
							</TR>
							<TR>
								<TD style="WIDTH: 133px; HEIGHT: 21px" width="133">
									<asp:label id="lblAuthorisedBy" runat="server" CssClass="mandatory">Authorised by</asp:label></TD>
								<TD style="WIDTH: 278px; HEIGHT: 21px" width="278">
									<asp:textbox id="txtAuthorisedby" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD style="WIDTH: 134px; HEIGHT: 21px" width="134" class="mandatory">TO Code</TD>
								<TD style="HEIGHT: 21px" width="35%">
                                    <asp:TextBox ID="txtTOCode" runat="server" CssClass="formlines" Enabled="False" onblur="chkbadchar(this);"></asp:TextBox>
                                </TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 17px" colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>&nbsp;
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
							<TR>
								<TD align="center" colSpan="4"><asp:button id="btnSave" runat="server" 
                                        Width="100px" CssClass="formbuttons" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;&nbsp;
                                    <asp:button id="btnCancel" runat="server" Width="100px" CssClass="formbuttons" 
                                        Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:button>&nbsp;&nbsp;&nbsp;
                                    <asp:button id="btnSearch" runat="server" Width="100px" CssClass="formbuttons" Text="Search by DOCode"
										CausesValidation="False" onclick="btnSearch_Click" />

                                        &nbsp;&nbsp;&nbsp;

                                        <asp:button id="btnDODP" runat="server" Width="100px" 
                                        CssClass="formbuttons" Text="Search DO &amp; DP" CausesValidation="False" 
                                        onclick="btnDODP_Click"></asp:button> 
                                        
                                        
                                        &nbsp;&nbsp;&nbsp; 
                                        
                                        
                                        </asp:button><asp:button id="btnDel" runat="server" Width="100px" 
                                        CssClass="formbuttons" Text="Delete" onclick="btnlogout_Click"></asp:button></TD>
							</TR>
						</TABLE>
						<br>
						<table cellSpacing="2" cellPadding="1" width="100%" border="0" align="center">
							<TR>
								<TD align="center"><asp:datagrid id="dgItems" AutoGenerateColumns="False" 
                                        runat="server" CssClass="tableleftbgcolor"
										width="98%" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3"
										PageSize="15" AllowPaging="True" >
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="DO Code">
												<ItemTemplate>
													<asp:Label id="dglbldocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DP Code">
												<ItemTemplate>
													<asp:Label id="dglbldpcode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Fin.Year">
												<ItemTemplate>
													<asp:Label id="dglblfinyear" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"fin_year") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Amt.Sanc.">
												<ItemTemplate>
													<asp:Label id="dglblamtsanc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"amt_sanc") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Quarter1">
												<ItemTemplate>
													<asp:Label id="dglblquarter1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"quarter1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Quarter2">
												<ItemTemplate>
													<asp:Label id="dglblquarter2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"quarter2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Quarter3">
												<ItemTemplate>
													<asp:Label id="dglblquarter3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"quarter3") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Quarter4">
												<ItemTemplate>
													<asp:Label id="dglblquarter4" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"quarter4") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Revised">
												<ItemTemplate>
													<asp:Label id="dglblrevised" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"revised") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="FMA">
												<ItemTemplate>
													<asp:Label id="dglblfma" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"fma") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="AmtRele1">
												<ItemTemplate>
													<asp:Label id="dglblamtrele1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"amt_rele1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="AmtRele2">
												<ItemTemplate>
													<asp:Label id="dglblamtrele2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"amt_rele2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="AmtRele3">
												<ItemTemplate>
													<asp:Label id="dglblamtrele3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"amt_rele3") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="AmtRele4">
												<ItemTemplate>
													<asp:Label id="dglblamtrele4" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"amt_rele4") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Bill Type">
												<ItemTemplate>
													<asp:Label id="dglblbilltype" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"billtype") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Go Number">
												<ItemTemplate>
													<asp:Label id="dglblgonumber" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"gonumber") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Go Validupto">
												<ItemTemplate>
													<asp:Label id="dglblgovalidupto" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"govalidupto") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Authorised by">
												<ItemTemplate>
													<asp:Label id="dglblauthorisedby" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"authorisedby") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="TOCode">
												<ItemTemplate>
													<asp:Label id="dglblTOCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TOCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Addl_allot">
												<ItemTemplate>
													<asp:Label id="dglblAddl_allot" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"addl_allot") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:EditCommandColumn HeaderText="Action" ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel"
												EditText="Edit"></asp:EditCommandColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:datagrid>
								</TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD colSpan="4"><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
            

		</form>
	</body>
</HTML>
