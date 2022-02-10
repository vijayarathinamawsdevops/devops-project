<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="Pleaders.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.Pleaders" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Pleaders Fees</title>
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
								<td>
									<P>&nbsp;<uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></P>
									<P>
										<uc1:volume id="Volume1" runat="server"></uc1:volume></P>
								</td>
							</tr>
							<tr>
								<td align="center">
									<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
										<tr class="formtitle">
											<td align="center" colSpan="8">Pleaders Fees</td>
										</tr>
										<tr>
											<td><asp:label id="lblCaseNo" Runat="server" CssClass="mandatory">CaseNO</asp:label></td>
											<td><asp:textbox id="txtCaseNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" Visible="False" ErrorMessage="Enter CaseNo"
													ControlToValidate="txtCaseNo"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">TokenNo</asp:label></td>
											<td><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" Visible="False" ErrorMessage="Entertokenno"
													ControlToValidate="txtTokenNo"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblAmount" Runat="server" CssClass="mandatory"> Amount</asp:label></td>
											<td><asp:textbox id="txtAmount" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
												<asp:RegularExpressionValidator id="amtvalidator" runat="server" ControlToValidate="txtAmount" ErrorMessage="Enter Only Decimal Value"
													ValidationExpression="^[1-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
											<td><asp:label id="lblDate" Runat="server" CssClass="mandatory"> Date</asp:label></td>
											<td><asp:textbox id="txtDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
                                             <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;" 
                                             href="javascript:show_calendar('txtDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
												<asp:RegularExpressionValidator id="datevalidator" runat="server" ControlToValidate="txtDate" ErrorMessage="Enter Only Date Format(dd/mm/yyyy)"
													ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-|/|.](0[1-9]|1[012])[-|/|.](19|20)\d\d$"></asp:RegularExpressionValidator></td>
										</tr>
										<tr>
											<td><asp:label id="lblSubject" Runat="server" CssClass="mandatory">Subject</asp:label></td>
											<td><asp:textbox id="txtSubject" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" TextMode="MultiLine" ontextchanged="txtSubject_TextChanged"></asp:textbox></td>
											<td align="right" colSpan="8"><asp:button id="btnAddNew" Runat="server" CssClass="formbuttons" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button><asp:button id="btnClear" Runat="server" CssClass="formbuttons" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
										</tr>
										<tr>
											<td align="center" colSpan="8"><asp:datagrid id="dgrdPleaders" Runat="server" PagerStyle-Mode="NumericPages" AllowPaging="True"
													PageSize="5" AutoGenerateColumns="False" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" BackColor="White"
													CellPadding="3" GridLines="Horizontal" Width="75%">
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
														<asp:TemplateColumn HeaderText="Amount">
															<ItemTemplate>
																<asp:Label id="lbldAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount")%>'>
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
