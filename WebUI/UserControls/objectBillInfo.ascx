<%@ Control Language="c#" AutoEventWireup="True" Codebehind="objectBillInfo.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.ObjectBillInfo" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="CheckList.ascx" %>
<HEAD>
	<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
</HEAD>
<TABLE id="Table1" cellSpacing="3" cellPadding="1" width="100%" border="0" class="pgborder">
	<TR class="formtitle">
		<TD align="center" colSpan="4"><asp:label id="lblFormTitle" CssClass="formtitle" runat="server"></asp:label><asp:label id="lblSpace" CssClass="formtitle" runat="server">-</asp:label><asp:label id="lblFormDetailedTitle" CssClass="formtitle" runat="server"></asp:label></TD>
	</TR>
	<TR>
		<TD width="15%"><asp:label id="lblTokenNo" CssClass="mandatory" runat="server">Token Number</asp:label></TD>
		<TD width="32%"><asp:textbox id="txtTokenNo" CssClass="formlines" runat="server" AutoPostBack="True" Enabled="False"
				tabIndex="1" ontextchanged="txtTokenNo_TextChanged"></asp:textbox>
			<asp:requiredfieldvalidator id="rfvTokenNo" CssClass="validatemessage" runat="server" ErrorMessage="Data Required"
				ControlToValidate="txtTokenNo"></asp:requiredfieldvalidator>
		</TD>
		<td colspan="2"><asp:dropdownlist id="cboBillSubCategory1" CssClass="drptxt" runat="server" AutoPostBack="True" Width="195px"
				tabIndex="-1" onselectedindexchanged="cboBillSubCategory1_SelectedIndexChanged"></asp:dropdownlist>&nbsp;&nbsp;
			<asp:dropdownlist id="cboBillSubCategory2" CssClass="drptxt" runat="server" Width="160px" tabIndex="-1"></asp:dropdownlist></td>
	</TR>
	<TR>
		<TD width="15%"><asp:label id="lblBillType" CssClass="mandatory" runat="server">Bill Type</asp:label></TD>
		<TD width="85%" colSpan="3"><asp:textbox id="txtBillType" CssClass="formlines" runat="server" Enabled="False" ReadOnly="True"></asp:textbox>&nbsp;<asp:label id="lblBillTypeDesc" runat="server" Font-Size="XX-Small"></asp:label></TD>
	</TR>
	<TR>
		<TD width="15%"><asp:label id="lblDrawingOfficer" CssClass="mandatory" runat="server">Drawing Officer</asp:label></TD>
		<TD width="85%" colSpan="3"><asp:textbox id="txtDrawingOfficer" CssClass="formlines" runat="server" Enabled="False" ReadOnly="True"></asp:textbox>&nbsp;<INPUT class="formbuttons" style="WIDTH: 121px; HEIGHT: 21px" onclick="ShowDOSignature()"
				type="button" value="View Signature" tabIndex="-1"><asp:label id="lblDODesc" runat="server" Width="349px" Font-Size="XX-Small"></asp:label></TD>
	</TR>
	<TR>
		<TD width="15%"><asp:label id="lblDPCode" CssClass="mandatory" runat="server">DP Code</asp:label></TD>
		<TD width="85%" colSpan="3"><asp:textbox id="txtDPCode" CssClass="formlines" runat="server" Enabled="False" ReadOnly="True"></asp:textbox>&nbsp;<asp:label id="lblDPDesc" runat="server" Width="70%" Font-Size="XX-Small"></asp:label></TD>
	</TR>
	<TR>
		<TD width="15%"><asp:label id="lblBillAmount" CssClass="mandatory" runat="server">Net Amount</asp:label></TD>
		<TD width="85%" colSpan="3"><asp:textbox id="txtBillAmount" CssClass="formlines" runat="server" Enabled="False" ReadOnly="True"
				ForeColor="Black"></asp:textbox>&nbsp;<asp:label id="lblMessage" runat="server" Font-Size="XX-Small"></asp:label></TD>
	</TR>
</TABLE>
<P>&nbsp;</P>
<P>
	<uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></P>
