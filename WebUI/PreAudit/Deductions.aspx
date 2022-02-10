<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Page language="c#" Codebehind="Deductions.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.Deductions" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Deductions</title>
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
		<form id="Deductions" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<TBODY>
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
										<uc1:PersonalDetails id="PersonalDetails1" runat="server"></uc1:PersonalDetails></td>
								</tr>
								<tr>
									<td align="center">
										<table class="pgborder" id="Table2" cellSpacing="1" cellPadding="1" width="98%" align="center"
											border="0">
											<TBODY>
												<tr class="formtitle">
													<td align="center" colSpan="8">Deductions</td>
												</tr>
												<tr>
													<td><asp:label id="lblEmpIdNo" Runat="server" CssClass="mandatory">Emp Id No</asp:label></td>
													<td style="WIDTH: 134px"><asp:textbox id="txtEmpIdNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId No"
															ControlToValidate="txtEmpIdNo" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td><asp:label id="lblSuffix" runat="server" CssClass="mandatory">Suffix</asp:label></td>
													<td>
														<asp:TextBox id="txtEMPSuffix" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId Suffix"
															ControlToValidate="txtEMPSuffix" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td><asp:label id="lblDeducDate" Runat="server" CssClass="mandatory">Deduction Date</asp:label></td>
													<td><asp:textbox id="txtDeducDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtDeducDate_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvDeductionDate" runat="server" CssClass="validatemessage" ControlToValidate="txtDeducDate"
															ErrorMessage="Enter Deduction Date"><img src="../Images/alert.gif" height="20" width="15"></asp:requiredfieldvalidator>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('Deductions.txtDeducDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                         <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtDeducDate"
                                                          CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                          |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                            
                                                            
                                                            
                                                            </td>
									</td>
					</td>
					<td><asp:label id="lblMcNo" Runat="server" CssClass="mandatory">Money Column No<br>(MC No)</asp:label></td>
					<td><asp:textbox id="txtMcNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvMcNo" runat="server" CssClass="validatemessage" ControlToValidate="txtMcNo"
							ErrorMessage="Enter Money Column No"><img src="../Images/alert.gif" height="20" width="15"></asp:requiredfieldvalidator>
						<asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ControlToValidate="txtMcNo" ErrorMessage="Enter Only Numbers"
							ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
				</tr>
				<tr>
					<td><asp:label id="lblDeducCode" Runat="server" CssClass="mandatory">Deduction Code</asp:label></td>
					<td style="WIDTH: 134px"><asp:dropdownlist id="ddlDeducCode" Runat="server" CssClass="drptxt" AutoPostBack="True" Width="136px"
							Height="32px"></asp:dropdownlist></td>
					<td><asp:label id="lblTokenNo" Runat="server" CssClass="mandatory">Token No</asp:label></td>
					<td><asp:textbox id="txtTokenNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
						<asp:RegularExpressionValidator id="tokenvalidator" runat="server" ControlToValidate="txtTokenNo" ErrorMessage="Enter Only Numbers"
							ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
					<td><asp:label id="lblTokenDate" Runat="server" CssClass="mandatory">Token Date</asp:label></td>
					<td><asp:textbox id="txtTokenDate" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
							href="javascript:show_calendar('Deductions.txtTokenDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                            
                     <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="dd/MM/yyyy format"  ControlToValidate="txtTokenDate"
                                                          CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                          |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                            </td>
					<td><asp:label id="lblSerialNo" Runat="server" CssClass="mandatory">Serial No</asp:label></td>
					<td><asp:textbox id="txtSerialNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
				</tr>
				<tr>
					<td><asp:label id="lblPayMode" Runat="server" CssClass="mandatory">Pay Mode</asp:label>
					<td style="WIDTH: 134px"><asp:radiobuttonlist id="radPayMode" Runat="server" CssClass="mandatory" AutoPostBack="True" RepeatDirection="Horizontal" onselectedindexchanged="radPayMode_SelectedIndexChanged">
							<asp:ListItem Value="0">Monthly</asp:ListItem>
							<asp:ListItem Value="1">Partial</asp:ListItem>
						</asp:radiobuttonlist></td>
					<td><asp:Label ID="lblNoOfDays" Runat="server" CssClass="mandatory">No Of Days</asp:Label></td>
					<td><asp:TextBox ID="txtNoOfDays" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
					<td><asp:Label ID="lblGuideLetterReference" Runat="server" CssClass="mandatory">Guide Letter Reference</asp:Label></td>
					<td><asp:TextBox ID="txtGuideLetterReference" Runat="server" CssClass="formlines" TextMode="MultiLine" onblur="chkbadchar(this);"></asp:TextBox></td>
					<td><asp:label id="lblAmount" Runat="server" CssClass="mandatory">Amount</asp:label></td>
					<td><asp:textbox id="txtAmount" Runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
						<asp:RegularExpressionValidator id="amtvalidator" runat="server" ControlToValidate="txtAmount" ErrorMessage="Enter Only Decimal Value"
							ValidationExpression="^[1-9]*.[0-9]{3}$"></asp:RegularExpressionValidator></td>
				</tr>
				<tr>
					<td><asp:label id="lblReason" Runat="server" CssClass="mandatory">Reason</asp:label></td>
					<td style="WIDTH: 134px"><asp:textbox id="txtReason" Runat="server" CssClass="formlines" Width="135px" onblur="chkbadchar(this);"></asp:textbox></td>
					<td><asp:Label ID="lblNextDate" Runat="server" CssClass="mandatory" Visible="False">NextDate</asp:Label></td>
					<td><asp:TextBox ID="txtNextDate" Runat="server" CssClass="formlines" Visible="False"></asp:TextBox>&nbsp;</td>
				</tr>
				<tr align="right">
					<td colSpan="8"><asp:button id="btnAdd" Runat="server" CssClass="formbuttons" Text="Add New" CausesValidation="False" onclick="btnAdd_Click"></asp:button>&nbsp;&nbsp;&nbsp;<asp:button id="btnClear" Runat="server" CssClass="formbuttons" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
				</tr>
				<tr>
					<td colSpan="8" align="center"><asp:datagrid id="dgrdDeductions" Runat="server" Width="100%" AutoGenerateColumns="False" BorderColor="#E7E7FF"
							BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Horizontal">
							<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
							<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
							<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
							<Columns>
								<asp:TemplateColumn HeaderText="Token Number">
									<ItemTemplate>
										<asp:Label ID="lbldTokenNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo")%>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="TokenDate">
									<ItemTemplate>
										<asp:Label ID="lbldTokenDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenDate")%>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="DeductionCode">
									<ItemTemplate>
										<asp:Label ID="lbldDeducCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DeductionCode")%>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="SerialNo">
									<ItemTemplate>
										<asp:Label ID="lbldSerialNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SerialNo")%>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="PayMode">
									<ItemTemplate>
										<asp:Label ID="lbldPayMode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PayMode")%>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="NoOfDays">
									<ItemTemplate>
										<asp:Label ID="lbldNoOfDays" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NoOfDays")%>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="GuideLetterReference">
									<ItemTemplate>
										<asp:Label ID="lbldGuideLetterReference" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"GuideLetterReference")%>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Reason">
									<ItemTemplate>
										<asp:Label ID="lbldReason" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Reason")%>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Amount">
									<ItemTemplate>
										<asp:Label ID="lbldAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount")%>'>
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
							<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></td>
				</tr>
				<tr>
					<td colspan="8" align="right">
						<asp:Label ID="lblGrossTotal" Runat="server" CssClass="mandatory">Gross Total : Rs.</asp:Label>&nbsp;&nbsp;
						<asp:Label ID="txtGrossTotal" Runat="server" CssClass="totaltext" Visible="False"></asp:Label></td>
				</tr>
				<tr>
					<td colspan="8" align="right">
						<asp:Label ID="lblTotal" Runat="server" CssClass="mandatory">Deduction Total: Rs.</asp:Label>
						<asp:Label ID="txtTotal" Runat="server" CssClass="mandatory" Visible="False"></asp:Label>
					</td>
				</tr>
				<tr>
					<td colspan="8" align="right">
						<asp:Label ID="lblNetTotal" Runat="server" CssClass="mandatory">Net Total: Rs.</asp:Label>
						<asp:Label ID="txtNetTotal" Runat="server" CssClass="mandatory" Visible="False"></asp:Label>
					</td>
				</tr>
				<tr>
					<td colspan="8" align="center">
						<asp:Button ID="btnApply" Runat="server" CssClass="formbuttons" Text="Apply The Same For Next Month"
							Visible="False" CausesValidation="False" onclick="btnApply_Click"></asp:Button>
					</td>
				</tr>
			</table>
			</TD></TR></TBODY></TABLE></TD></TR>
			<tr>
				<td><asp:ValidationSummary ID="valid" Runat="server" ShowMessageBox="True" ShowSummary="True" DisplayMode="BulletList"></asp:ValidationSummary>
					<uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
			</tr>
			<tr>
				<td>
					<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
			</tr>
			</TBODY></TABLE>
		</form>
	</body>
</HTML>
