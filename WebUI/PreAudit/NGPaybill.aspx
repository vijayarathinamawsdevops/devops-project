<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MonthCombo" Src="../UserControls/MonthCombo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YearCombo" Src="../UserControls/YearCombo.ascx" %>
<%@ Page language="c#" Codebehind="NGPaybill.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.NGPaybill" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>NonGazattePayBill</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/Style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY leftMargin="0" topMargin="0" rightMargin="0">
		<form id="NGPayBill" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TBODY>
					<TR>
						<TD><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
					</TR>
					<TR>
						<TD><uc1:volume id="Volume1" runat="server"></uc1:volume></TD>
					</TR>
					<tr>
						<td vAlign="top" align="center" height="100%">
							<TABLE class="parabr" id="Table2" cellSpacing="2" cellPadding="2" width="98%" border="0">
								<TBODY>
									<TR>
										<td align="center" colSpan="10"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Non Gazatte PayBill</asp:label></td>
									</TR>
									<tr>
										<td style="WIDTH: 124px; HEIGHT: 18px"><asp:label id="lblBasNo" CssClass="mandatory" Runat="server">BAS NO </asp:label></td>
										<td style="WIDTH: 115px; HEIGHT: 18px"><asp:dropdownlist id="drpBasNo" CssClass="drptxt" Width="72px" Runat="server">
												<asp:ListItem Value="Select">Select</asp:ListItem>
												<asp:ListItem Value="1">Bas-1</asp:ListItem>
												<asp:ListItem Value="2">Bas-2</asp:ListItem>
												<asp:ListItem Value="3">Bas-3</asp:ListItem>
											</asp:dropdownlist></td>
										<td style="WIDTH: 69px; HEIGHT: 28px"><asp:label id="lblUnitNo" CssClass="mandatory" Runat="server" tabIndex="-1" Width="80px"> UNIT NO </asp:label></td>
										<td><asp:dropdownlist id="drpUnitNo" CssClass="drptxt" Width="88px" Runat="server">
												<asp:ListItem Value="Select">Select</asp:ListItem>
												<asp:ListItem Value="1">Unit-1</asp:ListItem>
												<asp:ListItem Value="2">Unit-2</asp:ListItem>
												<asp:ListItem Value="3">Unit-3</asp:ListItem>
												<asp:ListItem Value="4">Unit-4</asp:ListItem>
											</asp:dropdownlist></td>
										<td style="HEIGHT: 18px"><asp:label id="lbldesig" CssClass="mandatory" Runat="server">Designation</asp:label></td>
										<td style="HEIGHT: 18px"><asp:dropdownlist id="cbodesig" runat="server" CssClass="drptxt" Width="150px"></asp:dropdownlist></td>
										 
									</tr>
									<tr>
										<td style="WIDTH: 124px; HEIGHT: 18px"><asp:label id="lbldept" CssClass="mandatory" Runat="server">Department</asp:label></td>
										<td style="WIDTH: 115px; HEIGHT: 18px"><asp:dropdownlist id="cbodept" runat="server" CssClass="drptxt" Width="250px" Height="24px"></asp:dropdownlist></td>
										<td style="WIDTH: 69px; HEIGHT: 28px"><asp:label id="lbldocode" CssClass="mandatory" Runat="server">DOCODE</asp:label></td>
										<td><asp:dropdownlist id="cbodocode" runat="server" CssClass="drptxt"></asp:dropdownlist></td>
										 
									</tr>
									<TR>
										<td style="WIDTH: 124px; HEIGHT: 32px"><asp:label id="lblTokenNo" CssClass="mandatory" Runat="server">TokenNo</asp:label></td>
										<td style="WIDTH: 115px; HEIGHT: 32px"><asp:textbox id="txttokenno" CssClass="formlines" onblur="chkbadchar(this);" Runat="server"></asp:textbox></td>
										<td style="WIDTH: 69px; HEIGHT: 32px"><asp:label id="lblmonth" CssClass="mandatory" Runat="server">Month</asp:label></td>
										<td>
											<uc1:MonthCombo id="MonthCombo1" runat="server"></uc1:MonthCombo></td>
										<td style="HEIGHT: 32px"><asp:label id="lblyear" CssClass="mandatory" Runat="server">Year</asp:label></td>
										<td style="HEIGHT: 32px"><uc1:YearCombo id="YearCombo1" runat="server"></uc1:YearCombo></td>
										 
									</TR>
									<TR>
										<td style="WIDTH: 124px; HEIGHT: 32px"><asp:label id="lblGross" CssClass="mandatory" Runat="server">Gross</asp:label></td>
										<td><asp:textbox id="txtgross" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
											<asp:RegularExpressionValidator id="grsvalidator" runat="server" ErrorMessage="Enter Decimal Value" ValidationExpression="[0-9]*\.?[0-9]*"
												ControlToValidate="txtgross"></asp:RegularExpressionValidator></td>
										<td style="WIDTH: 69px; HEIGHT: 32px"><asp:label id="lblNet" CssClass="mandatory" Runat="server">NET</asp:label></td>
										<td>
											<asp:textbox id="txtnet" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
											<asp:RegularExpressionValidator id="netvalidator" runat="server" ErrorMessage="Enter Decimal Value" ValidationExpression="[0-9]*\.?[0-9]*"
												ControlToValidate="txtnet"></asp:RegularExpressionValidator></td>
										 
									</TR>
									<tr>
										<td style="WIDTH: 124px"><asp:label id="lblslo" CssClass="mandatory" Runat="server">S.L.O</asp:label></td>
										<td ><asp:textbox id="txtslo" CssClass="formlines" onblur="chkbadchar(this);" Runat="server"></asp:textbox></td>
										<td align="right" colSpan="4"><asp:button id="btnAddNew" Runat="server" CssClass="formbuttons" Text="Save" onclick="btnAddNew_Click"></asp:button><asp:button id="btnClear" Runat="server" CssClass="formbuttons" Text="Clear" onclick="btnClear_Click"></asp:button>
										</td>
									</tr>
									<TR>
										<TD colspan="10"><asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AutoGenerateColumns="False"
												AllowCustomPaging="True" AllowPaging="True" PageSize="10" CellPadding="3" BackColor="White" BorderWidth="1px"
												BorderStyle="None" BorderColor="#E7E7FF" width="100%">
												<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
												<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
												<ItemStyle ForeColor="#000066"></ItemStyle>
												<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
												<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
												<Columns>
													<asp:TemplateColumn HeaderText="TokenNo">
														<ItemTemplate>
															<asp:Label id="lbldgtokenno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Gross">
														<ItemTemplate>
															<asp:Label id="lbldggross" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Gross") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Net">
														<ItemTemplate>
															<asp:Label id="lbldgnet" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Net") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="SLO">
														<ItemTemplate>
															<asp:Label id="lbldgslo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SLO") %>'>
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Action">
														<HeaderStyle Width="10%"></HeaderStyle>
														<ItemTemplate>
															<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;&nbsp;|&nbsp;
															<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
														</ItemTemplate>
													</asp:TemplateColumn>
												</Columns>
												<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
											</asp:datagrid></TD>
									</TR>
									<tr>
										<td style="WIDTH: 250px" colspan="10">
											<uc2:ErrorLabel id="ErrorLabel2" runat="server"></uc2:ErrorLabel></td>
									</tr>
									<tr>
										<td style="WIDTH: 1400px" colspan="10">
											<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
									</tr>
		</form>
		</TBODY></TABLE></TD></TR></TBODY></TABLE>
        </form>
        </TR></TBODY></TABLE></FORM>
	</BODY>
</HTML>
