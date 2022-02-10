<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="Festival.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.Festival" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Festival</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Festival" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE id="Table1" class="parabr" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Festival Master Details</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblfestivalcode" runat="server" CssClass="mandatory">Festival Code</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtfestivalcode" runat="server" CssClass="formlines" MaxLength="2" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD align="right" width='15%'><asp:Label id="lblfestivalname" runat="server" CssClass="mandatory">Festival Name</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtfestivalname" runat="server" CssClass="formlines" MaxLength="25" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblfestivaldate" runat="server" CssClass="mandatory">Festival Date</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtfestivaldate" runat="server" CssClass="formlines" MaxLength="16"></asp:TextBox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Festival.txtfestivaldate');"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
                                        
                                  <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtfestivaldate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                        </TD>
								<TD colspan="2">&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></TD>
							</TR>
							<TR>
								<TD colSpan="4" align="center"><asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' Width="100px" onclick="btnSave_Click"></asp:Button>&nbsp;<asp:Button id='btnCancel' runat='server' Text='Clear' CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button>&nbsp;<asp:Button id='btnSearch' runat='server' CssClass='formbuttons' Text='Search' Width="100px"
										Visible="False" onclick="btnSearch_Click"></asp:Button>
									<asp:Button id="btnDel" runat="server" CssClass="formbuttons" Width="100px" Text="Delete" Visible="False" onclick="btnDel_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD colSpan='3'></TD>
							</TR>
							<TR>
								<TD colspan="4"></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan='4'><asp:DataGrid AutoGenerateColumns="False" id='dgItems' runat='server' CssClass='tableleftbgcolor'
										width='100%' BorderColor='#CCCCCC' BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3'
										PageSize='15' AllowPaging='True'>
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Festival Code" Visible="False">
												<ItemTemplate>
													<asp:Label id="dglblfescode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"festivalcode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Festival Name">
												<ItemTemplate>
													<asp:Label id="dglblfesname" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"festivalname") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Festival Date">
												<ItemTemplate>
													<asp:Label id="dglblfesdate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"festivaldate") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;&nbsp;|&nbsp;
													<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:DataGrid></TD>
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
