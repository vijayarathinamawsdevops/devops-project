<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Page language="c#" Codebehind="MedicalBill.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.MedicalBill" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - MedicalBill</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="MedicalBill" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" 
				border="0" height="100%">
				<TR>
					<TD style="height:50px"style="text-align:left" colSpan="4">
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%"  width="100%" valign="top" style="text-align:left">
						<asp:Panel ID="pnlControls" Runat="server">
							<TR>
								<TD colSpan="4">
									<uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
							<TR>
								<TD colSpan="4" align="left">
									<asp:datagrid id="DataGrid1" runat="server" AutoGenerateColumns="False" 
                                        Width="90%" ShowFooter="True"
										cssclass="tableleftbgcolor" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
										<Columns>
											<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" HeaderText="Action (Click)" HeaderStyle-CssClass="mandatory"
												CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
											<asp:BoundColumn ItemStyle-CssClass="mandatory" DataField="TokenNo" ReadOnly="True" HeaderStyle-HorizontalAlign="Center"
												HeaderText="Token Number" HeaderStyle-CssClass="mandatory">
												<ItemStyle HorizontalAlign="Center"></ItemStyle>
											</asp:BoundColumn>
											<asp:TemplateColumn HeaderStyle-HorizontalAlign="center" HeaderText="GPF Number" HeaderStyle-CssClass="mandatory">
												<ItemStyle HorizontalAlign="left"></ItemStyle>
												<ItemTemplate>
													<asp:Label id=Label1 Text='<%# DataBinder.Eval(Container.DataItem,"GpfNo") %>' Runat="server">
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:TextBox id=txtGpfNo Width="50px" MaxLength=10 runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"GpfNo") %>'>
													</asp:TextBox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="GPF Suffix" HeaderStyle-CssClass="mandatory" HeaderStyle-HorizontalAlign="Center">
												<ItemTemplate>
													<asp:Label id=Label2GpfSuffix Text='<%# DataBinder.Eval(Container.DataItem, "GpfSuffix")%>' Runat="server">
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:DropDownList Font-Size = "8" id=cboGpfSuffix runat="server" CssClass="formlines" DataSource="<%#DropDownDataView%>" DataTextField="Desc" DataValueField="GpfSuffix">
													</asp:DropDownList>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Employee Name" HeaderStyle-CssClass="mandatory">
												<ItemTemplate>
													<asp:Label id="Label5" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"EmpName") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:TextBox id="txtEmpName" Width = "150px" runat="server" MaxLength=30 CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"EmpName") %>'>
													</asp:TextBox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Pay (Basic+PP) as on 1.9.1998"
												HeaderStyle-CssClass="mandatory">
												<ItemStyle HorizontalAlign="Right"></ItemStyle>
												<ItemTemplate>
													<asp:Label id=Label6 Text='<%# DataBinder.Eval(Container.DataItem,"Basic") %>' Runat="server">
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:TextBox width="80px" id=txtBasic runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"Basic") %>' MaxLength="10">
													</asp:TextBox>
													<asp:RangeValidator id="rfvBasicPay" runat="server" Display="Dynamic" ControlToValidate="txtBasic" ErrorMessage="Minimum Basic Pay cannot be lessthan 0"
														MinimumValue="1" MaximumValue="99999"></asp:RangeValidator>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Amount Claimed" HeaderStyle-CssClass="mandatory">
												<ItemStyle HorizontalAlign="Right"></ItemStyle>
												<ItemTemplate>
													<asp:Label id="Label4" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AmtClaimed") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:TextBox width="70px" id="txtAmtClaimed" MaxLength=10 runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"AmtClaimed") %>'>
													</asp:TextBox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Amount Sanctioned" HeaderStyle-CssClass="mandatory">
												<ItemStyle HorizontalAlign="Right"></ItemStyle>
												<ItemTemplate>
													<asp:Label id="Label7" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AmtSanctioned") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:TextBox width="70px" id="txtAmtSanctioned" MaxLength=10 runat="server" CssClass="formlines" Text='<%# DataBinder.Eval(Container.DataItem,"AmtSanctioned") %>'>
													</asp:TextBox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:ButtonColumn Text="Delete" CommandName="Delete" HeaderText="Actions"></asp:ButtonColumn>
										</Columns>
									</asp:datagrid></TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<asp:label id="lblMessage" runat="server" CssClass="validateMessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4">&nbsp;
								</TD>
							</TR>
							<TR>
								<TD width="25%">
									<asp:linkbutton id="lbtnAddEmp" runat="server" Width="160px" CssClass="formbuttons" Height="18" onclick="lbtnAddEmp_Click">Add Individual  Bill Details</asp:linkbutton></TD>
								<TD width="25%">
									<asp:linkbutton id="lbtnListEmp" runat="server" Width="160px" CssClass="formbuttons" Height="18" onclick="lbtnListEmp_Click">View Bill Details</asp:linkbutton></TD>
								<TD width="25%">
									<asp:Label id="Label1" runat="server" Visible="False"></asp:Label>
									<asp:Label id="Label2" runat="server" Visible="False"></asp:Label></TD>
								<TD width="25%">&nbsp;
								</TD>
							</TR>
							<TR>
								<TD width="25%">&nbsp;
								</TD>
								<TD width="25%"></TD>
								<TD width="25%"></TD>
								<TD width="25%"></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 25px" width="25%" colSpan="4">
									<asp:Label id="Label3" runat="server" ForeColor="Black" Font-Bold="True">After entering Individual Details Click </asp:Label>
									<asp:Label id="Label8" runat="server" CssClass="mandatory" ForeColor="Navy">Save / Update </asp:Label>
									<asp:Label id="Label9" runat="server" ForeColor="Black" Font-Bold="True">to save all  details</asp:Label></TD>
							</TR>
						</asp:Panel>
				<TR>
					<TD width="25%" colspan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="btnSave_Click"></asp:button></TD>
					</td>
				</TR>
				<tr>
					<TD width="25%"><asp:label id="lblMessage1" runat="server" CssClass="validateMessage1"></asp:label></TD>
					<TD width="25%" colspan="3"><asp:button id="btnCancel" runat="server" CssClass="formbuttons" Text="Cancel" Visible="False"
							Width="100px" onclick="btnCancel_Click"></asp:button></TD>
					<TD width="25%"></TD>
				</tr>
				<TR>
					<TD colSpan="4"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist><asp:label id="lblAmount" runat="server" Visible="False"></asp:label></TD>
				</TR>
				<tr>
					<td colspan="4"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD colspan="4"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
				<TR>
					<TD colspan="4"><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
