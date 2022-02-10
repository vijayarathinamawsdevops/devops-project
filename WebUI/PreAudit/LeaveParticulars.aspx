<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="LeaveParticulars.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.LeaveParticulars" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc2" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>LeaveParticulars</title>
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
		<form id="LeaveParticulars" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<tr>
								<td>
									<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></td>
							</tr>
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
												<td align="center" colSpan="8">Leave Particulars</td>
											</tr>
											<tr>
												<td><asp:label id="lblEmpIdNo" Runat="server" CssClass="mandatory">EmpIdNo</asp:label></td>
												<td><asp:textbox id="txtEmpIdNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ControlToValidate="txtEMPIDNo"
														ErrorMessage="Enter EmpIdNo" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
												<td><asp:label id="lblSuffix" runat="server" CssClass="mandatory">Suffix</asp:label></td>
												<td><asp:TextBox id="txtEMPSuffix" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
													<asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId Suffix"
														ControlToValidate="txtEMPSuffix" Visible="False">
														<img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
												<td><asp:Label ID="lblOrderNo" Runat="server" CssClass="mandatory">OrderNo</asp:Label></td>
												<td><asp:TextBox ID="txtOrderNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
												<td><asp:Label ID="lblOrderDate" Runat="server" CssClass="mandatory">Order Date<br>(dd/mm/yyyy)</asp:Label></td>
												<td><asp:TextBox ID="txtOrderDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('LeaveParticulars.txtOrderDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                 <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtOrderDate"
                                                          CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                          |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                        
                                                        </td>
											</tr>
											<tr>
												<td><asp:Label ID="lblKindofLeave" Runat="server" CssClass="mandatory">Kind of Leave</asp:Label></td>
												<td><asp:DropDownList ID="drpKindOfLeave" Runat="server" CssClass="drptxt" AutoPostBack="true" Width="135px" onselectedindexchanged="drpKindOfLeave_SelectedIndexChanged">
														<asp:ListItem Value="Select">Select</asp:ListItem>
														<asp:ListItem Value="0">EL</asp:ListItem>
														<asp:ListItem Value="1">UELPA</asp:ListItem>
														<asp:ListItem Value="2">UELMC</asp:ListItem>
														<asp:ListItem Value="3">HPL</asp:ListItem>
														<asp:ListItem Value="4">HPLCFP</asp:ListItem>
														<asp:ListItem Value="5">EOL</asp:ListItem>
														<asp:ListItem Value="6">Prefix</asp:ListItem>
														<asp:ListItem Value="7">Suffix</asp:ListItem>
													</asp:DropDownList></td>
												<td><asp:Label ID="lblFromDate" Runat="server" CssClass="mandatory">Leave Granted From Date<br>(dd/mm/yyyy)</asp:Label></td>
												<td><asp:TextBox ID="txtFromDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('LeaveParticulars.txtFromDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                        
                                                  <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtFromDate"
                                                          CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                          |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                        </td>
												<td><asp:Label ID="lblToDate" Runat="server" CssClass="mandatory">Leave Granted To Date<br>(dd/mm/yyyy)</asp:Label></td>
												<td><asp:TextBox ID="txtToDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('LeaveParticulars.txtToDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                   <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtToDate"
                                                          CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                          |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                        
                                                        </td>
												<td><asp:Label ID="lblDaysAdmissible" Runat="server" CssClass="mandatory">Admissible No of Days</asp:Label></td>
												<td><asp:TextBox ID="txtDaysAdmissible" Runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True"></asp:TextBox>
													<asp:RegularExpressionValidator id="novalidation" runat="server" ErrorMessage="Enter Only Numbers" ControlToValidate="txtDaysAdmissible"
														ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
											</tr>
											<tr>
												<td><asp:Label ID="lblPost" Runat="server" CssClass="mandatory">Post</asp:Label></td>
												<td><asp:TextBox ID="txtPost" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
													<asp:RegularExpressionValidator id="postvalidator" runat="server" ErrorMessage="Enter only PostName" ControlToValidate="txtPost"
														ValidationExpression="^[a-zA-Z].[a-zA-Z]*$"></asp:RegularExpressionValidator></td>
												<td><asp:Label ID="lblStation" Runat="server" CssClass="mandatory">Station</asp:Label></td>
												<td><asp:TextBox ID="txtStation" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
													<asp:RegularExpressionValidator id="stationvalidator" runat="server" ErrorMessage="Enter Only stationName" ControlToValidate="txtStation"
														ValidationExpression="^[a-zA-Z].[a-zA-Z]*$"></asp:RegularExpressionValidator></td>
												<td><asp:Label ID="lblGazettedPage" Runat="server" CssClass="mandatory">GazettePage</asp:Label></td>
												<td><asp:TextBox ID="txtGazettePage" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
												<td><asp:Label ID="lblRemarks" Runat="server" CssClass="mandatory">Remarks</asp:Label></td>
												<td><asp:TextBox ID="txtRemarks" Runat="server" CssClass="formlines" TextMode="MultiLine" onblur="chkbadchar(this);"></asp:TextBox></td>
											</tr>
											<tr>
												<td align="right" colSpan="8"><asp:button id="btnAddNew" CssClass="formbuttons" Runat="server" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button>&nbsp;&nbsp;&nbsp;<asp:button id="btnClear" CssClass="formbuttons" Runat="server" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
											</tr>
											<tr>
												<td align="center" colSpan="8"><asp:datagrid id="dgrdLeave" Width="100%" Runat="server" GridLines="Horizontal" CellPadding="3"
														BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False" PageSize="5"
														PagerStyle-Mode="NumericPages" AllowPaging="True">
														<FooterStyle ForeColor="#4A3C8C" BackColor="#ECF5FF"></FooterStyle>
														<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#99CCFF"></SelectedItemStyle>
														<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
														<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
														<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
														<Columns>
															<asp:TemplateColumn HeaderText="OrderNo">
																<ItemTemplate>
																	<asp:Label ID="lbldOrderNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"OrderNo")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="OrderDate">
																<ItemTemplate>
																	<asp:Label ID=lbldOrderDate Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"OrderDate")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="GazettePage">
																<ItemTemplate>
																	<asp:Label ID="lbldGazettePage" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"GazettePage")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="KindOfLeave">
																<ItemTemplate>
																	<asp:Label ID="lbldKindOfLeave" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"KindOfLeave")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="GrantedFrom">
																<ItemTemplate>
																	<asp:Label ID="lbldGrantedFrom" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"GrantedFrom")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="GrantedTo">
																<ItemTemplate>
																	<asp:Label ID="lbldGrantedTo" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"GrantedTo")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="AdmissibleDays">
																<ItemTemplate>
																	<asp:Label ID="lbldAdmissibleDays" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"AdmissibleDays")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Remarks">
																<ItemTemplate>
																	<asp:Label ID="lbldRemarks" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"Remarks")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Post">
																<ItemTemplate>
																	<asp:Label ID="lbldPost" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"Post")%>'>
																	</asp:Label>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Station">
																<ItemTemplate>
																	<asp:Label ID="lbldStation" Runat=server Text='<%# DataBinder.Eval(Container.DataItem,"Station")%>'>
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
										</TBODY>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><asp:ValidationSummary ID="valid" Runat="server" ShowMessageBox="True" ShowSummary="True" DisplayMode="BulletList"></asp:ValidationSummary></td>
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
