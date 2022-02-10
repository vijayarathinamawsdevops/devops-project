<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="Fbf.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Fbf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Family Benefit Fund</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form name="Fbf" id="Fbf" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table cellSpacing="2" cellPadding="1" width="100%" border="0">
							<TR>
								<TD style="text-align:left"><uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR>
                            <tr><td> 
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr" width="100%"> 
								<TR>
									<TD colSpan="4">
										<uc1:GPFNumber id="GPFNumber1" runat="server"></uc1:GPFNumber></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblSanctionOrder" runat="server" CssClass="mandatory">Sanction Order</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionOrder" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="50"></asp:textbox>
										<asp:RequiredFieldValidator id="rfvSanctionOrder" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtSanctionOrder" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
									<TD width="15%">
										<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtSanctionDate" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Fbf.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtSanctionDate" ErrorMessage="*"></asp:RequiredFieldValidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblTypeofClaim" runat="server" CssClass="mandatory">Type of Claim</asp:Label></TD>
									<TD width="35%">
										<asp:DropDownList id="cboTypeofClaim" runat="server" CssClass="drptxt" Width="140px"></asp:DropDownList></TD>
                                        <td  width="15%"><asp:Label ID="lblDeath" runat="server" Text="Death Date" CssClass="mandatory"></asp:Label></td>
                                        <td  width="35%"><asp:TextBox ID="txtDeath" runat="server" CssClass="formlines" MaxLength="10"></asp:TextBox>
                                        <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('Fbf.txtDeath');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtDeath" ErrorMessage="*"></asp:RequiredFieldValidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDeath" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
                                        <%--<asp:CompareValidator ID="ComDate" runat="server" 
                                                ControlToCompare="txtSanctionDate" ControlToValidate="txtDeath" 
                                                CssClass="validatemessage" Operator="LessThan" Type="Date" 
                                                ErrorMessage="Death date should be before Sanction date"></asp:CompareValidator>
                                         --%>
                                        </td>
								</TR>
								<TR>
									<TD width="100%" colSpan="4">
										<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
										<asp:TextBox id="todaydate" runat="server" onblur="chkbadchar(this);" Visible="False"></asp:TextBox></TD>
								</TR>
                                <tr>
                                    <td colspan="4" width="100%">
                                        <asp:Panel ID="pnlGrid" runat="server">
                                        <asp:GridView ID="GridFbfDetails" runat="server" Width="100%" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </asp:Panel></td>
                                </tr>
                                </table>
							</asp:Panel>
                            </td></tr>
							<TR>
								<TD width="100%">
									<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:Button>
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
									<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="../Images/lookup.gif" onclick="ImageButton1_Click"></asp:imagebutton>
                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                </TD>
							</TR>
							<TR>
								<TD width='100%'>
									<uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><br>
						<uc1:footer id="Footer1" runat="server"></uc1:footer>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
