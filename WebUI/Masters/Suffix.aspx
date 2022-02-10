<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="Suffix.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.Suffix" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Suffix</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Suffix" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE class="parabr" id="tblContent" cellSpacing="2" cellPadding="2" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Suffix Master Details</asp:label></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblSANO" runat="server" CssClass="mandatory">SANO</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtSANO" runat="server" CssClass="formlines" MaxLength="3" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblSUFFIX" runat="server" CssClass="mandatory">SUFFIX</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtSUFFIX" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblDPCODE" runat="server" CssClass="mandatory">DPCODE</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtDPCODE" runat="server" CssClass="formlines" MaxLength="15" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD colspan="2">&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage' runat='server' CssClass='validationmessage'></asp:Label></TD>
							</TR>
							<TR>
								<TD colspan="4" align="center"><asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' Width="100px" onclick="btnSave_Click"></asp:Button>&nbsp;&nbsp;
									<asp:Button id='btnCancel' runat='server' Text='Cancel' CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button>
									&nbsp;&nbsp;<asp:Button id='btnSearch' runat='server' CssClass='formbuttons' Visible="true" Text='Search'
										Width="100px" onclick="btnSearch_Click"></asp:Button></TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="Table1" class="tableleftbgcolor" cellSpacing="1" cellPadding="1" width="98%"
							border="0">
							<TR>
								<TD colSpan='4'><asp:DataGrid id='dgItems' runat='server' CssClass='tableleftbgcolor' AutoGenerateColumns="False"
										width='100%' BorderColor='#CCCCCC' BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3'
										PageSize='15' AllowPaging='True'><SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
										<ItemStyle ForeColor='#000066'></ItemStyle>
										<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
										<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="SANo">
												<ItemTemplate>
													<asp:Label id="dgrdlblSANo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SANO") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Suffix">
												<ItemTemplate>
													<asp:Label id="dgrdlblSuffix" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SUFFIX") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DPCode">
												<ItemTemplate>
													<asp:Label id="dgrdlblDPCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCODE") %>'>
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
										<PagerStyle HorizontalAlign='Left' ForeColor='#000066' BackColor='White' Mode='NumericPages'></PagerStyle>
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
