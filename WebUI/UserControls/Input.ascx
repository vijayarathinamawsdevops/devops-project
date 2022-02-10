<%@ Control Language="c#" AutoEventWireup="True" Codebehind="Input.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.Input" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="TopHeader.ascx" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
<TABLE class="pageleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
	border="0" align="center">
	<TBODY>
		<TR>
			<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
		</TR>
		<TR>
			<td align="center" height="100%" valign="top">
				<table border="0" cellpadding="0" cellspacing="2" width="98%" align="center" 
                    style="text-align: left">
                        <tr>
							<TD class="formtitle" align="center" colSpan="4"><asp:label id="frmtitle" runat="server" CssClass="formtitle">Input</asp:label></TD>
						</tr>
					<TBODY>
						<tr>
							<TD width="15%">
								<asp:Label id="lblBill" runat="server" CssClass="mandatory">Bill</asp:Label></TD>
							<TD width="35%">
								<asp:TextBox id="txtBillType" runat="server" CssClass="formlines" ReadOnly="True"></asp:TextBox></TD>
							<TD width="15%">
                                &nbsp;</TD>
							<TD width="35%"></TD>
						</tr>
						<TR>
							<TD width="15%"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label></TD>
							<TD width="35%"><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" ReadOnly="True" ></asp:textbox></TD>
							<TD width="15%"><asp:label id="lblTransType" runat="server" CssClass="mandatory">Payment Type</asp:label></TD>
							<TD width="35%"><asp:dropdownlist id="cboPaymentType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
						</TR>
						<TR>
							<TD width="15%"><asp:label id="lblDOCode" runat="server" CssClass="mandatory">DO Code</asp:label></TD>
							<TD width="35%"><asp:label id="txtDOCode" runat="server" CssClass="formlines" Width="220px"></asp:label></TD>
							<TD width="15%"><asp:label id="lblDOType" runat="server" CssClass="mandatory">DO Type</asp:label></TD>
							<TD width="35%"><asp:dropdownlist id="cboDOType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
						</TR>
						<TR>
							<TD width="15%"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
							<TD width="35%"><asp:textbox id="txtDPCode" runat="server" CssClass="formlines" ReadOnly="True" Width="260px"></asp:textbox></TD>
							<TD width="15%"><asp:label id="lblPart" runat="server" CssClass="mandatory">Part</asp:label></TD>
							<TD width="35%"><asp:dropdownlist id="cboAccountPart" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboAccountPart_SelectedIndexChanged"></asp:dropdownlist></TD>
						</TR>
						<TR>
							<TD width="15%"><asp:label id="lblChequeNo" runat="server" CssClass="mandatory">Cheque No</asp:label></TD>
							<TD width="35%"><asp:textbox id="txtChequNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
							<TD width="15%"><asp:label id="lblSANo" runat="server" CssClass="mandatory">SA No</asp:label></TD>
							<TD width="35%">
								<asp:TextBox id="txtSANo" runat="server" CssClass="formlines" MaxLength="3" 
                                    onblur="chkbadchar(this);" ontextchanged="txtSANo_TextChanged" ></asp:TextBox>
                                    <asp:Label ID="SANO" runat="server" ForeColor="Red"></asp:Label>
							</TD>
						<TR>
							<TD width="15%">
								<asp:label id="Label1" runat="server" CssClass="mandatory" Width="40px">NSD</asp:label></TD>
							<TD width="35%">
								<asp:TextBox id="txtNSD" runat="server" CssClass="formlines" Width="64px" onblur="chkbadchar(this);"></asp:TextBox></TD>
							<TD width="15%"></TD>
							<TD width="35%"></TD>
						</TR>
						<TR>
							<TD width="15%" colSpan="4"><uc1:gpfnumber id="GPFNumber1" runat="server" visible="false"></uc1:gpfnumber></TD>
						</TR>
						<TR>
							<TD width="15%"><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
							<TD><asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" 
                                    ReadOnly="True" ontextchanged="txtBillAmount_TextChanged"></asp:textbox>
                            </TD>
						    <td>
                                <asp:HyperLink ID="lnkEmployee" runat="server" CssClass="mandatory" 
                                    NavigateUrl="~/WebUI/audit/EmployeeDetailsDisplay.aspx" Target="_blank" 
                                    Font-Underline="True" ForeColor="#0066CC">View Employees Details</asp:HyperLink>
                            </td>
						</TR>
					</TBODY>
				</table>
			</td>
		</TR>
	</TBODY>
</TABLE>
