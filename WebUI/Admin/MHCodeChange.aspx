<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MHCodeChange.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.MHCodeChange" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/TotalDeduLabel.ascx" tagname="TotalDeduLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/PayBreakup.ascx" tagname="PayBreakup" tagprefix="uc3" %>
<%@ Register src="../UserControls/PayDeductions.ascx" tagname="PayDeductions" tagprefix="uc4" %>
<%@ Register src="../UserControls/PayCR_OR.ascx" tagname="PayCR_OR" tagprefix="uc5" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc6" %>

<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc7" %>

<%@ Register src="../UserControls/PensionBreakup.ascx" tagname="PensionBreakup" tagprefix="uc8" %>
<%@ Register src="../UserControls/PensionDeductions.ascx" tagname="PensionDeductions" tagprefix="uc9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
		<title>eKaruvoolam - MHCode Change</title>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
    </head>
<body>
    <form id="form1" runat="server">
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    <table class="parabr" width="100%" align="center">
        <tr>
            <td align="center" class="formtitle" colspan="4">
                **MH Code Change Details**</td>
        </tr>
        <tr>
            <td>
                <asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token No</asp:label>
								</td>
            <td colspan="3">
                <asp:dropdownlist id="CboTokenYear" runat="server" CssClass="formlines" Width="80px"></asp:dropdownlist>
									<asp:dropdownlist id="DrpStocode" runat="server" 
                    CssClass="formlines" Width="160px" AutoPostBack="True" 
                    onselectedindexchanged="DrpStocode_SelectedIndexChanged"></asp:dropdownlist>
								<asp:textbox id="txtTokenNo" runat="server" 
                    CssClass="formlines" MaxLength="7" Width="169px" onblur="chkbadchar(this);"></asp:textbox><asp:imagebutton 
                                        id="ibtnTokenGo" runat="server"  ImageAlign="AbsBottom" 
                                        ImageUrl="../Images/go.gif" CausesValidation="False" 
                                        onclick="ibtnTokenGo_Click" Width="18px"></asp:imagebutton>
                                        <asp:requiredfieldvalidator id="rfvTokenNo" runat="server" ControlToValidate="txtTokenNo" ErrorMessage="Data required"
										CssClass="validatemessage"></asp:requiredfieldvalidator></td>
        </tr>
        <tr>
            <td>
                <asp:label id="lblDOCode" runat="server" CssClass="mandatory">DOCode</asp:label></td>
            <td>
                <asp:dropdownlist id="cboDrawingOfficer" runat="server" Width="210px" 
                    CssClass="formlines" AutoPostBack="True"
										Font-Size="XX-Small"></asp:dropdownlist></td>
            <td>
                <asp:label id="lblTransType" runat="server" CssClass="mandatory">Payment Type</asp:label></td>
            <td>
                <asp:dropdownlist id="cboPaymentType" runat="server" CssClass="drptxt"></asp:dropdownlist></td>
        </tr>
        <tr>
            <td>
                <asp:label id="lblBillType" runat="server" CssClass="mandatory">BillType</asp:label></td>
            <td>
                <asp:dropdownlist id="cboBillType" runat="server" Width="190px" 
                    AutoPostBack="True" 
                    CssClass="formlines" 
                    onselectedindexchanged="cboBillType_SelectedIndexChanged1"></asp:dropdownlist></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:label id="lblDPCode" runat="server" CssClass="mandatory">DPCode</asp:label></td>
            <td>
                <asp:textbox id="txtDPCode" runat="server" CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);" MaxLength="15"></asp:textbox>
                <asp:dropdownlist id="cbodpcode" runat="server" Width="130px" 
                    AutoPostBack="True" Font-Size="XX-Small" 
                    onselectedindexchanged="cbodpcode_SelectedIndexChanged"></asp:dropdownlist>
                <asp:dropdownlist id="drpsubdpcode" runat="server" Width="80px" 
                    AutoPostBack="True" Font-Size="XX-Small"></asp:dropdownlist></td>
            <td>
                <asp:label id="lblDOType" runat="server" CssClass="mandatory">DO Type</asp:label></td>
            <td>
                <asp:dropdownlist id="cboDOType" runat="server" CssClass="drptxt"></asp:dropdownlist></td>
        </tr>
        <tr>
            <td>
								<asp:label id="Label2" runat="server" CssClass="mandatory" 
                    Width="40px">NSD</asp:label></td>
            <td>
								<asp:TextBox id="txtNSD" runat="server" CssClass="formlines" Width="64px" onblur="chkbadchar(this);"></asp:TextBox></td>
            <td>
                <asp:label id="lblPart" runat="server" CssClass="mandatory">Part</asp:label></td>
            <td>
                <asp:dropdownlist id="cboAccountPart" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboAccountPart_SelectedIndexChanged"></asp:dropdownlist></td>
        </tr>
        <tr>
            <td>
                <asp:label id="lblChequeNo" runat="server" CssClass="mandatory">Cheque No</asp:label></td>
            <td>
                <asp:textbox id="txtChequNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
            <td>
                <asp:label id="lblSANo" runat="server" CssClass="mandatory">SA No</asp:label></td>
            <td>
								<asp:TextBox id="txtSANo" runat="server" CssClass="formlines" MaxLength="3" 
                                    onblur="chkbadchar(this);" ontextchanged="txtSANo_TextChanged" 
                                    AutoPostBack="True" ></asp:TextBox>
                                    <asp:Label ID="SANO" runat="server" ForeColor="Red"></asp:Label>
							</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:label id="lblEcs" runat="server" Width="112px" CssClass="mandatory">Whether ECS or Not</asp:label></td>
            <td>
                <asp:dropdownlist id="CboEcs" runat="server" CssClass="formlines">
										<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
										<asp:ListItem Value="1">ECS Non Salary</asp:ListItem>
										<asp:ListItem Value="2">ECS Salary</asp:ListItem>
									</asp:dropdownlist></td>
        </tr>
        <tr>
            <td>
                <asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></td>
            <td colspan="3">
                <asp:textbox id="txtBillAmount" runat="server" Enabled="false" 
                    CssClass="formlines" MaxLength="19" onblur="chkbadchar(this);"></asp:textbox></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" colspan="4">
                <asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></td>
        </tr>
        </table>
    <asp:Panel ID="pnlControls" Runat="server">
        <TABLE cellSpacing="0" cellPadding="2" width="100%" border="0">
            <tr>
            <td>
            <TABLE cellSpacing="0" cellPadding="0" width="100%" border="1">
        <tr>
        <td vAlign="top" width="40%">
            <uc3:PayBreakup ID="PayBreakup1" runat="server" />
        </td>
        <td vAlign="top" width="45%">
            <uc4:PayDeductions ID="PayDeductions1" runat="server" />
        </td>
        <td vAlign="top" width="15%">
            <uc5:PayCR_OR ID="PayCR_OR1" runat="server" />
        </td>
        </tr>
        <tr>
        <td align="right" colSpan="3">
        <asp:Label id="Label1" Runat="server"></asp:Label>

            <uc2:TotalDeduLabel ID="TotalDeduLabel1" runat="server" />

        <asp:Label id="lblTotal" Runat="server"></asp:Label>
        </td>
        </tr>

                <tr>
                    <td align="left" colSpan="3">
                        <asp:Label ID="lblMessage0" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" colSpan="3">
                        <asp:Button ID="btnSave" runat="server" CausesValidation="False" 
                            CssClass="formbuttons" Text="Save" Width="100px" 
                            onclick="btnSave_Click" />
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                            CssClass="formbuttons" onclick="btnCancel_Click" Text="Clear" Width="90px" />
                    </td>
                </tr>

        </TABLE>
        </td>
        </tr>
        </TABLE>
    </asp:Panel>
    <asp:Panel ID="Panel1" Runat="server" Visible = "false">
        <TABLE cellSpacing="0" cellPadding="2" width="100%" border="0">
            <tr>
            <td>
            <TABLE cellSpacing="0" cellPadding="0" width="100%" border="1">
        <tr>
        <td vAlign="top" width="40%">
            <uc8:PensionBreakup ID="PensionBreakup1" runat="server" />
        </td>
        <td vAlign="top" width="45%">
            <uc9:PensionDeductions ID="PensionDeductions1" runat="server" />
        </td>
        <td vAlign="top" width="15%">
            <uc5:PayCR_OR ID="PayCR_OR3" runat="server" />
        </td>
        </tr>
        <tr>
        <td align="right" colSpan="3">
        <asp:Label id="Label3" Runat="server"></asp:Label>

            <uc2:TotalDeduLabel ID="TotalDeduLabel2" runat="server" />

        <asp:Label id="Label4" Runat="server"></asp:Label>
        </td>
        </tr>

                <tr>
                    <td align="left" colSpan="3">
                        <asp:Label ID="Label5" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" colSpan="3">
                        <asp:Button ID="btnPensionSave" runat="server" CausesValidation="False" 
                            CssClass="formbuttons" Text="Save" Width="100px" 
                            onclick="btnPensionSave_Click" />
                        <asp:Button ID="btnClear" runat="server" CausesValidation="False" 
                            CssClass="formbuttons" onclick="btnClear_Click" Text="Clear" 
                            Width="90px" />
                    </td>
                </tr>

        </TABLE>
        </td>
        </tr>
        </TABLE>
    </asp:Panel>
    <table width="100%">
    <tr>
    <td><uc6:ErrorLabel ID="ErrorLabel1" runat="server" /></td></tr>
    <tr><td>
        <uc7:Footer ID="Footer1" runat="server" />
    </td></tr>
    
    </table>
    </form>
</body>
</html>
