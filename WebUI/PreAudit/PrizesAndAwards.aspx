<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="PrizesAndAwards.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.PrizesAndAwards" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Prizes&Awards Register </title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/Style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Pleaders" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<tr>
								<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
							</tr>
							<TR>
								<TD>
									<uc1:volume id="Volume1" runat="server"></uc1:volume></TD>
							</TR>
							<tr>
								<td align="center">
									<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
										<tr class="formtitle">
											<td align="center" colSpan="8"><FONT size="3">Prizes&amp;Awards Register</FONT></td>
										</tr>
										<tr>
											<td><asp:label id="lblName" CssClass="mandatory" Runat="server">Name</asp:label></td>
											<td><asp:textbox id="txtName" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ControlToValidate="txtEMPIDNo"
													ErrorMessage="Enter EmpIdNo" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">TokenNo</asp:label></td>
											<td><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ControlToValidate="txtEMPSuffix"
													ErrorMessage="Enter EmpId Suffix" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblDesignation" CssClass="mandatory" Runat="server"> Designation</asp:label></td>
											<td><asp:textbox id="txtdesig" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
												<asp:RegularExpressionValidator id="desigvalidator" runat="server" ErrorMessage="Enter Only Designation format"
													ControlToValidate="txtdesig" ValidationExpression="^[a-zA-Z'.\s]{1,50}$"></asp:RegularExpressionValidator></td>
											<td><asp:label id="lblDate" CssClass="mandatory" Runat="server"> Date</asp:label></td>
											<td><asp:textbox id="txtDate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox> <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;" 
                                             href="javascript:show_calendar('txtDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
												<asp:RegularExpressionValidator id="datevalidator" runat="server" ErrorMessage="Enter Only Date Format(dd/mm/yyyy)"
													ControlToValidate="txtDate" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-|/|.](0[1-9]|1[012])[-|/|.](19|20)\d\d$"></asp:RegularExpressionValidator></td>
										</tr>
										<tr>
											<td><asp:label id="lblDepartment" CssClass="mandatory" Runat="server">Department</asp:label></td>
											<td><asp:textbox id="txtDepart" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
												<asp:RegularExpressionValidator id="departvalidator" runat="server" ErrorMessage="Enter Only department format"
													ControlToValidate="txtDepart" ValidationExpression="^[a-zA-Z].[a-zA-Z]*$"></asp:RegularExpressionValidator></td>
											<td><asp:label id="lblAward" CssClass="mandatory" Runat="server">Award Type</asp:label></td>
											<td><asp:textbox id="txtAward" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
											<td><asp:label id="lblAmount" CssClass="mandatory" Runat="server">Amount</asp:label></td>
											<td><asp:textbox id="txtAmount" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
												<asp:RegularExpressionValidator id="amtvalidator" runat="server" ErrorMessage="Enter only Decimal value" ControlToValidate="txtAmount"
													ValidationExpression="^[1-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
											<td align="right" colSpan="8"><asp:button id="btnAddNew" CssClass="formbuttons" Runat="server" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button><asp:button id="btnClear" CssClass="formbuttons" Runat="server" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
										</tr>
										<tr>
											<td align="center" colSpan="8"><asp:datagrid id="dgrdAwards" Runat="server" Width="75%" GridLines="Horizontal" CellPadding="3"
													BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False" PageSize="5"
													AllowPaging="True" PagerStyle-Mode="NumericPages">
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#99CCFF"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
													<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
													<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
													<Columns>
														<asp:TemplateColumn HeaderText="TokenNo">
															<ItemTemplate>
																<asp:Label id=lbldTokenNo Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Date">
															<ItemTemplate>
																<asp:Label id=lbldDate Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Date")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Name">
															<ItemTemplate>
																<asp:Label id="lbldName" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Name")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Designation">
															<ItemTemplate>
																<asp:Label id="lblddesig" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Designation")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Department">
															<ItemTemplate>
																<asp:Label id="lbldDepart" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Department")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Amount">
															<ItemTemplate>
																<asp:Label id="lbldAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="AwardType">
															<ItemTemplate>
																<asp:Label id="lbldAwardType" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AwardType")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Actions">
															<ItemTemplate>
																<asp:LinkButton id="lnkEdit" Runat="server" CausesValidation="False" CommandName="Edit">Edit</asp:LinkButton>&nbsp;|&nbsp;
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
					<td><asp:validationsummary id="valid" Runat="server" ShowMessageBox="True" ShowSummary="True" DisplayMode="BulletList"></asp:validationsummary></td>
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
