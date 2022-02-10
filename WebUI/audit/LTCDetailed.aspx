<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="LTCDetailed.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.LTCDetailed" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
  <HEAD>
		<title>eKaruvoolam - LTC Detailed</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
  </HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="LTCDetailed" method="post" runat="server">
        
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<tr>
								<td>
                                 

                                  
  
									<asp:Panel ID="pnlControls" Runat="server">
            <TABLE  class="parabr">
              <TR>
                <TD colSpan=4 style="text-align:left">
<uc1:billinfo id=BillInfo1 runat="server"></uc1:billinfo></TD></TR>
              <TR>
                <TD colSpan=4>
<uc1:gpfnumber id=GPFNumber1 runat="server"></uc1:gpfnumber></TD></TR>
              <TR>
                <TD width="15%">
<asp:label id=Label1 runat="server" CssClass="mandatory">Pay ( Basic + PP )</asp:label></TD>
                <TD width="35%">
<asp:textbox id=txtBasic tabIndex=3 runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>
<asp:requiredfieldvalidator id=rfdBasic runat="server" CssClass="validatemessage" ErrorMessage="Data Required" ControlToValidate="txtBasic" Display="Dynamic"></asp:requiredfieldvalidator></TD>
                <TD width="15%">
<asp:label id=lblBlockYear runat="server" CssClass="mandatory">Block Year</asp:label></TD>
                <TD width="35%">
<asp:textbox id=txtBlockYear tabIndex=4 runat="server" CssClass="formlines" MaxLength="9" onblur="chkbadchar(this);" ></asp:textbox>
<asp:regularexpressionvalidator id=revBlockYear runat="server" CssClass="validatemessage" ErrorMessage="e.g. 2004-2005" ControlToValidate="txtBlockYear" Display="Dynamic" ValidationExpression="(\d{4})-(\d{4})"></asp:regularexpressionvalidator></TD></TR>
              <TR>
                <TD width="15%">
<asp:label id=lblSanctionOrder runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
                <TD width="35%">
<asp:textbox id=txtSanctionOrder tabIndex=5 runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox>
<asp:requiredfieldvalidator id=rfdSanctionOrder runat="server" CssClass="validatemessage" ErrorMessage="Data Required" ControlToValidate="txtSanctionOrder" Display="Dynamic"></asp:requiredfieldvalidator></TD>
                <TD width="15%">
<asp:label id=lblSanctionDate runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
                <TD width="35%">
<asp:textbox id=txtSanctionDate tabIndex=6 runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);" ></asp:textbox><A 
                  onmouseover="window.status='Date Picker';return true;" 
                  onmouseout="window.status='';return true;" 
                  href="javascript:show_calendar('LTCDetailed.txtSanctionDate');"><IMG 
                  src="../Images/show-calendar.gif" border=0></A> 
<asp:requiredfieldvalidator id=rfvSanctionDt runat="server" CssClass="validatemessage" ErrorMessage="Data Required" ControlToValidate="txtSanctionDate" Display="Dynamic"></asp:requiredfieldvalidator>
<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
</TD></TR>
              <TR>
                <TD width="15%">
<asp:label id=lblAdvance runat="server" CssClass="mandatory"> LTC Advance</asp:label></TD>
                <TD width="35%">
<asp:textbox id=txtAdvDrawn tabIndex=7 runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
<asp:requiredfieldvalidator id=rfdOneTwoWay runat="server" CssClass="validatemessage" ErrorMessage="Data Required" ControlToValidate="txtAdvDrawn" Display="Dynamic"></asp:requiredfieldvalidator>
<asp:rangevalidator id=rngtxtAdvance runat="server" CssClass="validatemessage" ErrorMessage="Incorrect Data" ControlToValidate="txtAdvDrawn" Display="Dynamic" MinimumValue="0" MaximumValue="999999999"></asp:rangevalidator></TD>
                <TD width="15%">
<asp:label id=lblScale runat="server" CssClass="mandatory"> Scale of Pay</asp:label></TD>
                <TD width="35%">
