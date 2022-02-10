<%@ Page language="c#" Codebehind="S.C.R.Register.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.S_C_R_Register" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>S.C.R.Register </title>
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
		<form id="SCRRegister" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<tr>
								<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
							</tr>
							<TR>
								<TD><uc1:volume id="Volume1" runat="server"></uc1:volume></TD>
							</TR>
							<tr>
								<td align="center">
									<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
										<tr class="formtitle">
											<td align="center" colSpan="8"><FONT size="3">S.C.R.Register</FONT></td>
										</tr>
										<tr>
											<td><asp:label id="lblTokenNo" Runat="server" CssClass="mandatory">TokenNo</asp:label></td>
											<td style="WIDTH: 131px"><asp:textbox id="txtTokenNo" onblur="chkbadchar(this);" Runat="server" CssClass="formlines"></asp:textbox></td>
											<td><asp:label id="lblBillDate" runat="server" CssClass="mandatory">BillPresentedDate</asp:label></td>
											<td><asp:textbox id="txtBillDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox> <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;" 
                                                  href="javascript:show_calendar('txtBillDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
                                                  
                                              <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtBillDate"
                                                CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                 |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                  
                                                  </td>
											<td><asp:label id="lblGONO" Runat="server" CssClass="mandatory"> G.O.NO</asp:label></td>
											<td><asp:textbox id="txtGONO" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
											<td><asp:label id="lblGOdate" Runat="server" CssClass="mandatory">G.O.Date</asp:label></td>
											<td><asp:textbox id="txtGODate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
													href="javascript:show_calendar('SCRRegister.txtGODate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                               <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtGODate"
                                                CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                 |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                    
                                                    
                                                    </td>
										</tr>
										<tr>
											<td><asp:label id="lblSanctionAmount" Runat="server" CssClass="mandatory">SanctionAmount</asp:label></td>
											<td style="WIDTH: 131px"><asp:textbox id="txtSanctionAmount" onblur="chkbadchar(this);" Runat="server" CssClass="formlines"></asp:textbox><asp:regularexpressionvalidator id="amtvalidator" runat="server" ValidationExpression="^[0-9]*.[0-9]{3}$" ControlToValidate="txtSanctionAmount"
													ErrorMessage="Enter only Decimal value"></asp:regularexpressionvalidator></td>
											<td><asp:label id="lblPaidAmount" Runat="server" CssClass="mandatory"> PaidAmount</asp:label></td>
											<td><asp:textbox id="txtPaidAmount" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:regularexpressionvalidator id="amtvalidator2" runat="server" ValidationExpression="^[0-9]*.[0-9]{3}$" ControlToValidate="txtPaidAmount"
													ErrorMessage="Enter Only Decimal Value"></asp:regularexpressionvalidator></td>
											<td><asp:label id="lblSubject" Runat="server" CssClass="mandatory">Subject</asp:label></td>
											<td><asp:textbox id="txtSubject" Runat="server" CssClass="formlines" TextMode="MultiLine" onblur="chkbadchar(this);" Columns="10"></asp:textbox></td>
											<td align="right" colSpan="2"><asp:button id="btnAddNew" Runat="server" CssClass="formbuttons" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button>&nbsp;&nbsp;<asp:button id="btnClear" Runat="server" CssClass="formbuttons" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
										</tr>
										<tr>
											<td align="center" colSpan="8"><asp:datagrid id="dgrdSCRRegister" Runat="server" PagerStyle-Mode="NumericPages" AllowPaging="True"
													PageSize="5" AutoGenerateColumns="False" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" BackColor="White"
													CellPadding="3" GridLines="Horizontal" AllowSorting="True" style="Z-INDEX: 0" onselectedindexchanged="dgrdSCRRegister_SelectedIndexChanged">
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#99CCFF"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
													<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
													<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
													<Columns>
														<asp:TemplateColumn HeaderText="TokenNo">
															<ItemTemplate>
																<asp:Label id="lbldTokenNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Date">
															<ItemTemplate>
																<asp:Label id="lbldDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillPresentedDate")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="G.O.NO">
															<ItemTemplate>
																<asp:Label id="lbldGONO" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"GONO")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="G.O.Date">
															<ItemTemplate>
																<asp:Label id="lbldGODate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"GODate")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="SanctionAmount">
															<ItemTemplate>
																<asp:Label id="lbldSanctionAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SanctionAmount")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="PaidAmount">
															<ItemTemplate>
																<asp:Label id="lbldPaidAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PaidAmount")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Subject">
															<ItemTemplate>
																<asp:Label id="lbldSubject" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Subject")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Actions">
															<ItemTemplate>
																<asp:LinkButton id="lnkEdit" Runat="server" CausesValidation="False" CommandName="Edit">Edit</asp:LinkButton>&nbsp;|&nbsp;
																<asp:LinkButton id="lnkDelete" Runat="server" CausesValidation="False" CommandName="Delete">Delete</asp:LinkButton>&nbsp;
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
