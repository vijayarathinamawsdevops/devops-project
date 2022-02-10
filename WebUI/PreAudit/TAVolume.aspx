<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="TAVolume.aspx.cs" AutoEventWireup="True" Inherits="eKaruvvolam.WebUI.PreAudit.TAVolume" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>TA Volume </title>
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
		<form id="TAVolume" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<tr>
								<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
							</tr>
							<TR>
								<TD></TD>
							</TR>
							<tr>
								<td align="center">
									<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
										<tr class="formtitle">
											<td align="center" colSpan="8"><FONT size="3">TA Volume</FONT></td>
										</tr>
										<tr>
											<td><asp:label id="lblTokenNo" CssClass="mandatory" Runat="server">TokenNo</asp:label></td>
											<td style="WIDTH: 131px"><asp:textbox id="txtTokenNo" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ControlToValidate="txtGpfNo"
													ErrorMessage="Enter EmpIdNo" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblGpfNo" runat="server" CssClass="mandatory">GpfNo</asp:label></td>
											<td align="left"><asp:textbox id="txtGpfNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ControlToValidate="txtGpfSuffix"
													ErrorMessage="Enter EmpId Suffix" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblGpfSuffix" CssClass="mandatory" Runat="server"> GpfSuffix</asp:label></td>
											<td align="left"><asp:textbox id="txtGpfSuffix" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
											<td><asp:label id="lbldate" CssClass="mandatory" Runat="server">Date</asp:label></td>
											<td align="left"><asp:textbox id="txtdate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
                                             <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;" 
                                               href="javascript:show_calendar('txtdate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
                                               <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtdate"
                                                CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                 |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>


                                            </td>
										</tr>
										<tr>
											<td><asp:label id="lblAmount" CssClass="mandatory" Runat="server">Amount</asp:label></td>
											<td style="WIDTH: 131px" align="center"><asp:textbox id="txtAmount" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
												<asp:RegularExpressionValidator id="amtvalidator" runat="server" ErrorMessage="Enter only Decimal value" ControlToValidate="txtAmount"
													ValidationExpression="^[0-9]*.[0-9]{3}$"></asp:RegularExpressionValidator></td>
											<td><asp:label id="lblFromDate" CssClass="mandatory" Runat="server"> From Date</asp:label></td>
											<td align="left"><asp:textbox id="txtfromdate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
													href="javascript:show_calendar('TAVolume.txtfromdate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                 <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtfromdate"
                                                    CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                     |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>   
                                                    
                                                    </td>
											<td><asp:label id="lblTodate" CssClass="mandatory" Runat="server">ToDate</asp:label></td>
											<td align="left"><asp:textbox id="txttodate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
													href="javascript:show_calendar('TAVolume.txttodate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                   <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txttodate"
                                                    CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                     |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator> 
                                                    
                                                    </td>
											<td><asp:label id="lblplace" CssClass="mandatory" Runat="server">PlaceOfvisit</asp:label></td>
											<td align="left"><asp:textbox id="txtplace" CssClass="formlines" Runat="server" Columns="10" TextMode="MultiLine" onblur="chkbadchar(this);"></asp:textbox></td>
										</tr>
										<tr>
											<td align="right" colSpan="8"><asp:button id="btnAddNew" CssClass="formbuttons" Runat="server" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button><asp:button id="btnClear" CssClass="formbuttons" Runat="server" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
										</tr>
										<tr>
											<td align="center" colSpan="8"><asp:datagrid id="dgrdtavolume" Runat="server" 
                                                    Width="100%" GridLines="Horizontal" CellPadding="3"
													BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False" PageSize="5"
													AllowPaging="True" PagerStyle-Mode="NumericPages" onselectedindexchanged="dgrdtavolume_SelectedIndexChanged">
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
																<asp:Label id="lbldDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Date")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="FromDate">
															<ItemTemplate>
																<asp:Label id="lbldFormDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"FromDate")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="ToDate">
															<ItemTemplate>
																<asp:Label id="lbldToDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ToDate")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Amount">
															<ItemTemplate>
																<asp:Label id="lbldAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="PlaceOfVisit">
															<ItemTemplate>
																<asp:Label id="lbldPlace" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PlaceOfvisit")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Actions">
															<ItemTemplate>
																<asp:LinkButton id="lnkEdit" Runat="server" CausesValidation="False" 
                                                                    CommandName="Edit">Edit</asp:LinkButton>&nbsp;|&nbsp;
																<asp:LinkButton id="lnkDelete" Runat="server" CausesValidation="False" 
                                                                    CommandName="Delete">Delete</asp:LinkButton>&nbsp;|&nbsp;
																<asp:LinkButton id="lnkdetail" runat="server" CausesValidation="False" 
                                                                    CommandName="Detail">Detail</asp:LinkButton>
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