<asp:dropdownlist id=cboScale tabIndex=8 runat="server" CssClass="formlines" Width="195px"></asp:dropdownlist></TD></TR>
              <TR>
                  <td align="left" colspan="4">
                      <asp:DataGrid ID="dgrdFamMembers" runat="server" AutoGenerateColumns="False" 
                          cssclass="formlines" ShowFooter="True" Width="100%">
                          <Columns>
                              <asp:EditCommandColumn ButtonType="LinkButton" CancelText="Cancel" 
                                  EditText="Edit" UpdateText="Update"></asp:EditCommandColumn>
                              <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                              <asp:BoundColumn DataField="TokenNo" HeaderStyle-CssClass="mandatory" 
                                  HeaderStyle-Width="10px" HeaderText="Token No" ItemStyle-Width="10px" 
                                  ReadOnly="True">
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:BoundColumn>
                              <asp:BoundColumn DataField="MemberNo" HeaderStyle-CssClass="mandatory" 
                                  HeaderStyle-Width="50px" HeaderText="Sl. No." ItemStyle-Width="10px">
                                  <ItemStyle HorizontalAlign="Right" />
                              </asp:BoundColumn>
                              <asp:BoundColumn DataField="MemberName" HeaderStyle-CssClass="mandatory" 
                                  HeaderStyle-Width="200px" HeaderText="Name"></asp:BoundColumn>
                              <asp:BoundColumn DataField="Age" HeaderStyle-CssClass="mandatory" 
                                  HeaderText="Age">
                                  <ItemStyle HorizontalAlign="Right" />
                              </asp:BoundColumn>
                              <asp:BoundColumn DataField="Gender" FooterStyle-ForeColor="#cc0000" 
                                  FooterText="Enter M or F" HeaderStyle-CssClass="mandatory" 
                                  HeaderStyle-Width="20px" HeaderText="Gender">
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:BoundColumn>
                              <asp:TemplateColumn HeaderStyle-CssClass="mandatory" HeaderText="RelationShip">
                                  <ItemTemplate>
                                      <asp:Label ID="Label2RelationShip" Runat="server" 
                                          Text='<%# DataBinder.Eval(Container.DataItem, "RelationShip")%>'>
                                      </asp:Label>
                                  </ItemTemplate>
                                  <EditItemTemplate>
                                      <asp:DropDownList ID="cboRelationShip" runat="server" CssClass="formlines" 
                                          DataSource="<%#DropDownDataView%>" DataTextField="RelationShipDesc" 
                                          DataValueField="RelationShipCode" Width="70px">
                                      </asp:DropDownList>
                                  </EditItemTemplate>
                              </asp:TemplateColumn>
                              <asp:BoundColumn DataField="OneTwoWay" FooterStyle-ForeColor="#cc0000" 
                                  FooterText="Enter   1 or 2" HeaderStyle-CssClass="mandatory" 
                                  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="50px" 
                                  HeaderText="One/Two Way">
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:BoundColumn>
                              <asp:BoundColumn DataField="JourneyDate" FooterStyle-ForeColor="#cc0000" 
                                  FooterText="dd/mm/yyyy" HeaderStyle-CssClass="mandatory" 
                                  HeaderStyle-Width="80px" HeaderText="JourneyDate"></asp:BoundColumn>
                              <asp:BoundColumn DataField="TicketNo" HeaderStyle-CssClass="mandatory" 
                                  HeaderStyle-Width="80px" HeaderText="Ticket Number"></asp:BoundColumn>
                              <asp:BoundColumn DataField="TicketAmt" HeaderStyle-CssClass="mandatory" 
                                  HeaderStyle-Width="80px" HeaderText="Ticket Amount"></asp:BoundColumn>
                          </Columns>
                      </asp:DataGrid>
                  </td>
                </TR>
              <TR>
                <TD colSpan=4>
                    <asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="todaydate" runat="server" Visible="False"></asp:TextBox>
                  </TD></TR>
                                        </TABLE>
									</asp:Panel>
   
								</td>
							</tr>
							<TR>
								<TD align="left"><asp:linkbutton id="lbtnEmpFamAdd" runat="server" CssClass="formbuttons" TabIndex="9"
										Height="18" onclick="lbtnEmpFamAdd_Click">Add L.T.C Details</asp:linkbutton>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <asp:linkbutton id="lbtnEmpDetails" runat="server" CssClass="formbuttons" Width="130px" TabIndex="10"
										Height="18" CausesValidation="False" Visible="False" onclick="lbtnEmpDetails_Click">View L.T.C Details</asp:linkbutton>&nbsp;&nbsp;
                                   <br /><br /><br />
                                   <asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" TabIndex="11" onclick="btnSave_Click"></asp:button>
                                        </TD>
								<TD colspan="3">
									 
									 
								</TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label>
								</TD>
							</TR>
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</table> 
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
