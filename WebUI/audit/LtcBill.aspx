<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Page language="c#" Codebehind="LtcBill.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.LtcBill" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - LTC Bill</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="LtcBill" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TBODY>
								<TR>
									<TD style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
								</TR>
                                <tr><td> 
								<asp:Panel ID="pnlControls" Runat="server">
                                <table class="parabr">  
									<TR>
										<TD colSpan="4">
											<uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
									</TR>
									<TR>
										<TD width="15%">
											<asp:label id="Label1" runat="server" CssClass="mandatory">Pay ( Basic + PP )</asp:label></TD>
										<TD width="35%">
											<asp:textbox id="txtBasic" tabIndex="3" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="10"></asp:textbox>
											<asp:requiredfieldvalidator id="rfdBasic" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtBasic"
												ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
										<TD width="15%">
											<asp:label id="lblBlockYear" runat="server" CssClass="mandatory">Block Year</asp:label></TD>
										<TD width="35%">
											<asp:textbox id="txtBlockYear" tabIndex="4" onblur="chkbadchar(this);" runat="server" CssClass="formlines" MaxLength="9"></asp:textbox>
											<asp:regularexpressionvalidator id="revBlockYear" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtBlockYear"
												ErrorMessage="e.g. 2004-2005" ValidationExpression="(\d{4})-(\d{4})"></asp:regularexpressionvalidator></TD>
									</TR>
									<TR>
										<TD width="15%">
											<asp:label id="lblSanctionOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
										<TD width="35%">
											<asp:textbox id="txtSanctionOrder" tabIndex="5" onblur="chkbadchar(this);" runat="server" CssClass="formlines" MaxLength="50"></asp:textbox>
											<asp:requiredfieldvalidator id="rfdSanctionOrder" runat="server" CssClass="validatemessage" Display="Dynamic"
												ControlToValidate="txtSanctionOrder" ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
										<TD width="15%">
											<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
										<TD width="35%">
											<asp:textbox id="txtSanctionDate" tabIndex="6" onblur="chkbadchar(this);" runat="server" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
												href="javascript:show_calendar('LtcBill.txtSanctionDate');"><IMG border="0" src="../Images/show-calendar.gif"></A>
											<asp:requiredfieldvalidator id="rfvSanctionDt" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtSanctionDate"
												ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
									</TR>
									<TR>
										<TD width="15%">
											<asp:label id="Label4" runat="server" CssClass="mandatory"> LTC Advance</asp:label></TD>
										<TD colSpan="3">
											<asp:textbox id="txtAdvDrawn" tabIndex="7" onblur="chkbadchar(this);" runat="server" CssClass="formlines"></asp:textbox>
											<asp:requiredfieldvalidator id="rfdOneTwoWay" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtAdvDrawn"
												ErrorMessage="Data Required"></asp:requiredfieldvalidator>
											<asp:rangevalidator id="rngtxtAdvance" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtAdvDrawn"
												ErrorMessage="Incorrect Data" MaximumValue="999999999" MinimumValue="0"></asp:rangevalidator></TD>
									</TR>
									<TR>
										<TD colSpan="4" align="left">
											<asp:datagrid id="dgrdFamMembers" runat="server" Width="85%" AutoGenerateColumns="False" ShowFooter="True"
												cssclass="formlines">
												<Columns>
													<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
													<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
													<asp:BoundColumn DataField="TokenNo" ReadOnly="True" HeaderText="TokenNo" HeaderStyle-Width="10px"
														ItemStyle-Width="10px" HeaderStyle-CssClass="mandatory">
														<ItemStyle HorizontalAlign="Center"></ItemStyle>
													</asp:BoundColumn>
													<asp:BoundColumn DataField="MemberNo" HeaderText="Sl. No." HeaderStyle-Width="50px" ItemStyle-Width="10px"
														HeaderStyle-CssClass="mandatory">
														<ItemStyle HorizontalAlign="Right"></ItemStyle>
													</asp:BoundColumn>
													<asp:BoundColumn DataField="MemberName" HeaderText="Name" HeaderStyle-CssClass="mandatory" HeaderStyle-Width="200px"></asp:BoundColumn>
													<asp:BoundColumn DataField="Age" HeaderText="Age" HeaderStyle-CssClass="mandatory">
														<ItemStyle HorizontalAlign="Right"></ItemStyle>
													</asp:BoundColumn>
													<asp:BoundColumn DataField="Gender" HeaderText="Gender" FooterText="Enter M or F" FooterStyle-ForeColor="#cc0000"
														HeaderStyle-CssClass="mandatory" HeaderStyle-Width="20px">
														<ItemStyle HorizontalAlign="Center"></ItemStyle>
													</asp:BoundColumn>
													<asp:TemplateColumn HeaderText="RelationShip" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id=Label2RelationShip Text='<%# DataBinder.Eval(Container.DataItem, "RelationShip")%>' Runat="server" >
															</asp:Label>
														</ItemTemplate>
														<EditItemTemplate>
															<asp:DropDownList Width="70px" id=cboRelationShip runat="server" CssClass="formlines" DataValueField="RelationShipCode" DataTextField="RelationShipDesc" DataSource="<%#DropDownDataView%>">
															</asp:DropDownList>
														</EditItemTemplate>
													</asp:TemplateColumn>
													<asp:BoundColumn DataField="OneTwoWay" HeaderText="One/Two Way" FooterText="Enter   1 or 2" FooterStyle-ForeColor="#cc0000"
														HeaderStyle-CssClass="mandatory" HeaderStyle-Width="50px" HeaderStyle-HorizontalAlign="Center">
														<ItemStyle HorizontalAlign="Center"></ItemStyle>
													</asp:BoundColumn>
													<asp:BoundColumn DataField="JourneyDate" HeaderText="JourneyDate" FooterStyle-ForeColor="#cc0000"
														FooterText="dd/mm/yyyy" HeaderStyle-CssClass="mandatory" HeaderStyle-Width="80px"></asp:BoundColumn>
												</Columns>
											</asp:datagrid></TD>
									</TR>
									<TR>
										<TD colSpan="4">
											<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<asp:textbox id="todaydate" runat="server" onblur="chkbadchar(this);" Visible="False"></asp:textbox></TD>
									</TR>
									<TR>
										<TD colSpan="4" align="left">
											<asp:linkbutton id="lbtnEmpFamAdd" tabIndex="8" runat="server" CssClass="formbuttons" Width="130px"
												Height="18" onclick="lbtnEmpFamAdd_Click">Add L.T.C Details</asp:linkbutton>&nbsp;
											<asp:linkbutton id="lbtnEmpDetails" tabIndex="9" runat="server" CssClass="formbuttons" Width="150px"
												Visible="False" Height="18" onclick="lbtnEmpDetails_Click">View L.T.C Details</asp:linkbutton>&nbsp;
										</TD>
									</TR></table>
								</asp:Panel>
                                </td></tr>
								<tr>
									<td><asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" TabIndex="10" onclick="btnSave_Click"></asp:button>
									</td>
								</tr>
				</tr>
				<TR>
					<TD><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
				</TR>
				<TR>
					<TD><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
				</TR>
			</TABLE>
			</TD></TR>
			<tr>
				<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
			</tr>
			<TR>
				<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
			</TR>
			</TBODY></TABLE>
		</form>
	</body>
</HTML>
