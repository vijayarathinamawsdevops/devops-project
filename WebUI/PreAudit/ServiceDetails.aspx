<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="ServiceDetails.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.ServiceDetails" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>ServiceDetails</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/Style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Servicedetails" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></td>
				</tr>
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<TBODY>
								<TR>
									<TD>
										<uc1:volume id="Volume1" runat="server"></uc1:volume></TD>
								</TR>
								<tr>
									<td>
										<uc2:PersonalDetails id="PersonalDetails1" runat="server"></uc2:PersonalDetails></td>
								</tr>
								<tr>
									<td align="center">
										<table class="pgborder" id="Table2" cellSpacing="1" cellPadding="1" width="98%" align="center"
											border="0">
											<TBODY>
												<tr class="formtitle">
													<td align="center" colSpan="8">Service Details</td>
												</tr>
												<tr>
													<td style="HEIGHT: 42px"><asp:label id="lblEmpIdNo" CssClass="mandatory" Runat="server">EmpIdNo</asp:label></td>
													<td style="HEIGHT: 42px"><asp:textbox id="txtEmpIdNo" CssClass="formlines" Runat="server" onblur="chkbadchar(this);" AutoPostBack="True"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId No"
															ControlToValidate="txtEMPIDNo" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td style="HEIGHT: 42px"><asp:label id="lblSuffix" runat="server" CssClass="mandatory">Suffix</asp:label></td>
													<td style="HEIGHT: 42px"><asp:TextBox id="txtEMPSuffix" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
														<asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId Suffix"
															ControlToValidate="txtEMPSuffix" Visible="False">
															<img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator>
													</td>
													<td style="HEIGHT: 42px"><asp:label id="lblPostNo" runat="server" CssClass="mandatory">Post No</asp:label></td>
													<td style="HEIGHT: 42px"><asp:textbox id="txtPostNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);" Enabled="False"></asp:textbox></td>
													<td style="HEIGHT: 42px"><asp:label id="lblPostName" runat="server" CssClass="mandatory">Post Name</asp:label></td>
													<td style="HEIGHT: 42px"><asp:textbox id="txtPostName" onblur="chkbadchar(this);" runat="server" CssClass="formlines" ontextchanged="txtPostName_TextChanged"></asp:textbox>
														<asp:RegularExpressionValidator id="postnamevalidator" tabIndex="-1" runat="server" ControlToValidate="txtPostName"
															ErrorMessage="Enter Correct Format" ValidationExpression="^[a-zA-Z'.\s]{1,50}$"></asp:RegularExpressionValidator></td>
												</tr>
												<tr>
													<td><asp:label id="lblOrderNo" runat="server" CssClass="mandatory">Order No</asp:label></td>
													<td><asp:textbox id="txtOrderNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
													<td><asp:label id="lblOrderDate" runat="server" CssClass="mandatory">Order Date<br>(dd/mm/yyyy)</asp:label></td>
													<td><asp:textbox id="txtOrderDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('Servicedetails.txtOrderDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
														<asp:RegularExpressionValidator id="RegularExpressionValidatorDate" runat="server" ControlToValidate="txtOrderDate"
															ErrorMessage="Enter Correct Format for Date(dd/mm/yyyy)" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-|/|.](0[1-9]|1[012])[-|/|.](19|20)\d\d$"></asp:RegularExpressionValidator></td>
													<td><asp:label id="lblFromDate" runat="server" CssClass="mandatory">From Date<br>dd/mm/yyyy</asp:label></td>
													<td><asp:textbox id="txtFromDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('Servicedetails.txtFromDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                      <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="*"  ControlToValidate="txtFromDate"
                                                        CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                         |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                            
                                                            
                                                            
                                                            <asp:dropdownlist id="ddlFromSession" tabIndex="-1" CssClass="drptext" Runat="server" Width="50px">
															<asp:ListItem Value="-1">--Select--</asp:ListItem>
															<asp:ListItem Value="0">FN</asp:ListItem>
															<asp:ListItem Value="1">AN</asp:ListItem>
														</asp:dropdownlist></td>
													<td><asp:label id="lblTodate" runat="server" CssClass="mandatory">To Date<br>dd/mm/yyyy</asp:label></td>
													<td><asp:textbox id="txtTodate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('Servicedetails.txtTodate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                          <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="*"  ControlToValidate="txtTodate"
                                                            CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                             |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>  
                                                            
                                                            
                                                            <asp:dropdownlist id="ddlToSession" tabIndex="-1" CssClass="drptext" Runat="server" Width="50px">
															<asp:ListItem Value="-1">--Select--</asp:ListItem>
															<asp:ListItem Value="0">FN</asp:ListItem>
															<asp:ListItem Value="1">AN</asp:ListItem>
														</asp:dropdownlist></td>
												</tr>
												<tr>
													<td><asp:Label id="lblBasicPay" Runat="server" CssClass="mandatory">BasicPay</asp:Label></td>
													<td><asp:TextBox ID="txtBasicPay" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
														<asp:RegularExpressionValidator id="RegularExpressionValidatorNo" runat="server" ControlToValidate="txtBasicPay"
															ErrorMessage="Enter Only decimal value" ValidationExpression="^[0-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
													<td><asp:label id="lblPlace" runat="server" CssClass="mandatory">Place</asp:label></td>
													<td><asp:textbox id="txtPlace" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="placevalidator" runat="server" ControlToValidate="txtPlace" ErrorMessage="Enter Only String"
															ValidationExpression="^[a-zA-Z'.]{1,40}$"></asp:RegularExpressionValidator></td>
													<td><asp:label id="lblSubstance" runat="server" CssClass="mandatory">Substance</asp:label></td>
													<td><asp:textbox id="txtSubstance" runat="server" CssClass="formlines" onblur="chkbadchar(this);" TextMode="MultiLine"></asp:textbox></td>
												</tr>
												<tr>
													<td align="right" colSpan="8"><asp:button id="btnSave" CssClass="formbuttons" Runat="server" Width="95px" Text="Add New" CausesValidation="False" onclick="btnSave_Click"></asp:button><asp:button id="btnCance" CssClass="formbuttons" Runat="server" Width="95px" Text="Cancel" onclick="btnCance_Click"></asp:button></td>
												</tr>
												<tr>
													<td colSpan="8" align="center"><asp:datagrid id="dgrdService" Runat="server" Width="100%" GridLines="Horizontal" CellPadding="3"
															BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False" PagerStyle-Mode="NumericPages"
															PageSize="5" AllowPaging="True">
															<FooterStyle ForeColor="#4A3C8C" BackColor="#ECF5FF"></FooterStyle>
															<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
															<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
															<ItemStyle Height="20px" ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
															<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
															<Columns>
																<asp:TemplateColumn HeaderText="PostNo">
																	<ItemTemplate>
																		<asp:Label ID="lbldPostNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PostNo")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="OrderNo">
																	<ItemTemplate>
																		<asp:Label ID="lbldOrderNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"OrderNo")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="OrderDate">
																	<ItemTemplate>
																		<asp:Label ID="lbldOrderDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"OrderDate")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Substance">
																	<ItemTemplate>
																		<asp:Label ID="lbldSubstance" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Substance")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Post Name">
																	<ItemTemplate>
																		<asp:Label ID="lbldPostName" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PostName")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="BasicPay">
																	<ItemTemplate>
																		<asp:Label ID="lbldBasicPay" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BasicPay")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="From Date">
																	<ItemTemplate>
																		<asp:Label ID="lbldFromDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"FromDate")%>'>
																		</asp:Label>
																		<asp:Label ID=lbldFromSession Runat=server Text='<%#DataBinder.Eval(Container.DataItem,"FromSession")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="To Date">
																	<ItemTemplate>
																		<asp:Label ID="lbldToDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ToDate")%>'>
																		</asp:Label>
																		<asp:Label ID="lbldToSession" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"ToSession")%>'>
																		</asp:Label>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn HeaderText="Place of Work">
																	<ItemTemplate>
																		<asp:Label ID="lbldPlace" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PlaceOfWork")%>'>
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
															<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" PageButtonCount="5"
																Mode="NumericPages"></PagerStyle>
														</asp:datagrid></td>
												</tr>
											</TBODY>
										</table>
									</td>
								</tr>
							</TBODY>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<asp:ValidationSummary id="valid" Runat="server" DisplayMode="BulletList" ShowSummary="True" ShowMessageBox="True"></asp:ValidationSummary></td>
				</tr>
				<tr>
					<td>
						<uc2:ErrorLabel id="ErrorLabel1" runat="server"></uc2:ErrorLabel></td>
				</tr>
				<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
