<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="BillStatusMas.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.BillStatusMas" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - BillStatusMas</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="BillStatusMas" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<TABLE id="Table2" class="tableleftbgcolor" cellSpacing="1" cellPadding="1" width="98%"
							border="0">
							<TR>
								<TD width='15%'><asp:Label id="lblBillStatus" runat="server" CssClass="mandatory">BillStatus</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtBillStatus" runat="server" CssClass="formlines" MaxLength="3" onblur="chkbadchar(this);"></asp:TextBox></TD>
								<TD width='15%'><asp:Label id="lblBillStatusDesc" runat="server" CssClass="mandatory">BillStatusDesc</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtBillStatusDesc" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage' runat='server' 
                                        CssClass='validatemessage'></asp:Label></TD>
							</TR>
							<TR>
								<TD>&nbsp;</TD>
								<TD colSpan='3' align="right"><asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' Width="100px" onclick="btnSave_Click"></asp:Button><asp:Button id='btnSearch' runat='server' CssClass='formbuttons' Text='Search' Width="100px" onclick="btnSearch_Click"></asp:Button>
								    <asp:Button id='btnCancel' runat='server' Text='Cancel' CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD colSpan='4'>
									<table width="100%" border="0">
										<tr>
											<td>
												<asp:DataGrid id='dgItems' runat='server' CssClass='tableleftbgcolor' width='100%' BorderColor='#CCCCCC'
													BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3' PageSize='10' AllowPaging='True'
													AllowCustomPaging='True' onselectedindexchanged="dgItems_SelectedIndexChanged">
													<SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
													<ItemStyle ForeColor='#000066'></ItemStyle>
													<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
													<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
													<Columns>
														<asp:EditCommandColumn ButtonType='LinkButton' UpdateText='Update' CancelText='Cancel' EditText='Edit'></asp:EditCommandColumn>
													</Columns>
													<PagerStyle HorizontalAlign='Left' ForeColor='#000066' BackColor='White' Mode='NumericPages'></PagerStyle>
												</asp:DataGrid>
											</td>
										</tr>
									</table>
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
