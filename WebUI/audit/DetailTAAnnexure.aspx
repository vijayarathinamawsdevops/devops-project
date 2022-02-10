<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="DetailTAAnnexure.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.DetailTAAnnexure" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>DetailTAAnnexure</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<%
			Response.CacheControl = "Private";
			Response.Expires= -1;
			Response.AddHeader("pragma", "no-cache");
		%>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmTAAnnexure" method="post" runat="server">
			<asp:Panel ID="pnlControls" Runat="server">
				<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
					width="100%" border="0">
					<TR>
						<TD vAlign="top" align="center"><BR>
							<TABLE id="TblDetails" cellSpacing="0" cellPadding="0" width="97%" border="0">
								<TR>
									<TD class="mandatory">TokenNo:</TD>
									<TD colSpan="3">
										<asp:label id="lblsTokenNo" Runat="server" CssClass="mandatory">GPF Number</asp:label></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblGPFNo" Runat="server" CssClass="mandatory">GPF Number:</asp:label></TD>
									<TD>
										<asp:label id="lblGPFNotxt" Runat="server" CssClass="lbldisplay"></asp:label></TD>
									<TD>
										<asp:label id="lblGPFSuffix" Runat="server" CssClass="mandatory">GPF Suffix:</asp:label></TD>
									<TD>
										<asp:label id="lblGPFSuffixtxt" Runat="server" CssClass="lbldisplay"></asp:label></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblBasic" Runat="server" CssClass="mandatory">Basic</asp:label></TD>
									<TD>
										<asp:textbox id="txtBasic" Runat="server" CssClass="formlines"></asp:textbox></TD>
									<TD>
										<asp:label id="lblPayscale" Runat="server" CssClass="mandatory">Scale of Pay</asp:label></TD>
									<TD>
										<asp:dropdownlist id="drpPayScale" Runat="server" CssClass="formlines" Width="140px"></asp:dropdownlist></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center"><BR>
							<TABLE class="brdr" id="tblParticulars" cellSpacing="1" cellPadding="2" width="97%" border="0">
								<TR>
									<TD class="tblrow" align="center" colSpan="9">Particulars of Journeys and halts</TD>
								</TR>
								<TR>
									<TD class="tblrow" align="center" colSpan="3">Departure</TD>
									<TD class="tblrow" align="center" colSpan="3">Arrival</TD>
									<TD class="tblrow" rowSpan="2">Purpose of Journey</TD>
									<TD class="tblrow" rowSpan="2">Kind of Journey</TD>
									<TD class="tblrow" rowSpan="2">No. of Kilometers</TD>
								</TR>
								<TR class="lbltext">
									<TD class="tblrow">Station</TD>
									<TD class="tblrow">Date</TD>
									<TD class="tblrow">Hour</TD>
									<TD class="tblrow">Station</TD>
									<TD class="tblrow">Date</TD>
									<TD class="tblrow">Hour</TD>
								</TR>
								<TR>
									<TD class="tblrow">
										<asp:textbox id="txtDStation" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtDDate" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtHour" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtAStation" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtADate" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtAHour" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtPurpose" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="90px" MaxLength="50"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtKindofJourney" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="90px" MaxLength="50"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtNoofKms" onblur="chkbadchar(this);" Runat="server" CssClass="formlines" Width="40px" MaxLength="50"></asp:textbox></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center"><BR>
							<TABLE class="brdr" id="tblRailway" cellSpacing="1" cellPadding="2" width="97%" border="0">
								<TR>
									<TD class="tblrow" colSpan="3">Railway Fare Details</TD>
									<TD class="tblrow" colSpan="3">Distance Travelled by Road</TD>
								</TR>
								<TR class="lbltext">
									<TD class="tblrow">Class</TD>
									<TD class="tblrow">No. Of Fares</TD>
									<TD class="tblrow">Amount</TD>
									<TD class="tblrow">Bus Fare</TD>
									<TD class="tblrow">At Ordinary Rates</TD>
									<TD class="tblrow">At Other Rates</TD>
								</TR>
								<TR>
									<TD class="tblrow">
										<asp:textbox id="txtRailClass" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtRailnooffares" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtRailAmount" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtRoadFare" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtRoadordrate" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtRoadothrate" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center"><BR>
							<TABLE class="brdr" id="tblAllowance" cellSpacing="1" cellPadding="2" width="97%" border="0">
								<TR>
									<TD class="tblrow" colSpan="3">Daily Allowance</TD>
									<TD class="tblrow" rowSpan="2">Incidental Charges</TD>
									<TD class="tblrow" rowSpan="2">Terminal Charges</TD>
									<TD class="tblrow" rowSpan="2">Grand Total</TD>
									<TD class="tblrow" rowSpan="2">Remarks</TD>
								</TR>
								<TR class="lbltext">
									<TD class="tblrow">No. of Days</TD>
									<TD class="tblrow">Rate</TD>
									<TD class="tblrow">Amount</TD>
								</TR>
								<TR>
									<TD class="tblrow">
										<asp:textbox id="txtAllownoofdays" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtAllownrate" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtAllownamount" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtincidentalcharge" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtterminalcharge" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtgrandtotal" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="60px"></asp:textbox></TD>
									<TD class="tblrow">
										<asp:textbox id="txtRemarks" Runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="170px" MaxLength="50"></asp:textbox></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center"><BR>
							<TABLE class="brdr" id="tblCommand" cellSpacing="1" cellPadding="2" width="97%" border="0">
								<TR>
									<TD>
										<asp:button id="btnAdd" Runat="server" CssClass="formbuttons" Width="90px" Text="Add" onclick="btnAdd_Click"></asp:button>&nbsp;&nbsp;
										<asp:button id="btnClear" Runat="server" CssClass="formbuttons" Width="90px" Text="Clear" onclick="btnClear_Click"></asp:button>&nbsp;&nbsp;
										<asp:button id="btnClose" Runat="server" CssClass="formbuttons" Width="90px" Text="Close" onclick="btnClose_Click"></asp:button>&nbsp;&nbsp;</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" height="98%"><BR>
							<DIV id="divDataGrid" style="OVERFLOW: auto; WIDTH: 780px; HEIGHT: 150px">
								<asp:DataGrid id="dgrdTAAnnexure" Runat="server" CssClass="tableleftbgcolor" Width="95%" AutoGenerateColumns="False"
									CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC"
									DataKeyField="TAAnnexureid">
									<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
									<ItemStyle ForeColor="#000066"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
									<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
									<Columns>
										<asp:TemplateColumn HeaderText="GPF Number">
											<ItemTemplate>
												<asp:Label ID="dlblgpfno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"GpfNumber") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="GPF Suffix">
											<ItemTemplate>
												<asp:Label ID="dlblgpfsuffix" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"GpfSuffix") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Depature Details">
											<ItemTemplate>
												<table cellpadding="2" cellspacing="1" class="brdr">
													<tr>
														<td class="tblrow">Station</td>
														<td class="tblrow">Date</td>
														<td class="tblrow">Hour</td>
													</tr>
													<tr>
														<td class="tblrow">
															<asp:Label ID="dlbldStation" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DepStation") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlbldDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DepDate") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlbldHour" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DepTime") %>'>
															</asp:Label></td>
													</tr>
												</table>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Arrival Details">
											<ItemTemplate>
												<table cellpadding="2" cellspacing="1" class="brdr">
													<tr>
														<td class="tblrow">Station</td>
														<td class="tblrow">Date</td>
														<td class="tblrow">Hour</td>
													</tr>
													<tr>
														<td class="tblrow">
															<asp:Label ID="dlblAStation" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ArrStation") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlblADate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ArrDate") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlblATime" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ArrTime") %>'>
															</asp:Label></td>
													</tr>
												</table>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Purpose">
											<ItemTemplate>
												<asp:Label ID="dlblPurpose" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Purpose") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Kind of Journey">
											<ItemTemplate>
												<asp:Label ID="dlblkid" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"KindOfJourney") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="No. of Kms">
											<ItemTemplate>
												<asp:Label ID="dlblnoofkms" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NoofKm") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Railway Fare">
											<ItemTemplate>
												<table cellpadding="2" cellspacing="1" class="brdr">
													<tr>
														<td class="tblrow">Class</td>
														<td class="tblrow">No.of Fares</td>
														<td class="tblrow">Amount</td>
													</tr>
													<tr>
														<td class="tblrow">
															<asp:Label ID="dlblrClass" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TrainClass") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlblrnooffares" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Nooffares") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlblramount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"RailAmount") %>'>
															</asp:Label></td>
													</tr>
												</table>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Bus Fare">
											<ItemTemplate>
												<asp:Label ID="dlblbusfare" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"busfare") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Road Travel">
											<ItemTemplate>
												<table cellpadding="2" cellspacing="1" class="brdr">
													<tr>
														<td class="tblrow">At ordinary Rates</td>
														<td class="tblrow">At other rates</td>
													</tr>
													<tr>
														<td class="tblrow">
															<asp:Label ID="dlblroadordrate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"RoadOrdRate") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlblroadotherate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"RoadOtherRate") %>'>
															</asp:Label></td>
													</tr>
												</table>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Daily Allowance">
											<ItemTemplate>
												<table cellpadding="2" cellspacing="1" class="brdr">
													<tr>
														<td class="tblrow">No.of days</td>
														<td class="tblrow">Rate</td>
														<td class="tblrow">Amount</td>
													</tr>
													<tr>
														<td class="tblrow">
															<asp:Label ID="dlblallowdays" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DANoofDays") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlblallowrate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DARate") %>'>
															</asp:Label></td>
														<td class="tblrow">
															<asp:Label ID="dlblallowamt" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DAAmount") %>'>
															</asp:Label></td>
													</tr>
												</table>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Incidental Charge">
											<ItemTemplate>
												<asp:Label ID="dlblincicharge" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"IncidentalCharge") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Terminal Charge">
											<ItemTemplate>
												<asp:Label ID="dlblterminalcharge" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TerminalCharge") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Grand Total">
											<ItemTemplate>
												<asp:Label ID="dlblgrandtotal" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"GrandTotal") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Remarks">
											<ItemTemplate>
												<asp:Label ID="dlblRemarks" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Remarks") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Action">
											<ItemTemplate>
												<asp:LinkButton ID="lnkDelete" Runat="server" CommandName="Delete">Delete</asp:LinkButton>
											</ItemTemplate>
										</asp:TemplateColumn>
									</Columns>
								</asp:DataGrid></DIV>
						</TD>
					</TR>
					 
				</TABLE>
			</asp:Panel>
            <uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel>
		</form>
	</body>
</HTML>
