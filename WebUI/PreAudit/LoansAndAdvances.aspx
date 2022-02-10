<%@ Page language="c#" Codebehind="LoansAndAdvances.aspx.cs" AutoEventWireup="True" Inherits=" eKaruvoolam.WebUI.PreAudit.LoansAndAdvances" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>LoansAndAdvances</title>
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
		<form id="LoansAndAdvances" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
				</tr>
				<tr>
					<td vAlign="top" height="100%">
						<table id="Table3" cellSpacing="1" cellPadding="3" width="100%" border="0">
							<tr>
								<td><uc1:volume id="Volume1" runat="server"></uc1:volume></td>
							</tr>
							<tr>
								<td><uc1:personaldetails id="PersonalDetails1" runat="server"></uc1:personaldetails></td>
							</tr>
							<tr>
								<td align="center">
									<table class="pgborder" id="Table2" cellSpacing="1" cellPadding="1" width="98%" align="center"
										border="0">
										<tr class="formtitle">
											<td align="center" colSpan="8">Loans And Advances</td>
										</tr>
										<tr>
											<td><asp:label id="lblEmpIdNo" CssClass="mandatory" Runat="server">EmpIdNo</asp:label></td>
											<td><asp:textbox id="txtEmpIdNo" CssClass="formlines" onblur="chkbadchar(this);" Runat="server"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpIdNo"
													ControlToValidate="txtEMPIDNo"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblSuffix" runat="server" CssClass="mandatory">Suffix</asp:label></td>
											<td style="WIDTH: 142px"><asp:TextBox id="txtEMPSuffix" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox>
												<asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ControlToValidate="txtEMPSuffix"
													ErrorMessage="Enter EmpId Suffix">
													<img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblNatureOfLoan" CssClass="mandatory" Runat="server">Nature Of Loan</asp:label></td>
											<td><asp:dropdownlist id="drpNatureOfLoan" CssClass="drptxt" Runat="server" Width="184px"></asp:dropdownlist></td>
											<td><asp:label id="lblSerialNo" CssClass="mandatory" Runat="server">Sanction Order No.</asp:label></td>
											<td><asp:textbox id="txtSanctionOrderNo" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
										</tr>
										<tr>
											<td><asp:label id="lblAmountSanctioned" CssClass="mandatory" Runat="server">Total Amount Sanctioned</asp:label></td>
											<td><asp:textbox id="txtAmountSanctioned" onblur="chkbadchar(this);" CssClass="formlines" Runat="server"></asp:textbox>
												<asp:RegularExpressionValidator id="totamtvalidator" runat="server" ControlToValidate="txtAmountSanctioned" ErrorMessage="Enter Decimal Value"
													ValidationExpression="^[0-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
											<td><asp:label id="lblAmountOfRecovery" CssClass="mandatory" Runat="server">Amount of Recovery</asp:label></td>
											<td style="WIDTH: 142px"><asp:textbox id="txtAmountOfRecovery" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
												<asp:RegularExpressionValidator id="amtvalidator" runat="server" ControlToValidate="txtCommencementOfRecovery" ErrorMessage="Enter Decimal Value"
													ValidationExpression="^[1-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
											<td><asp:label id="lblNoOfInstallments" CssClass="mandatory" Runat="server">No Of Installments</asp:label></td>
											<td><asp:textbox id="txtNoOfInstallments" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
												<asp:RegularExpressionValidator id="novalidator" runat="server" ControlToValidate="txtNoOfInstallments" ErrorMessage="Enter Only Numbers"
													ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
											<td><asp:label id="lblLoanCode" CssClass="mandatory" Runat="server">LoanCode</asp:label></td>
											<td><asp:dropdownlist id="ddlLoanCode" CssClass="drptxt" Runat="server" Width="174px"></asp:dropdownlist></td>
										</tr>
										<tr>
											<td><asp:label id="lblCommencementOfRecovery" CssClass="mandatory" Runat="server">Commencement Of Recovery</asp:label></td>
											<td><asp:textbox id="txtCommencementOfRecovery" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
											<td><asp:label id="lblorderdate" CssClass="mandatory" Runat="server">Order Date</asp:label></td>
											<td style="WIDTH: 142px"><asp:textbox id="txtorderdate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
													href="javascript:show_calendar('LoansAndAdvances.txtorderdate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Format is dd/mm/yyyy"  ControlToValidate="txtorderdate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                                    </td>
											<td align="right" colSpan="6">
												<asp:button id="btnAddNew" CssClass="formbuttons" Runat="server" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button><asp:button id="btnClear" CssClass="formbuttons" Runat="server" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
										</tr>
										<tr>
											<td align="center" colSpan="8"><asp:datagrid id="dgrdLoansAndAdvances" Runat="server" AllowPaging="True" PagerStyle-Mode="NumericPages"
													GridLines="Horizontal" CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False"
													PageSize="5">
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#99CCFF"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
													<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
													<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
													<Columns>
														<asp:TemplateColumn HeaderText="NatureOfLoan">
															<ItemTemplate>
																<asp:Label ID="lbldNatureOfLoan" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NatureOfLoan")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="SanctionOrderNo">
															<ItemTemplate>
																<asp:Label ID="lbldSanctionOrderNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SanctionOrderNo")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="AmountSanctioned">
															<ItemTemplate>
																<asp:Label ID="lbldAmountSanctioned" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TotalAmountSanctioned")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="AmountOfRecovery">
															<ItemTemplate>
																<asp:Label ID="lbldAmountOfRecovery" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AmountOfRecovery")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="NoOfInstallments">
															<ItemTemplate>
																<asp:Label ID="lbldNoOfInstallments" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NoOfInstallments")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="LoanCode">
															<ItemTemplate>
																<asp:Label ID="lbldLoanCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"LoanCode")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="CommencementOfRecovery">
															<ItemTemplate>
																<asp:Label ID="lbldCommencementOfRecovery" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CommencementOfRecovery")%>'>
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
					<td>
						<uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
