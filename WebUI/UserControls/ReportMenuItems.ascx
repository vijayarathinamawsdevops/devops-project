<%@ Control Language="c#" AutoEventWireup="True" Codebehind="ReportMenuItems.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.ReportMenuItems" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<script language="JavaScript" src="../Scripts/date-picker.js"></script>
<script language="JavaScript" src="../Scripts/ekvm.js"></script>

<div class="menuVertical">

  <ul>
    <li></li>
        <li style="color:White">	
		     Report Menus
       </li>

	<li>
		<asp:LinkButton id="Lnkvalidate" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="Lnkvalidate_Click">Validate-Input</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkInput1" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkInput1_Click">Input I</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkInput2" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkInput2_Click">Input II</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkReceiptFunds" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkReceiptFunds_Click">Receipt Funds</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkPayFunds" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkPayFunds_Click">Pay Funds</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkPayDeposit" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkPayDeposit_Click">Pay Deposit</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkReceiptDeposit" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkReceiptDeposit_Click">Receipt Deposit</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkRBDMonthly" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkRBDMonthly_Click">RBD Monthly</asp:LinkButton>
	</li>
    
	<%--<li>
		<asp:LinkButton id="lnkReceiptchitta" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkReceiptchitta_Click">Receipt Chitta</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkDepositchitta" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkDepositchitta_Click">Deposit Chitta</asp:LinkButton>
	</li>--%>

	<li>
		<asp:LinkButton id="lnkStamp" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkStamp_Click">Stamp</asp:LinkButton>
	</li>

	<li>
		<asp:LinkButton id="lnkchkreport" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkchkreport_Click">Cheque Report</asp:LinkButton>
	</li>

	<%--<li>
		<asp:LinkButton id="Linkbutton1" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="Linkbutton1_Click">Revenue Receipt</asp:LinkButton>
	</li>--%>

  </ul>

</div>