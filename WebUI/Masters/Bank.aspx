<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="Bank.aspx.cs" AutoEventWireup="True" SmartNavigation="True" Inherits="eKaruvoolam.WebUI.Masters.Bank" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Bank</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="" name="vs_targetSchema">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Bank" method="post" runat="server">
         
        


			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table2" cellSpacing="2" cellPadding="2" width="98%" border="0">
							<TR>
								<TD align="center" colspan="2"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Bank Master Details</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width="15%"><asp:label id="lblRBICODE" runat="server" CssClass="mandatory">RBI Code</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtRBICODE" runat="server" CssClass="formlines" MaxLength="9" onblur="chkbadchar(this);"></asp:textbox>
									<asp:requiredfieldvalidator id="reqRBICODE" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtRBICODE">*</asp:requiredfieldvalidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                        ErrorMessage="Enter Valid RBI Code" Font-Bold="False" ForeColor="#CC3300" 
                                        ControlToValidate="txtRBICODE"></asp:RangeValidator>
                                </TD>
							</TR>
							<tr>
								<TD align="right" width="15%"><asp:label id="lblBAN_NAME" runat="server" CssClass="mandatory">Bank Name</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBAN_NAME" runat="server" CssClass="formlines" MaxLength="55" Width="250px" onblur="chkbadchar(this);"></asp:textbox>
									<asp:requiredfieldvalidator id="rfvBAN_NAME" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtBAN_NAME">*</asp:requiredfieldvalidator></TD>
							</tr>
							<TR>
								<TD align="right" width="15%" style="display: none"><asp:label id="lblSER_CH" runat="server" CssClass="mandatory">Service Charge</asp:label></TD>
								<TD width="35%" style="display: none"><asp:textbox id="txtSER_CH" runat="server" CssClass="formlines" MaxLength="1" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
                            <tr>
                            <td align="right" width="15%" style="display: none"><asp:Label ID="lblTOCode" runat="server" CssClass="mandatory"> TOCode</asp:Label></td>
                            <td style="display: none"><asp:TextBox ID="txtTOCode" runat="server" CssClass="formlines" Enabled="false" onblur="chkbadchar(this);"></asp:TextBox></td>
                            </tr>
							<TR>
								<TD align="center" colSpan="2"><asp:button id="btnSave" runat="server" 
                                        CssClass="formbuttons" Width="100px" Text="Save" onclick="btnSave_Click" 
                                        Visible="False"></asp:button>&nbsp;<asp:button id="btnSearch" runat="server" CssClass="formbuttons" Width="100px" Text="Search"
										Visible="true" onclick="btnSearch_Click" CausesValidation="false"></asp:button>&nbsp;<asp:button id="btnCancel" runat="server" CssClass="formbuttons" Width="100px" Text="Clear"
										CausesValidation="False" onclick="btnCancel_Click"></asp:button>&nbsp;<asp:button 
                                        id="Button1" runat="server" CssClass="formbuttons" Width="100px" Text="Delete" CausesValidation="False"
										Visible="False" onclick="Button1_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD colSpan="2"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan="4"><asp:datagrid id="dgItems" runat="server" 
                                        CssClass="tableleftbgcolor" AutoGenerateColumns="False"
										  AllowPaging="True" PageSize="15" CellPadding="3" BackColor="White" BorderWidth="1px"
										BorderStyle="None" BorderColor="#CCCCCC" width="100%">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="RBI Code">
												<ItemTemplate>
													<asp:Label id="dglblrbicode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"RBICODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Bank Name">
												<ItemTemplate>
													<asp:Label id="dglblbname" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BAN_NAME") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Service Charge">
												<ItemTemplate>
													<asp:Label id="dgServicechrg" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SER_CH") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%" Visible="False">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;&nbsp;|&nbsp;
													<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>

<HeaderStyle Width="10%"></HeaderStyle>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:datagrid></TD>
							</TR>
						</TABLE>
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
	</body>
</HTML>
