<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Page language="c#" Codebehind="DetailedTourAdvance.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.DetailedTourAdvance" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - TourAdvance</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="javascript">
		function enableSanctionOrder(drpSelected)
		{			
			var myindex = document.getElementById(drpSelected).selectedIndex;			
			if(myindex == "1")			
			{
			 document.getElementById("divSanctionOrder").style.display = "block";
			 document.getElementById("txtdTokenNo").value = "";			 
			}
			if(myindex == "2")
			{
			  document.getElementById("divSanctionOrder").style.display = "none";
			  document.getElementById("txtdTokenNo").ReadOnly = true;
			  iTokenno = document.getElementById("BillInfo1_txtTokenNo").value;
			  //alert(iTokenno.substring(iTokenno.lastIndexOf("0")+1,iTokenno.length));
			  document.getElementById("txtdTokenNo").value = iTokenno.substring(iTokenno.lastIndexOf("0")+1,iTokenno.length);
			  document.getElementById("txtGpfNo").focus(); 
			  document.getElementById("txtAmount").value =  document.getElementById("BillInfo1_txtBillAmount").value;
			}			 
		}
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="TourAdvance" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD style="HEIGHT: 18px"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%" style="text-align:left">
						
							<uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo>
                            <table cellSpacing="2" cellPadding="1" width="98%" border="0">
							<asp:Panel ID="pnlControls" Runat="server">
								<TR>
									<TD>
										<asp:label id="Label1" runat="server" CssClass="mandatory">Advance Drawn</asp:label></TD>
									<TD>
										<asp:dropdownlist id="advSelect" Runat="server" CssClass="formlines">
											<asp:ListItem Value="0" Selected="True">--Select--</asp:ListItem>
											<asp:ListItem Value="1">Yes</asp:ListItem>
											<asp:ListItem Value="2">No</asp:ListItem>
										</asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<DIV id="divSanctionOrder" style="DISPLAY: none">
											<TABLE cellSpacing="2" cellPadding="0" width="98%" border="0">
												<TR>
													<TD width="15%">
														<asp:label id="lblSanctionedOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
													<TD width="35%">&nbsp;
														<asp:textbox id="txtSanctionOrder" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></TD>
													<TD width="15%">
														<asp:label id="lblSanctionedDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
													<TD width="35%">
														<asp:textbox id="txtSanctionDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('TourAdvance.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A></TD>
												</TR>
											</TABLE>
										</DIV>
									</TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<TABLE class="tblborder" cellSpacing="0" cellPadding="0" width="90%" border="0">
											<TR>
												<TD class="mandatory" width="12%">Token No</TD>
												<TD class="mandatory" width="15%">GPF Number</TD>
												<TD class="mandatory" width="14%">GPF Suffix</TD>
												<TD class="mandatory" width="18%">Dt. Of completion of Journey</TD>
												<TD class="mandatory" width="18%">Dt. Of submission of Bills</TD>
											</TR>
											<TR>
												<TD>
													<asp:textbox id="txtdTokenNo" Runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" Width="110px" ontextchanged="txtdTokenNo_TextChanged"></asp:textbox>&nbsp;</TD>
												<TD>
													<asp:textbox id="txtGpfNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="10" Width="100px"></asp:textbox>&nbsp;</TD>
												<TD>
													<asp:dropdownlist id="cboGpfSuffix" runat="server" CssClass="formlines" AutoPostBack="True" Width="120px" onselectedindexchanged="cboGpfSuffix_SelectedIndexChanged"></asp:dropdownlist>&nbsp;</TD>
												<TD>
													<asp:textbox id="txtdtcompletion" runat="server" CssClass="formlines" onblur="chkbadchar(this);" Width="90px"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('TourAdvance.txtdtcompletion');"><IMG src="../Images/show-calendar.gif" border="0"></A>
													<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtdtcompletion" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>&nbsp;</TD>
												<TD>
													<asp:textbox id="txtdtsubmission" runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="90px"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('TourAdvance.txtdtsubmission');"><IMG src="../Images/show-calendar.gif" border="0"></A>
													<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtdtsubmission" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>&nbsp;</TD>
											</TR>
											<TR>
												<TD class="mandatory" colSpan="2">Gross Amount</TD>
												<TD class="mandatory" colSpan="1">Advance Drawn</TD>
												<TD class="mandatory" colSpan="2">Net Amount</TD>
											</TR>
											<TR>
												<TD colSpan="2">
													<asp:textbox id="txtGrossAmount" Runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtGrossAmount_TextChanged">0</asp:textbox></TD>
												<TD colSpan="1">
													<asp:textbox id="txtAdvamount" Runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ontextchanged="txtAdvamount_TextChanged">0</asp:textbox></TD>
												<TD colSpan="2">
													<asp:textbox id="txtAmount" Runat="server" onblur="chkbadchar(this);" CssClass="formlines">0</asp:textbox></TD>
											</TR>
											<TR>
												<TD class="mandatory">Require Challan?</TD>
												<TD class="mandatory">Challan Number</TD>
												<TD class="mandatory">Challan Date</TD>
												<TD class="mandatory" colSpan="2">Challan Amount</TD>
											</TR>
											<TR>
												<TD>
													<asp:dropdownlist id="drpchallan" Runat="server" AutoPostBack="True" Width="110px" onselectedindexchanged="drpchallan_SelectedIndexChanged"></asp:dropdownlist></TD>
												<TD>
													<asp:textbox id="txtchNumber" Runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox></TD>
												<TD>
													<asp:textbox id="txtchDate" Runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
														href="javascript:show_calendar('TourAdvance.txtchDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
													<asp:regularexpressionvalidator id="Regularexpressionvalidator3" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtchDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
												<TD colSpan="2">
													<asp:textbox id="txtchAmount" Runat="server" onblur="chkbadchar(this);" CssClass="formlines">0</asp:textbox></TD>
											</TR>
											<TR>
												<TD style="PADDING-RIGHT: 10px" align="right" colSpan="5">
													<asp:button id="btnTAAnnexure" Runat="server" CssClass="formbuttons" Width="135px" Text="Add/View TAAnnexure"></asp:button>&nbsp;&nbsp;
													<asp:button id="cmdAdd" Runat="server" CssClass="formbuttons" Width="80px" Text="Add" onclick="cmdAdd_Click"></asp:button>&nbsp;&nbsp;
													<asp:button id="cmdCancel" Runat="server" CssClass="formbuttons" Width="80px" Text="Cancel"
														CausesValidation="False" onclick="cmdCancel_Click"></asp:button></TD>
											</TR>
											<TR>
												<TD><BR>
												</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD width="15%" colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
										<asp:label id="lblMessage2" runat="server" CssClass="validatemessage" Width="237px" Font-Size="XX-Small"
											ForeColor="Blue"></asp:label></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="110px" Text="Save All" onclick="btnSave_Click"></asp:button>
										<asp:textbox id="todaydate" runat="server" Width="94px" Visible="False"></asp:textbox></TD>
									<TD vAlign="top" colSpan="3">
										<DIV class="holder" id="divDetails">
											<TABLE class="holderTable" cellSpacing="0" cellPadding="0" width="50%" border="0">
												<TR>
													<TD>
														<DIV>
															<TABLE class="formbuttons" cellSpacing="0" cellPadding="1" width="60%" border="0">
																<TR>
																	<TD><A id="exp21" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);">View 
																			Individual Details </A>
																	</TD>
																	<TD width="15"><A id="exp22" title="Expand Details" href="javascript:widgets.ToggleWidget(hideDetails);"><IMG id="exp2" height="15" alt="Expand Details" src="../Scripts/maximize.gif" width="15"
																				border="0"> </A>
																	</TD>
																</TR>
															</TABLE>
														</DIV>
													</TD>
												</TR>
											</TABLE>
										</DIV>
									</TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
								</TR>
								<TR>
									<TD colSpan="4"><BR>
										<DIV class="hiderScroll" id="hideDetails" closedAlt="Expand Details" openAlt="Collapse Details"
											img="exp2">
											<asp:datagrid id="DataGrid1" runat="server" CssClass="formlines" Width="100%" AutoGenerateColumns="False"
												BorderWidth="1" ShowFooter="True">
												<Columns>
													<asp:TemplateColumn HeaderText="Adv. TokenNo" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblAdvTokenNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AdvTokenNo") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="GPF Number" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblGpfNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Gpfno") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="GPF Suffix" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id=lblGpfSuffix Text='<%# DataBinder.Eval(Container.DataItem, "GpfSuffix")%>' Runat="server">
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Adv. Amount" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblAdvAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AdvAmount") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Net Amount" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblNetAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NetAmount") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Gross Amount" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblGrossAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"GrossAmount") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Challan No" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblChallanNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ChallanNo") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Challan Amount" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblchAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ChallanAmount") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Challan Date" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblchDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ChallanDate") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Dt. Completion" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblchdtCompletion" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DtofCompletion","{0:dd/MM/yyyy}") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Dt. Submission" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:Label id="lblchdtSubmission" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DtbillSubmission") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Actions" HeaderStyle-CssClass="mandatory">
														<ItemTemplate>
															<asp:LinkButton ID="lnkEdit" Runat="server" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;|&nbsp;
															<asp:LinkButton ID="lnkDelete" Runat="server" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
														</ItemTemplate>
													</asp:TemplateColumn>
												</Columns>
											</asp:datagrid><INPUT id="hidTokenNo" type="hidden" runat="server">
										</DIV>
									</TD>
								</TR>
							</asp:Panel>
                            </table>
							<uc1:checklist id="CheckList1" runat="server"></uc1:checklist>
						
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
		<script language="jscript" type="text/jscript">
			widgets.Add(hideDetails, "Details");
			widgets.divCount++;		
		</script>
	</body>
</HTML>
