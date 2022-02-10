<%@ Control Language="c#" AutoEventWireup="True" Codebehind="ChequeMenus.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.ChequeMenus" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<script language="JavaScript" src="../Scripts/ekvm.js"></script>
<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" class="tableleftborder"
	border="0">
	<TR>
		<td background="../Images/bg.gif" colspan="4"><img src="../Images/banner.jpg" width="680" height="70"></td>
	</TR>
	<TR class="tpheadstyle" style="TEXT-INDENT: 15px">
		<TD width="15%" style="HEIGHT: 26px" align="right"><span id="divdate"></span>
			<asp:Label id="lblCurrentDate" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="Black"
				Font-Bold="True" Visible="True">lblCurrentDate</asp:Label></TD>
		<TD width="85%" style="PADDING-RIGHT: 5px;HEIGHT: 26px" align="right">
        <asp:Label id="Label4" Font-Bold="True" ForeColor="Black" CssClass="mandatory" runat="server"
				Font-Size="XX-Small">TO Code:</asp:Label>&nbsp;
			<asp:Label id="lblTOCode" Font-Bold="True" ForeColor="#C00000" 
                Font-Size="XX-Small" CssClass="mandatory"
				runat="server"></asp:Label>&nbsp;&nbsp;
			<asp:Label id="Label1" Font-Bold="True" ForeColor="Black" CssClass="mandatory" runat="server"
				Font-Size="XX-Small">Operation:</asp:Label>
			<asp:Label id="lblFormMode" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small" CssClass="mandatory"
				runat="server"></asp:Label>&nbsp;&nbsp; <img src="../Images/user.gif" align="absMiddle">
			<asp:Label id="Label2" ForeColor="Black" CssClass="mandatory" runat="server" Font-Size="XX-Small">User ID:</asp:Label>&nbsp;<asp:Label id="lblUserID" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="#C00000"
				Font-Bold="True"></asp:Label>
			<asp:Label id="Label3" ForeColor="#400000" CssClass="mandatory" runat="server"> -</asp:Label>
			<asp:Label id="lbtnlevel" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small" CssClass="mandatory"
				runat="server"></asp:Label>&nbsp;&nbsp;<img src="../Images/helpicon.jpg" align="absMiddle">&nbsp;<asp:LinkButton ID="lnkhelp" Runat="server" CssClass="lnkButton" CausesValidation="False">Help</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/password.gif" align="absMiddle">&nbsp;<asp:LinkButton ID="lnkPassword" Runat="server" CssClass="lnkButton" CausesValidation="False" onclick="lnkPassword_Click">Change Password</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/logout.gif" align="absMiddle">&nbsp;<asp:LinkButton id="lbtnLogout" CssClass="lnkButton" CausesValidation="False" runat="server" tabIndex="-1" onclick="lbtnLogout_Click">Logout</asp:LinkButton>
		</TD>
	</TR>
	<TR class="footer">
		<td colspan="4">

 <div class="menu">

<ul id="navlist">

<li>
<asp:LinkButton  id="lbtnChequeEntry" tabIndex="-1"   runat="server" CausesValidation="False" onclick="lbtnChequeEntry_Click">Cheque Entry</asp:LinkButton>
 
 <ul><li>
 <asp:LinkButton  id="lblBillStatus" tabIndex="-1"   runat="server" CausesValidation="False"  onclick="lblBillStatus_Click" >Bill Status</asp:LinkButton>
 </li></ul>
 <ul><li>
 <asp:LinkButton  id="lblresetbillstatus" tabIndex="-1"   runat="server" CausesValidation="False"  onclick="lblresetbillstatus_Click" >Reset Bill Status</asp:LinkButton>
 </li></ul>
 
  </li>
  <li>
  <asp:LinkButton  id="lbtnChequePrepare" tabIndex="-1"  runat="server" CausesValidation="False" onclick="lbtnChequePrepare_Click">Cheque Preparation</asp:LinkButton>
  </li>
  

  


<li>
<asp:LinkButton id="lnkpaochequeprt"  runat="server" CausesValidation="False"  tabIndex="-1"  onclick="lnkpaochequeprt_Click">PAO Cheque Printing</asp:LinkButton>
</li>
<li>
<asp:LinkButton id="lnkpaochequenew"  runat="server" CausesValidation="False"  tabIndex="-1"  onclick="lnkpaochequenew_Click">PAO Cheque RBI</asp:LinkButton>
</li>

<li>
<asp:LinkButton id="LnkPaoCheckSBI"  runat="server" CausesValidation="False"  tabIndex="-1"  onclick="LnkPaoCheckSBI_Click">PAO Cheque SBI</asp:LinkButton>
</li>
<li>
          <asp:LinkButton id="lnkChequeprt"  runat="server" CausesValidation="False"    tabIndex="-1"  onclick="lnkChequeprt_Click">DTO/STO Cheque Printing</asp:LinkButton>
</li>


<li>
<asp:LinkButton  id="lbtnChequeCancel" tabIndex="-1" Visible="True"  runat="server" CausesValidation="False" onclick="lbtnChequeCancel_Click">Cheque Cancellation</asp:LinkButton>
<ul>
<li>
<asp:LinkButton id="lnlalterchqname" tabIndex="-1"  runat="server" CausesValidation="False"   onclick="lnlalterchqname_Click">Alter Cheque Name</asp:LinkButton>
</li>

</ul>
</li>

<li>
<asp:LinkButton id="lnlchkreport"  runat="server" CausesValidation="False" tabIndex="-1"  onclick="lnlchkreport_Click">Cheque Report</asp:LinkButton>
<ul>
<li>
<asp:LinkButton  id="InputDateAssign" tabIndex="-1"   runat="server" CausesValidation="False" onclick="InputDateAssign_Click">Adjustment Bill Date Assigning</asp:LinkButton>
</li>

</ul>

</li>

<li>
 <asp:LinkButton ID="ChequeRevalidation" runat="server"  tabIndex="-1"  CausesValidation="False"   onclick="ChequeRevalidation_Click">Cheque Revalidation</asp:LinkButton>
 <ul>
 <li>
  <asp:LinkButton ID="ChequeRealisation" runat="server"  tabIndex="-1"   CausesValidation="False"   onclick="ChequeRealisation_Click">Cheque Realisation</asp:LinkButton>
 </li>
 </ul>
</li>



</ul>


</div>

		</td>
	</TR>
</TABLE>
