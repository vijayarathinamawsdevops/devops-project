<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="C#" Codebehind="BudgetBalance.aspx.cs" AutoEventWireup="true" Inherits="eKaruvoolam.WebUI.Admin.BudgetBalance" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>BudgetBalance</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="BudgetBalance" method="post" runat="server">
        
         
			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
                     
					<td align="center">


						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="95%" border="0">
							<TR>
								<TD align="center"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Budget Allotment Balance Details</asp:label></TD>
							</TR>
							<tr>
                                 
                                
								<td>
                                
                                
									<TABLE id="Table11" cellSpacing="3" cellPadding="2" width="98%" border="0">
										<TR>
											<TD width="15%"><asp:label id="lbldocode" runat="server" CssClass="mandatory">DOCode</asp:label></TD>
											<TD width="35%"><asp:textbox id="txtdocode" runat="server" Width="50px" CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);"
													MaxLength="5" ontextchanged="txtdocode_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvtxtDOCode" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
													Display="Dynamic" ControlToValidate="txtdocode"></asp:requiredfieldvalidator><asp:dropdownlist id="cboDrawingOfficer" runat="server" Width="225px" CssClass="formlines" AutoPostBack="True"
													Font-Size="XX-Small" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist></TD>
											<TD width="5%"><asp:label id="lbldpcode" runat="server" CssClass="mandatory">DPCode</asp:label></TD>
											<TD><asp:textbox id="txtdpcode" runat="server" CssClass="formlines" MaxLength="15" onblur="chkbadchar(this);" ontextchanged="txtdpcode_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvtxtDPCode" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
													Display="Dynamic" ControlToValidate="txtdpcode"></asp:requiredfieldvalidator></TD>
										</TR>
										<TR>
											<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
										</TR>
										<TR>
											<TD colSpan="4"><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
										</TR>
										<TR>
											<TD colSpan="4"><asp:label id="lblMessage3" runat="server" 
                                                    CssClass="validatemessage1"></asp:label></TD>
										</TR>
										<TR>
											<TD colSpan="4">
												<asp:label id="lblmessage2" runat="server" CssClass="validatemessage1"></asp:label></TD>
										</TR>
										<TR>
											<TD colSpan="2"><asp:button id="btnSearch" runat="server" Width="90px" CssClass="formbuttons" Text="View Details" onclick="btnSearch_Click"></asp:button><asp:button id="btnCancel" runat="server" Width="90px" CssClass="formbuttons" Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:button>
											</TD>
											<td colspan="2" align="right"><asp:button id="Btnreport" runat="server" CssClass="formbuttons" Width="90px" Text="Generate Report"
													CausesValidation="False" onclick="Btnreport_Click"></asp:button>
											</td>
										</TR>
									</TABLE>
								</td>
							</tr>
                            <tr><td>
                            <table class="parabr" cellSpacing="0" cellPadding="0" width="100%" border="0">
				
				<%--<tr>
					<td colSpan="3">
						<div style="DISPLAY: none">
							<asp:Label ID="lblFileName" Runat="server"></asp:Label></div>
					</td>
				</tr>--%>
			</table>
                            </td></tr>
						</TABLE>
                                
					</td>
				<tr>
					<td vAlign="top" align="center" height="100%"><br>
						<asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AutoGenerateColumns="False"
							width="95%" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="10"
							AllowPaging="True" onselectedindexchanged="dgItems_SelectedIndexChanged">
							<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
							<ItemStyle ForeColor="#000066"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
							<Columns>
								<asp:TemplateColumn HeaderText="Token Number">
									<ItemTemplate>
										<asp:Label ID="dlblDocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="DoCode">
									<ItemTemplate>
										<asp:Label ID="Label1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DoCode") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="DPCode">
									<ItemTemplate>
										<asp:Label ID="dlblDPCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Bill Amount">
									<ItemTemplate>
										<asp:Label ID="dlblBillType" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillAmount") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></td>
				</tr>
                <tr>
                <td>
                <div runat="server" id="divreport" visible="false">
                <table>
                <tr>
					<td class="menuon" width="100%">Report Preview</td>
					<td><IMG height="27" src="../images/menu_on.gif" width="28"></td>
					 
				</tr>
				<tr>
					<td vAlign="top" width="80%" colSpan="2"><asp:textbox id="txtReportText" CssClass="lblrptText" Runat="server" Rows="25" Wrap="False" ReadOnly="True"
							Columns="100" Width="100%" TextMode="MultiLine"></asp:textbox></td>
				</tr>
				<tr>
					<td colSpan="3">
						<asp:label id="Label2" runat="server" CssClass="validatemessage" Height="10px"></asp:label>
					</td>
				</tr>
                </table>
                </div>
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
