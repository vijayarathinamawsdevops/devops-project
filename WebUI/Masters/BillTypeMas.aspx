<%@ Page language="c#" validateRequest="false" SmartNavigation="True" Codebehind="BillTypeMas.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.BillTypeMas" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - BillTypeMas</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<FORM id="BillTypeMas" method="post" runat="server">
         


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
								<TD width='15%'><asp:Label id="lblBillType" runat="server" CssClass="mandatory">BillType</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtBillType" runat="server" CssClass="formlines" MaxLength="6" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblBillDesc" runat="server" CssClass="mandatory">BillDesc</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtBillDesc" runat="server" CssClass="formlines" MaxLength="30" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblFormNo" runat="server" CssClass="mandatory">FormNo</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtFormNo" runat="server" CssClass="formlines" MaxLength="6" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblBudget" runat="server" CssClass="mandatory">Budget</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtBudget" runat="server" CssClass="formlines" MaxLength="1" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblFormCategory" runat="server" CssClass="mandatory">FormCategory</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtFormCategory" runat="server" CssClass="formlines" MaxLength="3" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblFormUrl" runat="server" CssClass="mandatory">FormUrl</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtFormUrl" runat="server" CssClass="formlines" MaxLength="100" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblInputUrl" runat="server" CssClass="mandatory">InputUrl</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtInputUrl" runat="server" CssClass="formlines" MaxLength="100" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblBillNature" runat="server" CssClass="mandatory">BillNature</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtBillNature" runat="server" CssClass="formlines" MaxLength="1" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width='15%'><asp:Label id="lblNATR" runat="server" CssClass="mandatory">NATR</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtNATR" runat="server" CssClass="formlines" MaxLength="1" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD colspan="2">&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage' runat='server' CssClass='validationmessage'></asp:Label></TD>
							</TR>
							<TR>
								<TD><asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' Width="100px" onclick="btnSave_Click"></asp:Button></TD>
								<TD colSpan='3'><asp:Button id='btnCancel' runat='server' Text='Cancel' CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD colspan="4"><asp:Button id='btnSearch' runat='server' CssClass='formbuttons' Text='Search' Width="100px" onclick="btnSearch_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:DataGrid id='dgItems' runat='server' CssClass='tableleftbgcolor' width='100%' BorderColor='#CCCCCC'
										BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3' PageSize='15' AllowPaging='True'
										AllowCustomPaging='True'><SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
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
            

		</FORM>
	</body>
</HTML>
