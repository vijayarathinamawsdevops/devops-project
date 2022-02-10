<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<%@ Page language="c#" Codebehind="ControlMas.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.ControlMas" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Control Master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
        <script src="../Scripts/date-picker.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="ControlMas" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE id="Table1" class="parabr" cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">General Settings</asp:label></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblOffice" runat="server" CssClass="mandatory">Office Name</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtOffice" runat="server" CssClass="formlines" MaxLength="50" Width="300px" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'></TD>
								<TD width="35%"><asp:TextBox id="txtofficeid" runat="server" CssClass="formlines" Visible="False" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:Label id="lblpaoSto" runat="server" CssClass="mandatory">Office Type</asp:Label></TD>
								<TD width="35%">
									<asp:DropDownList id="cboOfficeType" runat="server" CssClass="formlines" AutoPostBack="True" onselectedindexchanged="cboOfficeType_SelectedIndexChanged"></asp:DropDownList></TD>
								<TD width="15%">
									<asp:Label id="lblSTOCode" runat="server" CssClass="mandatory">TO Code</asp:Label></TD>
								<TD width="35%">
									<asp:TextBox id="txtSTOCode" runat="server" CssClass="formlines" MaxLength="5" Enabled="false" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width="15%">
									<asp:Label id="lblOfficer1" runat="server" CssClass="mandatory">Signature1</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtOfficer1" runat="server" CssClass="formlines" MaxLength="20" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblOfficer2" runat="server" CssClass="mandatory">Signature2</asp:Label></TD>
								<TD width='35%'>
									<asp:TextBox id="txtOfficer2" runat="server" CssClass="formlines" MaxLength="20" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblSubType" runat="server" CssClass="mandatory">Treasury Type</asp:Label></TD>
								<TD width='35%'>
									<asp:DropDownList id="cboBankType" runat="server" CssClass="formlines"></asp:DropDownList></TD>
								<TD width='15%'><asp:Label id="lblbpbudget" runat="server" CssClass="mandatory">Check Budget</asp:Label></TD>
								<TD width='35%'>
									<uc1:YesNo id="YesNo1" runat="server" Visible="False"></uc1:YesNo></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblTokenYear" runat="server" CssClass="mandatory">Token Year</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtTokenYear" runat="server" CssClass="formlines" MaxLength="5" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'>
									<asp:Label id="lblFin_year" runat="server" CssClass="mandatory">Financial Year</asp:Label></TD>
								<TD width='35%'>
									<asp:TextBox id="txtFin_year" runat="server" CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblTokenYear0" runat="server" CssClass="mandatory">Last Token No : </asp:Label></TD>
								<TD width='35%' align="left"><asp:TextBox id="txtTokenNo" runat="server" 
                                        CssClass="formlines" MaxLength="5" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'>
									<asp:Label ID="lblHills" Runat="server" CssClass="mandatory">Whether Treasury Functioning in Hill Station : </asp:Label></TD>
								<TD width='35%' align="left">
									<asp:RadioButtonList ID="radhills" Runat="server" CssClass="mandatory" 
                                        RepeatDirection="Horizontal">
										<asp:ListItem Value="Y">Yes</asp:ListItem>
										<asp:ListItem Value="N">No</asp:ListItem>
									</asp:RadioButtonList>
								</TD>
							</TR>
							<TR>
								<TD width="15%">
									<asp:Label id="lblECSSal" runat="server" Width="190px" CssClass="mandatory" 
                                        Visible="False">Salary ECS (Batch) Date(dd/mm/yyyy)</asp:Label></TD>
								<TD width="35%">
									<asp:TextBox id="txtSalEcsDate" runat="server" CssClass="formlines" 
                                        MaxLength="10" onblur="chkbadchar(this);" Visible="False"></asp:TextBox>
                                    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtSalEcsDate')"><%--<IMG src="../Images/show-calendar.gif" border="0" align="absMiddle">--%></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label id="Label1" runat="server" Width="72px" CssClass="mandatory" 
                                        Visible="False">ECS Batch</asp:Label>
									<asp:TextBox id="txtbatch" runat="server" CssClass="formlines" MaxLength="2" 
                                        Width="25px" onblur="chkbadchar(this);" Visible="False"></asp:TextBox></TD>
								<TD width="15%">
									<asp:Label id="lblNonsal" runat="server" Width="190px" CssClass="mandatory" 
                                        Visible="False">Non Salary ECS Settlement Date(dd/mm/yyyy)</asp:Label></TD>
								<TD width="35%">
									<asp:TextBox id="txtNonSalEcsDate" runat="server" CssClass="formlines" 
                                        MaxLength="10" DESIGNTIMEDRAGDROP="70" onblur="chkbadchar(this);" 
                                        Visible="False"></asp:TextBox>
                                    <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtNonSalEcsDate')">
                                    <IMG src="../Images/show-calendar.gif" border="0" align="absMiddle" 
                                        style="visibility: hidden"></A>
                                    </TD>
							</TR>
							<tr>
								<td colspan="2">&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
						</TABLE>
						<br>
						<TABLE id="Table11" class="parabr" cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblSubFormTitle" runat="server" CssClass="formtitle" Width="100%">Loan Amount Settings</asp:label></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblSPF_Amt" runat="server" CssClass="mandatory">SPF Amount</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtSPF_Amt" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblSPF_Refund" runat="server" CssClass="mandatory">SPF Refund Amount</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtSPF_Refund" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblFA" runat="server" CssClass="mandatory">Festival Advance</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtFA" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblCycle_Advance" runat="server" CssClass="mandatory">Cycle Advance Amount</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtCycle_Advance" runat="server" CssClass="formlines" MaxLength="19" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblHBA" runat="server" CssClass="mandatory">HBA No. Installments</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtHBAIns" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);">0</asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblKhadi" runat="server" CssClass="mandatory">Khadi No. Installments</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtKhadiIns" runat="server" CssClass="formlines" MaxLength="10" ReadOnly="True" onblur="chkbadchar(this);">0</asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblRetirementAge" runat="server" CssClass="mandatory">Retirement Age</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtRetirementAge" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblAuditlevel" runat="server" CssClass="mandatory">Aduit Level</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtAuditLevel" runat="server" CssClass="formlines" MaxLength="10" ReadOnly="True" onblur="chkbadchar(this);">2</asp:TextBox></TD>
							</TR>
                            <tr>
                            <td><asp:Label ID="lblAccount" runat="server" CssClass="mandatory">Account Date:(dd/mm/yyyy)</asp:Label>
                                </td>
                                <td><asp:TextBox ID="txtAcct" runat="server" CssClass="formlines"></asp:TextBox>
                                    <%--<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtAcct')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>--%>
                                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format"  ControlToValidate="txtAcct"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label></TD>
                                
							</TR>
							<TR>
								<TD colSpan="4">
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="sTable11" class="parabr" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="right">
									<asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' Width="110px" onclick="btnSave_Click"></asp:Button>
									<asp:Button id='btnCancel' runat='server' Text='Cancel' 
                                        CausesValidation='False' CssClass='formbuttons'
										Width="110px" onclick="btnCancel_Click1"></asp:Button>
									<asp:Button id='btnSearch' runat='server' CssClass='formbuttons' Text='Search' Visible="False"
										Width="110px" onclick="btnSearch_Click"></asp:Button></TD>
							<TR>
								<TD align="center">
									<asp:DataGrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AllowPaging="True" PageSize="15"
										CellPadding="3" BackColor="#F0F8FF" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC"
										width="100%" AllowCustomPaging="True" Visible="False" onselectedindexchanged="dgItems_SelectedIndexChanged">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:DataGrid>
								</TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
            

		</form>
	</body>
</HTML>
