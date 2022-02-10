<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tpf.aspx.cs" Inherits="eKaruvoolam.WebUI.audit.Tpf" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml">
	<head id="Head1" runat="server">
		<title>eKaruvoolam - T.P.F</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script language="javascript">
		    function enableGrid() {
		        if (document.getElementById("divTPFDetails").style.display == "none")
		            document.getElementById("divTPFDetails").style.display = "block";
		        else
		            document.getElementById("divTPFDetails").style.display = "none";
		    }

		    function BalanceAmtCalculation() {
		        var AgAmt = 0;
		        var Subs = 0;
		        var Refund = 0;
		        var Ida = 0;
		        var wDrawal = 0;
		        var Balance = 0;

		        if (document.getElementById("txtAGamt").value != "")
		            AgAmt = document.getElementById("txtAGamt").value;
		        if (document.getElementById("txtSubs").value != "")
		            Subs = document.getElementById("txtSubs").value;
		        if (document.getElementById("txtRefund").value != "")
		            Refund = document.getElementById("txtRefund").value;
		        if (document.getElementById("txtIDA").value != "")
		            Ida = document.getElementById("txtIDA").value;
		        if (document.getElementById("txtWdl").value != "")
		            wDrawal = document.getElementById("txtWdl").value;
		        Balance = Number(AgAmt) + Number(Subs) + Number(Refund) + Number(Ida) - Number(wDrawal);
		        txtBalance.Text = Balance;
		    }

		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Tpf" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD width="100%"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td>
						<table>
							<TR>
								<TD  ><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
							<tr>
								<td><asp:panel id="pnlControls" Runat="server">
									<table cellSpacing="2" cellPadding="1" width="98%" border="0">

											<TBODY>
												<TR>
													<TD class="mandatory" style="HEIGHT: 20px">TPF Number</TD>
													<TD style="HEIGHT: 20px">
														<asp:textbox id="txtTPFNumber" tabIndex="1" runat="server" CssClass="formlines" MaxLength="30"
															onblur="chkbadchar(this);" AutoPostBack="True"></asp:textbox>
														<asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtTPFNumber" ErrorMessage=" !"></asp:requiredfieldvalidator></TD>
													<TD class="mandatory" style="HEIGHT: 20px">Name</TD>
													<TD style="HEIGHT: 20px">
														<asp:textbox id="txtName" tabIndex="2" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="30"></asp:textbox>
														<asp:requiredfieldvalidator id="rvdName" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtName"
															ErrorMessage=" !"></asp:requiredfieldvalidator></TD>
												</TR>
												<TR>
													<TD class="mandatory">Date of Birth</TD>
													<TD class="validatemessage">
														<asp:textbox id="txtDOB" tabIndex="3" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>
                                                        <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('Tpf.txtDOB')"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                        (dd/mm/yyyy)
														<asp:requiredfieldvalidator id="rfvDateofBirth" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtDOB" ErrorMessage=" !"></asp:requiredfieldvalidator>
														<asp:regularexpressionvalidator id="revSanctionDate" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtDOB" ErrorMessage="Date expected in dd/mm/yyyy" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:regularexpressionvalidator></TD>
													<TD class="mandatory">Date of Retirement</TD>
													<TD class="validatemessage">
														<asp:textbox id="txtDOR" tabIndex="4" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>
                                                         <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('Tpf.txtDOR')"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                        (dd/mm/yyyy)
														<asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtDOR" ErrorMessage="!"></asp:requiredfieldvalidator></TD>
												</TR>
												<TR>
													<TD class="mandatory">Nature of Loan</TD>
													<TD>
														<asp:dropdownlist id="cboPFloanNature" tabIndex="5" runat="server" CssClass="drptxt" AutoPostBack="True"
															Width="140px" onselectedindexchanged="cboPFloanNature_SelectedIndexChanged"></asp:dropdownlist></TD>
													<TD class="mandatory">Pay (Basic + PP)</TD>
													<TD>
														<asp:textbox id="txtPay" tabIndex="6" runat="server" CssClass="formlines" 
                                                            MaxLength="12" onblur="chkbadchar(this);"></asp:textbox>
														<asp:requiredfieldvalidator id="rfvBasic" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtPay"
															ErrorMessage="!"></asp:requiredfieldvalidator>
														<asp:RangeValidator id="RangeValidator4" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtPay" ErrorMessage="Must be a Number" MinimumValue="0" MaximumValue="9999999999"></asp:RangeValidator></TD>
												</TR>
												<TR>
													<TD class="mandatory">Admissible (%)</TD>
													<TD>
														<asp:dropdownlist id="cboPFcategory" runat="server" CssClass="drptxt" Width="140px" Enabled="False"></asp:dropdownlist></TD>
													<TD class="mandatory">Purpose</TD>
													<TD>
														<asp:dropdownlist id="cboPFloanPurpose" tabIndex="7" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
												</TR>
												<TR>
													<TD class="mandatory">Sanction Order</TD>
													<TD>
														<asp:textbox id="txtSanctionOrder" tabIndex="8" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></TD>
													<TD class="mandatory">Sanction Date</TD>
													<TD>
														<asp:textbox id="txtSanctionDate" tabIndex="9" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('Tpf.txtSanctionDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
														<asp:requiredfieldvalidator id="rfvtxtSancDate" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtSanctionDate" ErrorMessage="!"></asp:requiredfieldvalidator>
														<asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtSanctionDate" ErrorMessage="!" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:regularexpressionvalidator></TD>
												</TR>
												<TR>
													<TD colSpan="3">
														<asp:label id="Label21" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="Fuchsia"
															Font-Underline="True" Font-Bold="True">ADD :</asp:label></TD>
												</TR>
												<TR>
													<TD class="mandatory" style="HEIGHT: 34px">Accounts Slip Figure</TD>
													<TD style="HEIGHT: 34px">
														<asp:textbox id="txtAGamt" tabIndex="10" runat="server" CssClass="formlines" 
                                                            MaxLength="12" AutoPostBack="True" ontextchanged="txtAGamt_TextChanged1" 
                                                          onblur="chkbadchar(this);" >0</asp:textbox>
														<asp:rangevalidator id="rvdAgAmt" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtAGamt"
															ErrorMessage=" !" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
													<TD class="mandatory" style="HEIGHT: 34px">Subscription</TD>
													<TD style="HEIGHT: 34px">
														<asp:textbox id="txtSubs" tabIndex="11" runat="server" CssClass="formlines" onblur="chkbadchar(this);"

                                                            MaxLength="12" AutoPostBack="True" ontextchanged="txtAGamt_TextChanged1">0</asp:textbox>
														<asp:rangevalidator id="rvdSubs" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtSubs"
															ErrorMessage="!" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
												</TR>
												<TR>
													<TD class="mandatory">Refund</TD>
													<TD>
														<asp:textbox id="txtRefund" tabIndex="12" runat="server" CssClass="formlines" MaxLength="12"
															onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtAGamt_TextChanged1">0</asp:textbox>
														<asp:rangevalidator id="rvdRefund" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtRefund"
															ErrorMessage="!" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
													<TD class="mandatory">I.D.A</TD>
													<TD>
														<asp:textbox id="txtIDA" tabIndex="13" runat="server" CssClass="formlines"  onblur="chkbadchar(this);"

                                                            MaxLength="12" AutoPostBack="True" ontextchanged="txtAGamt_TextChanged1">0</asp:textbox>
														<asp:rangevalidator id="rvdIDA" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtIDA"
															ErrorMessage="!" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
												</TR>
												<TR>
													<TD colSpan="4">
														<asp:label id="Label22" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="Magenta"
															Font-Underline="True" Font-Bold="True">LESS: </asp:label></TD>
												</TR>
												<TR>
													<TD class="mandatory">Withdrawl</TD>
													<TD>
														<asp:textbox id="txtWdl" tabIndex="14" runat="server" CssClass="formlines" onblur="chkbadchar(this);"

                                                            MaxLength="12" AutoPostBack="True" ontextchanged="txtAGamt_TextChanged1">0</asp:textbox>
														<asp:rangevalidator id="rvdWdl" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtWdl"
															ErrorMessage="!" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
													<TD class="mandatory">Loan Amt. Pending</TD>
													<TD>
														<asp:textbox id="txtpendingloanamt" tabIndex="15" runat="server" 
                                                            CssClass="formlines" MaxLength="12"
															onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtpendingloanamt_TextChanged">0</asp:textbox>
														<asp:rangevalidator id="Rangevalidator1" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtpendingloanamt" ErrorMessage="!" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
												</TR>
												<TR>
													<TD>
														<asp:label id="Label23" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="Magenta"
															Font-Underline="True" Font-Bold="True">BALANCE :</asp:label>
														<asp:label id="Label10" runat="server" CssClass="mandatory"> in Account</asp:label></TD>
													<TD>
														<asp:textbox id="txtBalance" tabIndex="16" runat="server" CssClass="formlines" MaxLength="12"
															onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtBalance_TextChanged1" >0</asp:textbox>
														<asp:requiredfieldvalidator id="rfvtxtbal" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtBalance"
															ErrorMessage="!"></asp:requiredfieldvalidator>
														<asp:rangevalidator id="rvtxtBal" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtBalance"
															ErrorMessage="!" MinimumValue="1" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
													<TD class="mandatory">Eligible Amount</TD>
													<TD>
														<asp:textbox id="txtAdmissibleAmt" tabIndex="17" runat="server" 
                                                            CssClass="formlines" MaxLength="12"
															onblur="chkbadchar(this);" Enabled="False">0</asp:textbox>
														<asp:rangevalidator id="rvdSanctionedAmt" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtAdmissibleAmt" ErrorMessage="!" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
												</TR>
												<TR>
													<TD class="mandatory">Consolidate Amt.</TD>
													<TD>
														<asp:textbox id="txtconamt" tabIndex="18" runat="server" CssClass="formlines" 
                                                            MaxLength="12" onblur="chkbadchar(this);">0</asp:textbox>
														<asp:rangevalidator id="Rangevalidator2" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtconamt" ErrorMessage="!" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
													<TD class="mandatory">No. of Installments</TD>
													<TD>
														<asp:textbox id="txtnoinstall" tabIndex="19" runat="server" 
                                                            CssClass="formlines" MaxLength="12"
															onblur="chkbadchar(this);" AutoPostBack="True">0</asp:textbox>
														<asp:rangevalidator id="Rangevalidator3" runat="server" CssClass="validatemessage" Display="Dynamic"
															ControlToValidate="txtnoinstall" ErrorMessage="!" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator>&nbsp;
													</TD>
												</TR>
												<TR>
													<TD class="mandatory" colSpan="2">TPF Commencement Date
														<asp:textbox id="txtCommencmentDt" tabIndex="20" runat="server" MaxLength="10" onblur="chkbadchar(this);" CssClass="formlines" Visible="True"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('Tpf.txtCommencmentDt')"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                            <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtCommencmentDt"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                                            </TD>
													<TD class="mandatory">Sanction Amount</TD>
													<TD>
														<asp:textbox id="txtSanctionAmt" tabIndex="21" Runat="server" onblur="chkbadchar(this);" CssClass="formlines">0</asp:textbox></TD>
												</TR>
												<TR>
													<TD align="left" colSpan="4">
														<asp:label id="lblmonthlyrecovery" Runat="server" CssClass="mandatory" Visible="False"></asp:label></TD>
												</TR>
												<TR>
													<TD colSpan="2">
														<TABLE cellSpacing="1" cellPadding="1" width="100%">
															<TR>
																<TD>
																	<asp:button id="btnAdNew" tabIndex="23" Runat="server" CssClass="formbuttons" Width="110px"
																		Text="Add TPF Details" onclick="btnAdNew_Click"></asp:button></TD>
																<TD><INPUT class="formbuttons" onclick="enableGrid();" type="button" value="Show TPF Details"></TD>
																<TD colSpan="2">
																	<asp:button id="btnClear" tabIndex="24" Runat="server" CssClass="formbuttons" Width="90px" Text="Clear"
																		CausesValidation="False" onclick="btnClear_Click"></asp:button></TD>
															</TR>
														</TABLE>
													</TD>
												</TR>
												<TR>
													<TD align="left" colSpan="4">
														<DIV id="divTPFDetails" style="DISPLAY: none">
															<asp:datagrid id="dgrdTPFDetails" runat="server" CssClass="tableleftbgcolor" Width="80%" CellPadding="3"
																BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" AutoGenerateColumns="False"
																ShowFooter="True" DataKeyField="tpfrowid">
																<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
																<ItemStyle ForeColor="#000066"></ItemStyle>
																<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
																<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
																<Columns>
																	<asp:TemplateColumn HeaderText="TPF Number" ItemStyle-Width="15%">
																		<ItemTemplate>
																			<asp:Label id="lbldtTPFNo" Text='<%# DataBinder.Eval(Container.DataItem,"TPFNo") %>' Runat="server">
																			</asp:Label>
																		</ItemTemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn HeaderText="Name" ItemStyle-Width="30%">
																		<ItemTemplate>
																			<asp:Label id="lbldtEName" Text='<%# DataBinder.Eval(Container.DataItem,"EmpName") %>' Runat="server">
																			</asp:Label>
																		</ItemTemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn HeaderText="Sanction Amount" ItemStyle-Width="20%">
																		<ItemTemplate>
																			<asp:Label id="lbldtSanamt" Text='<%# DataBinder.Eval(Container.DataItem,"sancamt") %>' Runat="server">
																			</asp:Label>
																		</ItemTemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn HeaderText="Admissible Amount" ItemStyle-Width="20%">
																		<ItemTemplate>
																			<asp:Label id="lbldadmamt" Text='<%# DataBinder.Eval(Container.DataItem,"admissiableamt") %>' Runat="server">
																			</asp:Label>
																		</ItemTemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn HeaderText="Action" ItemStyle-Width="35%">
																		<ItemTemplate>
																			<asp:LinkButton ID="lnkDelete" Runat="server" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
																		</ItemTemplate>
																	</asp:TemplateColumn>
																</Columns>
																<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
															</asp:datagrid></DIV>
													</TD>
												</TR>

										<tr>
											<td><asp:button id="btnSave" tabIndex="22" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button></td>
										</tr>
										<TR>
											<TD colspan="4" style="text-align:left"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
										</TR>

									</table>
                                      </asp:panel>
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<TR>
					<TD><asp:label id="lblMessage" runat="server" CssClass="validatemessage" Width="348px"></asp:label></TD>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD align="left"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
				</TBODY></TABLE>
		</form>
	</body>
</HTML>