<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="VendorMaster.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.VendorMaster" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - VendorMaster</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="VendorMaster" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE id="Table1" class="tableleftbgcolor" cellSpacing="1" cellPadding="1" width="98%"
							border="0">
							<TR>
								<TD width='15%'><asp:Label id="lblcode" runat="server" CssClass="mandatory">Code</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtcode" runat="server" CssClass="formlines" MaxLength="18" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblname" runat="server" CssClass="mandatory">Name</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtname" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lbladdress1" runat="server" CssClass="mandatory">Address1</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtaddress1" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lbladdress2" runat="server" CssClass="mandatory">Address2</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtaddress2" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lbladdress3" runat="server" CssClass="mandatory">Address3</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtaddress3" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblcity" runat="server" CssClass="mandatory">City</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtcity" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblpincode" runat="server" CssClass="mandatory">Pincode</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtpincode" runat="server" CssClass="formlines" MaxLength="6" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD colspan="2">&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage' runat='server' CssClass='validationmessage'></asp:Label></TD>
							</TR>
							<TR>
								<TD><asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' 
                                        Width="100px" onclick="btnSave_Click"></asp:Button></TD>
								<TD colSpan='3'><asp:Button id='btnCancel' runat='server' Text='Cancel' 
                                        CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD colspan="4"><asp:Button id='btnSearch' runat='server' CssClass='formbuttons' 
                                        Text='Search' Width="100px" onclick="btnSearch_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:DataGrid id='dgItems' runat='server' CssClass='tableleftbgcolor' width='100%' BorderColor='#CCCCCC'
										BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3' PageSize='15' AllowPaging='True'><SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
										<ItemStyle ForeColor='#000066'></ItemStyle>
										<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
										<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
										<Columns>
											<asp:EditCommandColumn ButtonType='LinkButton' UpdateText='Update' CancelText='Cancel' EditText='Edit'></asp:EditCommandColumn>
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
