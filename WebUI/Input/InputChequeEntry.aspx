<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="InputChequeEntry.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Input.InputChequeEntry" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Input Cheque Entry</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="InputChequeEntry" method="post" runat="server">
          
         
  
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<TR>
					<td vAlign="top" align="center" height="100%">
						
					    <table class="style1" width="100%">
                            <tr>
                                <td align="center">
                                    <asp:label id="Label1" runat="server" CssClass="mandatory">Transaction Date :</asp:label>
						<asp:label id="lbldate" runat="server" CssClass="mandatory"></asp:label>
                                </td>
                                <td align="right">
                                    <asp:LinkButton id="Lnkreport" tabIndex="-1" CssClass="mmenuheadstyle" runat="server" CausesValidation="False"
							Width="250px" onclick="Lnkreport_Click">View cheque Scroll Report</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
						
					    <table align="center" class="parabr" width="80%">
                            <tr>
                                <td class="formtitle" colspan="6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="5%">
                                    &nbsp;</td>
                                <td width="10%">
                                    <asp:label id="lblTokenNo" runat="server" CssClass="mandatory" Width="60px">Token No</asp:label>
                                </td>
                                <td width="25%">
									<asp:DropDownList id="CboTokenYear" runat="server" CssClass="formlines" 
                                        Width="100px"></asp:DropDownList><asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" MaxLength="7"
										onkeypress="numeralsOnly(this);"  onblur="chkbadchar(this);"></asp:textbox><asp:imagebutton 
                                        id="ibtnTokenGo" runat="server"  ImageAlign="AbsBottom" 
                                        ImageUrl="../Images/go.gif" CausesValidation="False" 
                                        onclick="ibtnTokenGo_Click" Width="18px"></asp:imagebutton>
									</td>
                                <td width="15%">
									<asp:label id="lblchequeno0" runat="server" CssClass="mandatory" Width="230px">Choose Cheque or Other State Pension</asp:label>
                                </td>
                                <td width="20%">
									<asp:DropDownList id="cboNature" runat="server" CssClass="formlines" tabIndex="3">
										<asp:ListItem Value="Q" Selected="True">Cheque</asp:ListItem>
										<asp:ListItem Value="S">Other State Pensions</asp:ListItem>
									</asp:DropDownList>
                                </td>
                                <td width="5%">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td width="1">
									<asp:label id="lblchequeno" runat="server" CssClass="mandatory" Width="96px">Cheque Number</asp:label>
                                </td>
                                <td>
									<asp:textbox id="txtChequeNo" runat="server" CssClass="formlines" Width="125px" AutoPostBack="True" ontextchanged="txtChequeNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox>
                                        </td>
                                <td>
                                    <asp:label id="lblTokenNo2" runat="server" CssClass="mandatory" Width="60px">DP Code</asp:label>
                                </td>
                                <td>
                                    <asp:textbox id="txtDPCode" runat="server" CssClass="formlines" Width="125px" tabIndex="4" onblur="chkbadchar(this);"></asp:textbox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:label id="lblTokenNo0" runat="server" CssClass="mandatory" Width="60px">DO Code</asp:label>
                                </td>
                                <td>
									<asp:textbox id="txtDOCode" tabIndex="2" runat="server" CssClass="formlines" MaxLength="5" AutoPostBack="True"
										Width="50px" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvDOCode" runat="server" Display="Dynamic" ErrorMessage="***" ControlToValidate="txtDOCode"></asp:requiredfieldvalidator>
									<asp:dropdownlist id="cboDrawingOfficer" runat="server" CssClass="formlines" AutoPostBack="True" Width="260px"
										TabIndex="2" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist>
								</td>
                                <td>
                                    <asp:label id="lblTokenNo3" runat="server" CssClass="mandatory" Width="90px">Amount (Rs.)</asp:label>
                                </td>
                                <td>
                                    <asp:textbox id="txtAmount" runat="server" CssClass="formlines" Width="125px" tabIndex="5" onblur="chkbadchar(this);"></asp:textbox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:label id="lblTokenNo1" runat="server" CssClass="mandatory" Width="90px">Payment Type</asp:label>
                                </td>
                                <td>
									<asp:dropdownlist id="cboPaymentType" runat="server" CssClass="drptxt" 
                                        tabIndex="6" Width="61px">
                                        <asp:ListItem Value="C">Cash</asp:ListItem>
                                        <asp:ListItem Value="D">Departmental</asp:ListItem>
                                    </asp:dropdownlist>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:textbox id="txtRemarks" runat="server" CssClass="formlines" Width="185px" TextMode="MultiLine"
										Rows="2" Columns="100" Visible="False" tabIndex="7" onblur="chkbadchar(this);"></asp:textbox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td align="right">
									<asp:button id="btnCancel" CssClass="formbuttons" Width="100px" Runat="server" Text="Cancel" onclick="btnCancel_Click"></asp:button>
									<asp:button id="btnUpdate" CssClass="formbuttons" Width="100px" Runat="server" 
                                        Text="Update" onclick="btnUpdate_Click" Visible="False"></asp:button>
									<asp:button id="btnSave" CssClass="formbuttons" Width="100px" Runat="server" Text="Save" tabIndex="10" onclick="btnSave_Click"></asp:button>
                                    <asp:Button ID="btnDelete" CssClass="formbuttons" Width="100px" runat="server" Text="Delete" OnClick="btnDelete_Click" Visible="False" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        
					</td>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
              
    

		</form>
	</body>
</HTML>
