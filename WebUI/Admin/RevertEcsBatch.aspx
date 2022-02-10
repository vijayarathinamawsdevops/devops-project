<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RevertEcsBatch.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.RevertEcsBatch" %>

<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title>eKaruvoolam - Revert ECS</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <script language="JavaScript" src="../Scripts/ekvm.js"></script>
    <script language="JavaScript" src="../Scripts/date-picker.js"></script>
    <script language="JavaScript" src="../Scripts/printJS.js"></script>
    <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>

    <script language="javascript">

        function TokenNOFocus() {
            document.getElementById("txtTokenNo").focus();
        }

        function confirmDelete() {
            if (Page_ClientValidate()) {
                return confirm("Are you sure!  You want to Revert ECS Batch???");
            }
        }
    </script>


</head>
<body id="Audit_BillProcess" ms_positioning="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
    <form id="RevertECSBatch" method="post" runat="server">
        <table class="tableleftbgcolor" id="Table1" cellspacing="0" cellpadding="0" width="100%"
            border="0" height="100%">
            <tr>
                <td>
                    <uc1:Header ID="Header" runat="server"></uc1:Header>
                </td>
            </tr>
            <tr>
                <td align="center" height="100%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="2" width="100%">
                        <tr>
                            <td style="width: 100%">
                                <div class="menu">
                                    <ul id="navlist">
                                        <li>
                                            <asp:LinkButton ID="lnkRevertEcs" runat="server" CausesValidation="False" TabIndex="0" OnClick="lnkRevertEcs_Click">Revert ECS Process</asp:LinkButton>
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lnkReports" runat="server" CausesValidation="False" TabIndex="-1" OnClick="lnkReports_Click">Reports</asp:LinkButton>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel runat="server" ID="pnlECSRevert" Visible="false">
                                    <table>
                                        <tr>
                                            <td class="mandatory">Revert ECS By</td>
                                            <td>
                                                <asp:RadioButtonList ID="radrevertECSby" CssClass="mandatory" runat="server" RepeatDirection="Horizontal"
                                                    OnSelectedIndexChanged="radrevertECSby_SelectedIndexChanged" AutoPostBack="true">
                                                    <%--    <asp:ListItem Value="0" Selected="True">Token Number</asp:ListItem>--%>
                                                    <asp:ListItem Value="1" Selected="True">ECS Batch</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Panel runat="server" ID="pnlByBatchNo" Width="100%">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td align="left" style="width: 200px">
                                                                <asp:Label ID="lblBatchNo" runat="server" CssClass="mandatory">Batch Number</asp:Label>&nbsp;&nbsp;</td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtBatchNo" runat="server" CssClass="formlines" MaxLength="11"
                                                                    Width="125px" onkeypress="numeralsOnly(this);" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;<asp:ImageButton
                                                                        ID="ibtnBatchGo" runat="server" ImageAlign="AbsBottom"
                                                                        ImageUrl="../Images/go.gif"
                                                                        Width="18px" OnClick="ibtnBatchGo_Click"></asp:ImageButton>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtBatchNo"
                                                                    ErrorMessage="Data required"></asp:RequiredFieldValidator>

                                                            </td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="width: 200px">
                                                                <asp:Label ID="lblrecords" CssClass="mandatory" runat="server">Total Records</asp:Label></td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtrecords" CssClass="formlines" onblur="chkbadchar(this);" runat="server" Enabled="False" ReadOnly="True" Width="125px"></asp:TextBox>&nbsp;</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="width: 200px">
                                                                <asp:Label ID="lbltotAmt" CssClass="mandatory" runat="server">Total Amount</asp:Label></td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txttotAmt" CssClass="formlines" onblur="chkbadchar(this);" runat="server" Enabled="False" ReadOnly="True" Width="125px"></asp:TextBox>&nbsp;</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="width: 200px">
                                                                <asp:Label ID="lblTreasury" CssClass="mandatory" runat="server">Treasury</asp:Label></td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtTreasury" CssClass="formlines" onblur="chkbadchar(this);" runat="server" Enabled="False" ReadOnly="True" Width="125px"></asp:TextBox>&nbsp;</td>
                                                            <td></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="1"></td>
                                            <td align="center">
                                                <asp:Label ID="lblMessage" CssClass="validatemessage" ForeColor="Red" runat="server"></asp:Label></td>
                                        </tr>
                                    </table>
                                </asp:Panel>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel runat="server" ID="pnlReport" Visible="false">
                                    <table>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Panel runat="server" ID="Panel1" Width="100%">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td align="left" style="width: 200px">
                                                                <asp:Label ID="Label1" runat="server" CssClass="mandatory">From Date</asp:Label>&nbsp;&nbsp;</td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtFromDate" runat="server" CssClass="formlines" 
                                                                    Width="125px" onblur="chkbadchar(this);"></asp:TextBox>
                                                                <a onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('RevertECSBatch.txtFromDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></a><asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ControlToValidate="txtFromDate"
										ErrorMessage="*"></asp:requiredfieldvalidator>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="width: 200px">
                                                                <asp:Label ID="Label2" runat="server" CssClass="mandatory">To Date</asp:Label>&nbsp;&nbsp;</td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtToDate" runat="server" CssClass="formlines"
                                                                    Width="125px" onblur="chkbadchar(this);"></asp:TextBox>
                                                               <a onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('RevertECSBatch.txtToDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" align="center">
                                                                <asp:Button runat="server" Text="Submit" ID="btnReport" CssClass="formbuttons" OnClick="btnReport_Click" />&nbsp;&nbsp;
                                                                <asp:Button runat="server" Text="Clear" ID="btnRptClear" CssClass="formbuttons" OnClick="btnRptClear_Click" />
                                                            </td>
                                                            
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>

                            </td>
                        </tr>
                        <tr>
                            <td style="height:250px">
                                <asp:Panel ID="pnlRevertByBatchNo" runat="server" Visible="false" ScrollBars="Auto" Height="230px">
                                    <table id="Table2" cellspacing="3" cellpadding="1" width="100%" border="0" class="pgborder">
                                        <tr>
                                            <td>
                                                <asp:GridView runat="server" ID="grdBatchNo" CssClass="tableleftbgcolor" Width="95%" CellPadding="2"
                                                    BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" ShowFooter="True"
                                                    PagerStyle-HorizontalAlign="Right"   >
                                                    <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
                                                    <FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel runat="server" ID="pnlSubmit" Visible="false">
                                    <table id="Table3" cellspacing="3" cellpadding="1" width="100%" border="0" class="pgborder">
                                        <tr>
                                            <td width="30%" class="auto-style3">
                                                <asp:Label ID="lblBillStatustoRevert" CssClass="mandatory" runat="server">Select Bill Status to Revert</asp:Label></td>
                                            <td class="auto-style3">
                                                <asp:DropDownList ID="drbRevertedBillStatus" CssClass="drptxt" runat="server" AutoPostBack="True" Width="195px"
                                                    TabIndex="-1" Enabled="false">
                                                    <asp:ListItem Value="7" Text="Auditor-3 Passed"></asp:ListItem>
                                                </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="drbRevertedBillStatus"
                                                    ErrorMessage="Data required" InitialValue="-1"></asp:RequiredFieldValidator>&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="30%" class="auto-style3">
                                                <asp:Label ID="lblRemarks" CssClass="mandatory" runat="server"> Remarks for ECS Change</asp:Label></td>
                                            <td class="auto-style3">
                                                <asp:TextBox runat="server" ID="txtRemarks" TextMode="MultiLine" Width="189px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtRemarks"
                                                    ErrorMessage="Data required" ValidationGroup="valid"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Minimum 25 characters required" ControlToValidate="txtRemarks"
                                                    CssClass="validatemessage" ValidationExpression="^[\s\S]{25,}$"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Button ID="btnConfirm" TabIndex="7" runat="server" Width="110px" ValidationGroup="valid" CssClass="formbuttons" Text="Revert ECS " OnClick="btnConfirm_Click" OnClientClick="return confirmDelete();"></asp:Button>
                                                &nbsp;&nbsp;
                                                <asp:Button ID="btnClear" TabIndex="7" runat="server" Width="110px" CssClass="formbuttons" Text="Clear" OnClick="btnClear_Click" CausesValidation="False"></asp:Button>
                                                <%-- <asp:Label runat="server" ID="lblresult" ></asp:Label>--%>
                                            </td>
                                            <td></td>
                                        </tr>

                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr>
                <td>
                    <uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
            </tr>
            <tr>
                <td colspan="2">
                    <uc1:Footer ID="Footer1" runat="server"></uc1:Footer>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
