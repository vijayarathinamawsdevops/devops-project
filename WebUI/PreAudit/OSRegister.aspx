<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc2" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<%@ Page language="c#" Codebehind="OSRegister.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.OSRegister" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>OSRegister</title>
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
		<form id="OSRegister" method="post" runat="server">
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
													<td align="center" colSpan="8">Advance</td>
												</tr>
												<tr>
													<td><asp:label id="lblBasNo" CssClass="mandatory" Runat="server">BAS NO </asp:label></td>
													<td><asp:dropdownlist id="drpBasNo" CssClass="drptxt" Runat="server">
															<asp:ListItem Value="Select">Select</asp:ListItem>
															<asp:ListItem Value="1">Bas-1</asp:ListItem>
															<asp:ListItem Value="2">Bas-2</asp:ListItem>
															<asp:ListItem Value="3">Bas-3</asp:ListItem>
														</asp:dropdownlist></td>
													<td><asp:label id="lblUnitNo" CssClass="mandatory" Runat="server">UNIT NO </asp:label></td>
													<td><asp:dropdownlist id="drpUnitNo" CssClass="drptxt" Runat="server">
															<asp:ListItem Value="Select">Select</asp:ListItem>
															<asp:ListItem Value="1">Unit-1</asp:ListItem>
															<asp:ListItem Value="2">Unit-2</asp:ListItem>
															<asp:ListItem Value="3">Unit-3</asp:ListItem>
														</asp:dropdownlist></td>
													<td><asp:label id="lblBillDate" CssClass="mandatory" Runat="server">BillDate</asp:label></td>
													<td><asp:textbox id="txtBillDate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
													<td><asp:label id="lblSerialNo" CssClass="mandatory" Runat="server">Monthly Serial No.</asp:label></td>
													<td><asp:textbox id="txtSerialNo" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="msvalidator" runat="server" ControlToValidate="txtSerialNo" ErrorMessage="Enter Only Numbers"
															ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
												</tr>
												<tr>
													<td><asp:label id="lblEmpGPFNo" CssClass="mandatory" Runat="server">EmpGPFNo</asp:label></td>
													<td><asp:textbox id="txtEmpGPFNo" CssClass="formlines" onblur="chkbadchar(this);" Runat="server"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpGPFNo"
															ControlToValidate="txtEmpGPFNo"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td><asp:label id="lblSuffix" runat="server" CssClass="mandatory">EmpSuffix</asp:label></td>
													<td><asp:textbox id="txtEMPSuffix" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId Suffix"
															ControlToValidate="txtEMPSuffix">
															<img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
													<td><asp:label id="lblEmpName" CssClass="mandatory" Runat="server">EmpName</asp:label></td>
													<td><asp:textbox id="txtEmpName" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="namevalidator" runat="server" ControlToValidate="txtEmpName" ErrorMessage="Enter Only Name"
															ValidationExpression="^[a-zA-Z].[a-zA-Z]*$"></asp:RegularExpressionValidator></td>
													<td><asp:label id="lblTokenNo" CssClass="mandatory" Runat="server">Token No.</asp:label></td>
													<td><asp:textbox id="txtTokenNo" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" ControlToValidate="txtTokenNo" ErrorMessage="Enter Only Numbers"
															ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
												</tr>
												<tr>
													<td><asp:label id="lblOrderNo" CssClass="mandatory" Runat="server">OrderNo</asp:label></td>
													<td><asp:textbox id="txtOrderNo" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
													<td><asp:label id="lblOrderDate" CssClass="mandatory" Runat="server">OrderDate</asp:label></td>
													<td><asp:textbox id="txtOrderDate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('OSRegister.txtOrderDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                            
                                                     <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtOrderDate"
                                                    CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
                                                     |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                            </td>
													<td><asp:label id="lblAmount" CssClass="mandatory" Runat="server">Amount</asp:label></td>
													<td><asp:textbox id="txtAmount" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="amtvalidator" runat="server" ControlToValidate="txtAmount" ErrorMessage="Enter Only Decimal Value"
															ValidationExpression="^[1-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
													<td><asp:label id="lblDOCode" CssClass="mandatory" Runat="server">D.O.Code</asp:label></td>
													<td>
														<asp:TextBox id="txtDOCode" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
												</tr>
												<tr>
													<td><asp:label id="lblReason" CssClass="mandatory" Runat="server">Reason</asp:label></td>
													<td><asp:textbox id="txtReason" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
													<td align="right" colSpan="6"><asp:button id="btnAddNew" CssClass="formbuttons" Runat="server" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button><asp:button id="btnClear" CssClass="formbuttons" Runat="server" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button><asp:button id="btnDelete" CssClass="formbuttons" Runat="server" Text="Delete" CausesValidation="False" onclick="btnDelete_Click"></asp:button></td>
												</tr>
												<tr class="formtitle">
													<td align="center" colSpan="8">Detailed</td>
												</tr>
												<tr>
													<td><asp:label id="lblTokenNoDet" CssClass="mandatory" Runat="server">TokenNO_DET</asp:label></td>
													<td><asp:textbox id="txtTokenNoDet" CssClass="formlines" Runat="server" onblur="chkbadchar(this);" ontextchanged="txtTokenNoDet_TextChanged"></asp:textbox></td>
													<td><asp:label id="lblAmountDet" CssClass="mandatory" Runat="server">Amount_DET</asp:label></td>
													<td><asp:textbox id="txtAmountDet" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="amtdetvalidator" runat="server" ControlToValidate="txtAmountDet" ErrorMessage="Enter Only Decimal Value"
															ValidationExpression="^[1-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
													<td><asp:label id="lblChallenNO" CssClass="mandatory" Runat="server">ChallenNO</asp:label></td>
													<td><asp:textbox id="txtChallenNO" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
													<td><asp:label id="lblDate" CssClass="mandatory" Runat="server">Date</asp:label></td>
													<td><asp:textbox id="txtDate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('OSRegister.txtDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                            
                                                     <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtDate"
CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
 |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                            
                                                            
                                                            </td>
												</tr>
												<tr>
													<td><asp:label id="lblChallenAmt" CssClass="mandatory" Runat="server">Challen Amount</asp:label></td>
													<td><asp:textbox id="txtChallenAmt" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="chlnamtvalidator" runat="server" ControlToValidate="txtChallenAmt" ErrorMessage="Enter Only Decimal Value"
															ValidationExpression="^[1-9]*.[0-9]{2}$"></asp:RegularExpressionValidator></td>
													<td><asp:label id="lblAdjustmentDate" CssClass="mandatory" Runat="server">Adujustment Date</asp:label></td>
													<td><asp:textbox id="txtAdjustmentDate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('OSRegister.txtAdjustmentDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                            
                                                            <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtAdjustmentDate"
CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))
 |((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                                                            </td>
													<td><asp:label id="lblExcessPayment" CssClass="mandatory" Runat="server">Excess Payment</asp:label></td>
													<td><asp:textbox id="txtExcessPayment" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
														<asp:RegularExpressionValidator id="examtvalidator" runat="server" ControlToValidate="txtExcessPayment" ErrorMessage="Enter Only Decimal Value"
															ValidationExpression="^[1-9]*.[0-9]{2}$"></asp:RegularExpressionValidator>
													<td align="right" colSpan="6"><asp:button id="btnadd" CssClass="formbuttons" Runat="server" Text="Add New" CausesValidation="False" onclick="btnadd_Click"></asp:button><asp:button id="btncancel" CssClass="formbuttons" Runat="server" Text="Cancel" CausesValidation="False" onclick="btncancel_Click"></asp:button></td>
									</td>
								</tr>
								<tr>
									<td align="center" colSpan="8"><asp:datagrid id="dgrdDetailed" Runat="server" AllowPaging="True" PagerStyle-Mode="NumericPages"
											GridLines="Horizontal" CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False"
											PageSize="5" ShowFooter="True">
											<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
											<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#99CCFF"></SelectedItemStyle>
											<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
											<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
											<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
											<Columns>
												<asp:TemplateColumn HeaderText="TokenNo_Det">
													<ItemTemplate>
														<asp:Label id=lbldTokenDET Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNO_Det")%>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="Amount_Det">
													<ItemTemplate>
														<asp:Label ID="lbldAmountDet" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount_Det")%>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="Challen_No">
													<ItemTemplate>
														<asp:Label ID="lbldChallenNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ChallenNo")%>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="Date">
													<ItemTemplate>
														<asp:Label ID="lbldDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Date")%>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="Challen_Amount">
													<ItemTemplate>
														<asp:Label ID="lbldChallenAmt" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Challen_Amt")%>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="Excess_Payment">
													<ItemTemplate>
														<asp:Label ID="lbldExcessPayment" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ExcessPayment")%>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="AdjustmentDate">
													<ItemTemplate>
														<asp:Label ID="lbldAdjustmentDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AdjustmentDate")%>'>
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
				</TBODY>
			</table>
			</td> </tr>
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
