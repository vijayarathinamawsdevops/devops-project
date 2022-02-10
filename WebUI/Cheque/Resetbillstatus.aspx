<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resetbillstatus.aspx.cs" Inherits="eKaruvoolam.WebUI.Cheque.Resetbillstatus" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register src="../UserControls/ChequeMenus.ascx" tagname="ChequeMenus" tagprefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<td vAlign="top"><uc3:ChequeMenus ID="ChequeMenus1" runat="server" /></td>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
    <TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Reset Bill Status</asp:label></TD>
							</TR>
                             
                             
							<TR>
								<TD width="15%"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token Number</asp:label></TD>
								<TD width="35%"><asp:dropdownlist id="CboTokenYear" runat="server" CssClass="formlines"></asp:dropdownlist><asp:textbox id="txtTokenNo" AutoPostBack="true" runat="server" CssClass="formlines" onkeypress="numeralsOnly(this)"  onblur="chkbadchar(this);"  MaxLength="19" ontextchanged="txtTokenNo_TextChanged"></asp:textbox></TD>
							</TR>
							<tr>
								<TD width="15%"><asp:label id="lblDOCode" runat="server" CssClass="mandatory">DOCode</asp:label></TD>
								<TD colSpan="3">
                                    <asp:textbox id="txtDOCode" runat="server" Width="50px" CssClass="formlines"
										MaxLength="5" ontextchanged="txtDOCode_TextChanged" Enabled="False"></asp:textbox>
                                    <asp:dropdownlist id="cboDrawingOfficer" runat="server" Width="210px" CssClass="formlines"
										Font-Size="XX-Small" onselectedindexchanged="DropDownList1_SelectedIndexChanged" Enabled="False"></asp:dropdownlist></TD>
							</tr>
							<TR>
								<TD width="15%"><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DPCode</asp:label></TD>
								<TD colSpan="3">
                                    <asp:textbox id="txtDPCode" runat="server" CssClass="formlines" 
                                        MaxLength="15" Enabled="False" onblur="chkbadchar(this);"></asp:textbox>
                                    <asp:dropdownlist id="cbodpcode" 
                                        runat="server" Width="130px" Font-Size="XX-Small" 
                                        onselectedindexchanged="cbodpcode_SelectedIndexChanged" Enabled="False"></asp:dropdownlist>
                                    <asp:dropdownlist id="drpsubdpcode" runat="server" Width="80px" 
                                        Font-Size="XX-Small" 
                                        onselectedindexchanged="drpsubdpcode_SelectedIndexChanged" Enabled="False"></asp:dropdownlist></TD>
							</TR>
							<tr>
								<TD width="15%"><asp:label id="lblBillType" runat="server" CssClass="mandatory">BillType</asp:label></TD>
								<TD width="35%">
                                    <asp:textbox id="txtBillType" runat="server" CssClass="formlines" MaxLength="6"
										Visible="False" Enabled="False"></asp:textbox>
                                    <asp:dropdownlist id="cboBillType" 
                                        runat="server" Width="190px" 
                                        onselectedindexchanged="cboBillType_SelectedIndexChanged" Enabled="False"></asp:dropdownlist></TD>
								<TD align="left" width="15%"><asp:label id="lblEcs" runat="server" Width="112px" CssClass="mandatory">Whether ECS or Not</asp:label></TD>
								<TD vAlign="top">
                                    <asp:dropdownlist id="CboEcs" runat="server" CssClass="formlines" 
                                        onselectedindexchanged="CboEcs_SelectedIndexChanged" Enabled="False">
										<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
										<asp:ListItem Value="1">ECS Non Salary</asp:ListItem>
										<asp:ListItem Value="2">ECS Salary</asp:ListItem>
									</asp:dropdownlist></TD>
							</tr>
							<TR>
								<TD width="15%"><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" 
                                        MaxLength="19" Enabled="False" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblCounterID" runat="server" CssClass="mandatory">Counter ID</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtCounterID" runat="server" CssClass="formlines" 
                                       onblur="chkbadchar(this);" MaxLength="5" ReadOnly="True" Enabled="False"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblBillStatus" runat="server" CssClass="mandatory">Current Bill Status</asp:label></TD>
								<TD width="35%">
                                    <asp:dropdownlist id="drpBillStatus" runat="server" Width="210px" CssClass="formlines"
										Font-Size="XX-Small" Enabled="False"></asp:dropdownlist></TD>
								<%--<TD width="15%"><asp:HiddenField ID="hidval" runat="server" /></TD>--%>
								<TD width="35%">&nbsp;</TD>
							</TR>
							<TR>
								<TD width="15%">&nbsp;</TD>
								<TD width="35%">&nbsp;</TD>
								<TD width="15%">&nbsp;</TD>
								<TD width="35%">&nbsp;</TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblSetBillStatus" runat="server" 
                                        CssClass="mandatory">Reset to Bill Status</asp:label></TD>
								<TD width="35%">
                                    <asp:dropdownlist id="drpSetBillStatus" runat="server" 
                                        Width="210px" CssClass="formlines"
										Font-Size="XX-Small"></asp:dropdownlist></TD>
								<TD width="15%">&nbsp;</TD>
								<TD width="35%">&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnSave" runat="server" Width="90px" 
                                        CssClass="formbuttons" Text="Update Status" onclick="btnSave_Click" 
                                        Enabled="False"></asp:button><asp:button id="btnCancel" runat="server" Width="90px" CssClass="formbuttons" Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD colSpan="4"></TD>
							</TR>
							<TR>
								<TD colSpan="4">&nbsp;</TD>
							</TR>
						</TABLE>
                                 
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
    </div>
    </form>
</body>
</html>
