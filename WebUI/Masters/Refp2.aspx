<%@ Page language="c#" Codebehind="Refp2.aspx.cs" AutoEventWireup="True" SmartNavigation="True" Inherits="eKaruvoolam.WebUI.Masters.Refp2"%>

    
            
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Refp2</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Refp2" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE class="parabr" id="tblContent" cellSpacing="2" cellPadding="2" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Pay Breakup Master Details</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblCODE" runat="server" CssClass="mandatory">CODE</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtCODE" runat="server" CssClass="formlines" MaxLength="3" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:requiredfieldvalidator id="reqcode" runat="server" CssClass="validatemessage" ControlToValidate="txtCODE"
										ErrorMessage="Data Required">*</asp:requiredfieldvalidator></TD>
								<TD align="right" width='15%'><asp:Label id="lblNATR" runat="server" CssClass="mandatory">NATR</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtNATR" runat="server" CssClass="formlines" MaxLength="1" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:requiredfieldvalidator id="rfvNATR" runat="server" CssClass="validatemessage" ControlToValidate="txtNATR"
										ErrorMessage="Data Required">*</asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblSUBJECT" runat="server" CssClass="mandatory">SUBJECT</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtSUBJECT" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
									<asp:requiredfieldvalidator id="rfvtxtSUBJECT" runat="server" CssClass="validatemessage" ControlToValidate="txtSUBJECT"
										ErrorMessage="Data Required">*</asp:requiredfieldvalidator></TD>
								<TD align="right" width='15%'><asp:Label id="lblSortOrderNo" runat="server" CssClass="mandatory">SortOrderNo</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtSortOrderNo" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox></TD>
                               
							</TR>
							<TR>
								<TD colSpan='4'><asp:Label id="lblMessage" runat="server" CssClass="validationmessage"></asp:Label></TD>
							</TR>
							<TR>
								<TD colspan="4" align="center"><asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' Width="100px" onclick="btnSave_Click"></asp:Button>&nbsp;&nbsp;
									<asp:Button id='btnCancel' runat='server' Text='Cancel' CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button>&nbsp;&nbsp;
									<asp:Button id='btnSearch' runat='server' CssClass='formbuttons' Text='Search' Width="100px"
										 CausesValidation="false" onclick="btnSearch_Click"></asp:Button></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="Table1" class="tableleftbgcolor" cellSpacing="1" cellPadding="1" width="98%"
							border="0">
							<TR>
								<TD colSpan='4'>
                                    <asp:DataGrid id="dgItems" runat="server" CssClass='tableleftbgcolor' width='100%' BorderColor='#CCCCCC'
										BorderStyle='None' BorderWidth='1px' BackColor='White' AutoGenerateColumns="False" CellPadding='3' PageSize='15'
										AllowPaging='True'>
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Code">
												<ItemTemplate>
													<asp:Label id="dgrdlblCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Nature">
												<ItemTemplate>
													<asp:Label id="dgrdlblNature" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NATR") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Subject">
												<ItemTemplate>
													<asp:Label id="dgrdlblSubject" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SUBJECT") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Sort Order No">
												<ItemTemplate>
													<asp:Label id="dgrdlblSortOrderNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SortOrderNo") %>'>
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
