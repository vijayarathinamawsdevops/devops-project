<%@ Page language="c#" Codebehind="TokenDetails.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.TokenDetails" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Token Details</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="TokenDetails" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="1" cellPadding="1" width="98%"
							border="0">
							<TR>
								<TD style="HEIGHT: 36px" align="center" colSpan="4"><FONT color="black" size="2"><STRONG>Token 
											Details </STRONG></FONT>
								</TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token Number</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" MaxLength="19" AutoPostBack="True" ontextchanged="txtTokenNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DPCode</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDPCode" runat="server" CssClass="formlines" MaxLength="15" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDOCode" runat="server" CssClass="mandatory">DOCode</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDOCode" runat="server" CssClass="formlines" MaxLength="5" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblBillType" runat="server" CssClass="mandatory">BillType</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillType" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblBillSub1" runat="server" CssClass="mandatory">BillSub1</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillSub1" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblBillSub2" runat="server" CssClass="mandatory">BillSub2</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillSub2" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" MaxLength="19" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblCounterID" runat="server" CssClass="mandatory">Counter ID</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtCounterID" runat="server" CssClass="formlines" MaxLength="5" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblCounterUserID" runat="server" CssClass="mandatory">CounterUserID</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtCounterUserID" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblBillStatus" runat="server" CssClass="mandatory">Bill Status</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillStatus" runat="server" CssClass="formlines" MaxLength="3" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblAuditor1" runat="server" CssClass="mandatory">Auditor1</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtAuditor1" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblAuditor2" runat="server" CssClass="mandatory">Auditor2</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtAuditor2" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblAuditor3" runat="server" CssClass="mandatory">Auditor3</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtAuditor3" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblInputBy" runat="server" CssClass="mandatory">Input By</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtInputBy" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDateCreated" runat="server" CssClass="mandatory">Date Created</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDateCreated" runat="server" CssClass="formlines" MaxLength="23" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblDateUpdated" runat="server" CssClass="mandatory">Date Updated</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDateUpdated" runat="server" CssClass="formlines" MaxLength="23" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblBillPresentedDate" runat="server" CssClass="mandatory">Bill Presented Date</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillPresentedDate" runat="server" CssClass="formlines" MaxLength="23" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox>
                                
                                <%--<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtBillPresentedDate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>

                                <asp:Label id="Label2" runat="server" CssClass="mandatory">(dd/mm/yyyy)</asp:Label>
                                 
                                 <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtBillPresentedDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>--%>
                                </TD>
								<TD width="15%"><asp:label id="lblCqDeliveredTo" runat="server" CssClass="mandatory">Cheque Delivered To</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtCqDeliveredTo" runat="server" CssClass="formlines" MaxLength="50" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblCqDeliveredDate" runat="server" CssClass="mandatory">Cheque Delivered Date</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtCqDeliveredDate" runat="server" CssClass="formlines" MaxLength="23" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox>
                               <%-- <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtCqDeliveredDate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>

                                <asp:Label id="Label1" runat="server" CssClass="mandatory">(dd/mm/yyyy)</asp:Label>
                                 
                                 <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtDateofTr"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>--%>
                                
                                
                                </TD>
								<TD width="15%"><asp:label id="lblNoofCheques" runat="server" CssClass="mandatory">Number  of Cheques</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtNoofCheques" runat="server" CssClass="formlines" MaxLength="10" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDdoorInd" runat="server" CssClass="mandatory">DdoorInd</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDdoorInd" runat="server" CssClass="formlines" MaxLength="1" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblChequeNoAlloted" runat="server" CssClass="mandatory">Cheque No .Alloted</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtChequeNoAlloted" runat="server" CssClass="formlines" MaxLength="1" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblNPA_NPB" runat="server" CssClass="mandatory">NPA / NPB</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtNPA_NPB" runat="server" CssClass="formlines" MaxLength="1" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblNPA_NPB_Date" runat="server" CssClass="mandatory">NPA / NPB Date</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtNPA_NPB_Date" runat="server" CssClass="formlines" MaxLength="16" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblByCashAmount" runat="server" CssClass="mandatory">By Cash Amount</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtByCashAmount" runat="server" CssClass="formlines" MaxLength="19" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblByTransferAmount" runat="server" CssClass="mandatory">By Transfer Amount</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtByTransferAmount" runat="server" CssClass="formlines" MaxLength="19" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblNPA_NPBDoneBy" runat="server" CssClass="mandatory">NPA / NPB Done By</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtNPA_NPBDoneBy" runat="server" CssClass="formlines" MaxLength="6" ReadOnly="True" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD colSpan="2">&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colspan="3"><asp:button id="btnCancel" runat="server" CssClass="formbuttons" Text="Clear" CausesValidation="False"
										Width="100px" onclick="btnCancel_Click"></asp:button><asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Visible="False" Width="100px" onclick="btnSave_Click"></asp:button></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnSearch" runat="server" CssClass="formbuttons" Text="Search" Visible="False"
										Width="100px" onclick="btnSearch_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AllowPaging="True" PageSize="15"
										CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" width="100%" onselectedindexchanged="dgItems_SelectedIndexChanged">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:datagrid></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
