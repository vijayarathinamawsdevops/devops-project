<%@ Register TagPrefix="uc2" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="MedicalCharges.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.MedicalCharges" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>MedicalCharges</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/PreAudit.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="MedicalCharges" method="post" runat="server">
        <uc1:topheader id="TopHeader1" runat="server"></uc1:topheader>
							<uc2:personaldetails id="PersonalDetails1" runat="server"></uc2:personaldetails>
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">							
							<tr>
								<td align="center">
									<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
										<tr class="formtitle">
											<td align="center" colSpan="8">MedicalCharges</td>
										</tr>
										<tr>
											<td align="left"><asp:label id="lblGPFNo" Runat="server" CssClass="mandatory">GPFNo</asp:label></td>
											<td><asp:textbox id="txtGPFNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);" ontextchanged="txtGPFNo_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" Visible="False" ErrorMessage="Enter GPFNo"
													ControlToValidate="txtGPFNo"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td align="left"><asp:label id="lblGPFSuffix" runat="server" CssClass="mandatory">GPFSuffix</asp:label></td>
											<td align="left"><asp:textbox id="txtGPFSuffix" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" Visible="False" ErrorMessage="Enter EmpId Suffix"
													ControlToValidate="txtGPFSuffix"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td align="left"><asp:label id="lblTokenNo" Runat="server" CssClass="mandatory">Token No</asp:label></td>
											<td align="left"><asp:textbox id="txtTokenNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
											<td align="left"><asp:label id="lblDate" Runat="server" CssClass="mandatory">Date</asp:label></td>
											<td align="left"><asp:textbox id="txtDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
                                            <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
													href="javascript:show_calendar('MedicalCharges.txtPeriodTo');"><IMG src="../Images/show-calendar.gif" border="0"></A>

                                             <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" 
                                                    ErrorMessage="dd/MM/yyyy"  ControlToValidate="txtPeriodTo"
   CssClass="validatemessage"  
                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
        |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                            </td>
										</tr>
										<tr>
											<td><asp:label id="lblToWhom" Runat="server" CssClass="mandatory">TOWhom</asp:label></td>
											<td align="left"><asp:dropdownlist id="ddltowhom" Runat="server" CssClass="drptxt" 
                                                    AutoPostBack="True">
													<asp:ListItem Value="Select">Select</asp:ListItem>
													<asp:ListItem Value="Self">Self</asp:ListItem>
													<asp:ListItem Value="Wife">Wife</asp:ListItem>
													<asp:ListItem Value="Husband">Husband</asp:ListItem>
													<asp:ListItem Value="Daughter">Daughter</asp:ListItem>
													<asp:ListItem Value="Son">Son</asp:ListItem>
													<asp:ListItem Value="Mother">Mother</asp:ListItem>
													<asp:ListItem Value="Father">Father</asp:ListItem>
													<asp:ListItem></asp:ListItem>
												</asp:dropdownlist></td>
											<td align="left"><asp:label id="lblPeriodFrom" Runat="server" CssClass="mandatory">Period From</asp:label></td>
											<td align="left"><asp:textbox id="txtPeriodFrom" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
													href="javascript:show_calendar('MedicalCharges.txtPeriodFrom');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                    <asp:RegularExpressionValidator id="RegularExpressionValidator1" 
                                                    runat="server" ErrorMessage="dd/MM/yyyy"  ControlToValidate="txtPeriodFrom"
                                                       CssClass="validatemessage"  
                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                            |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                    </td>
											<td align="left"><asp:label id="lblPeriodTo" Runat="server" CssClass="mandatory">Period TO</asp:label></td>
											<td><asp:textbox id="txtPeriodTo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
													href="javascript:show_calendar('MedicalCharges.txtPeriodTo');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                    
                                                <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" 
                                                    ErrorMessage="Date is dd/MM/yyyy"  ControlToValidate="txtPeriodTo"
   CssClass="validatemessage"  
                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
        |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                    
                                                    </td>
											<td><asp:label id="lblAmount" Runat="server" CssClass="mandatory">Amount</asp:label></td>
											<td align="left"><asp:textbox id="txtAmount" Runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox></td>
										</tr>
										<tr>
											<td align="right" colSpan="8"><asp:button id="btnAddNew" Runat="server" CssClass="formbuttons" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button><asp:button id="btnClear" Runat="server" CssClass="formbuttons" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
										</tr>
										<tr>
											<td align="center" colSpan="8"><asp:datagrid id="dgrdMedicalCharges" Runat="server" 
                                                    PagerStyle-Mode="NumericPages" AllowPaging="True"
													PageSize="5" AutoGenerateColumns="False" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" BackColor="White"
													CellPadding="3" GridLines="Horizontal" Width="100%" 
                                                    onselectedindexchanged="dgrdMedicalCharges_SelectedIndexChanged">
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#99CCFF"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
													<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
													<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
													<Columns>
														<asp:TemplateColumn HeaderText="Date">
															<ItemTemplate>
																<asp:Label ID=lbldDate Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"Date")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="ToWhom">
															<ItemTemplate>
																<asp:Label ID="lbldToWhom" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"ToWhom")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="PeriodFrom">
															<ItemTemplate>
																<asp:Label ID="lbldPeriodFrom" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"PeriodFrom")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="PeriodTo">
															<ItemTemplate>
																<asp:Label ID="lbldPeriodTo" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"PeriodTo")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Amount">
															<ItemTemplate>
																<asp:Label ID="lbldAmount" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"Amount")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Actions">
															<ItemTemplate>
																<asp:LinkButton id="lnkEdit" Runat="server" CausesValidation="False" CommandName="Edit">Edit</asp:LinkButton>|
																<asp:LinkButton id="lnkDelete" Runat="server" CausesValidation="False" CommandName="Delete">Delete</asp:LinkButton>
															</ItemTemplate>
														</asp:TemplateColumn>
													</Columns>
													<PagerStyle Mode="NumericPages"></PagerStyle>
												</asp:datagrid></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><asp:validationsummary id="valid" Runat="server" DisplayMode="BulletList" ShowSummary="True" ShowMessageBox="True"></asp:validationsummary></td>
				</tr>
				<tr>
					<td><uc2:errorlabel id="ErrorLabel1" runat="server"></uc2:errorlabel></td>
				</tr>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
