<%@ Control Language="c#" AutoEventWireup="True" Codebehind="CounterMenus.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.CounterMenus" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../Scripts/date-picker.js"></script>
<script language="JavaScript" src="../Scripts/ekvm.js"></script>
<link rel="stylesheet" type="text/css" href="../Styles/menu_style.css" />
<script>
var actualtitle=document.title+" " 
if (document.all||document.getElementById) 
	scroll() 
function scroll() 
{ 
	today = new Date(); 
	sec = today.getSeconds(); 
	hr = today.getHours(); 
	min = today.getMinutes(); 
	sdate = today.getDay() + "-" + today.getMonth() + 1 + "-" + today.getFullYear();												
	if (hr < 12) { timeday = " AM"; } 
	else { timeday = " PM"; } 
	if (hr > 12) hr = hr - 12;
	if (hr <= 9) hr = "0" + hr; 
	if (min <= 9) min = "0" + min; 
	if (sec <= 9) sec = "0" + sec; 
	var clocktext = " - " + hr + ":" + min + ":" + sec + timeday; 
	clocktimer = setTimeout("scroll()", 1000); 
	//document.title = actualtitle + clocktext; 
	//document.getElementById("TopHeader1_lblCurrentDate").value = sdate + clocktext;
} 			
</script>
<table id="MainTable1" cellSpacing="0" cellPadding="0" width="100%" border="0">
	<TR>
		<td background="../Images/bg.gif" colspan="4"><img src="../Images/banner.jpg" width="680" height="70"></td>
	</TR>
	<TR class="tpheadstyle" style="TEXT-INDENT: 15px">
		<TD width="15%" style="HEIGHT: 26px" align="right"><span id="divdate"></span>
			<asp:Label id="lblCurrentDate" runat="server" CssClass="mandatory" Font-Size="XX-Small"
				Font-Bold="True">lblCurrentDate</asp:Label></TD>
		<TD width="85%" style="PADDING-RIGHT: 5px;HEIGHT: 26px" align="right">
			<asp:Label id="Label4" Font-Bold="True" ForeColor="Black" CssClass="mandatory" runat="server"
				Font-Size="XX-Small">TOCode:</asp:Label>&nbsp;
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
	<tr>
		<td colspan="4">
          <div class="menu"> 
          <ul id="navlist">
          <li>
          <asp:LinkButton id="EditTokenEntry"    runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkedittoken_Click">Edit Token Entry</asp:LinkButton>
          </li>
          <li><asp:LinkButton id="LinkButton2" Visible="false"    runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkBillAccept_Click">Bill Accept-Old</asp:LinkButton></li>
         <li><asp:LinkButton id="lnkBillAcceptNew" tabIndex="-1"   runat="server" CausesValidation="False" onclick="lnkBillAcceptNew_Click">Bill Accept-New</asp:LinkButton></li>
         <li><asp:LinkButton id="LnkBillAcceptOnline" tabIndex="-1"   runat="server" 
                 CausesValidation="False" onclick="LnkBillAcceptOnline_Click">Bill Accept Online</asp:LinkButton></li>
         <li><asp:LinkButton id="lnkBillReturn" runat="server" CausesValidation="False"  Visible="true" tabIndex="-1" onclick="lnkBillReturn_Click">Bill Return</asp:LinkButton></li>
          <li><asp:LinkButton id="lnkBillStatus"  runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkBillStatus_Click">Bill Status</asp:LinkButton></li>
         <li><asp:LinkButton id="lnkChequeissue" runat="server" CausesValidation="False" tabIndex="-1" Visible="True" onclick="lnkChequeissue_Click">Cheque Issue</asp:LinkButton></li>
          </ul>
          </div>
			<%--<table id="MainTable" cellSpacing="0" cellPadding="0" width="100%" border="0" class="menuheadstyle">
				<tr>
					<td>
						<table id="LinkTable" cellSpacing="0" cellPadding="1" width="100%" border="0">
							<tr class="formtitle">
								<td width="2%">&nbsp;</td>
								<TD width="20%"><asp:LinkButton id="lnkedittoken" CssClass="mlnkstyle" runat="server" CausesValidation="False" tabIndex="-1" onclick="lnkedittoken_Click">Edit Token Entry</asp:LinkButton></TD>
								<TD width="277" style="WIDTH: 277px"><asp:LinkButton id="lnkBillAccept" Visible="false" CssClass="mlnkstyle" runat="server" CausesValidation="False"
										tabIndex="-1" onclick="lnkBillAccept_Click">Bill Accept-Old</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:LinkButton id="lnkBillAcceptNew" tabIndex="-1" CssClass="mlnkstyle" runat="server" CausesValidation="False" onclick="lnkBillAcceptNew_Click">Bill Accept-New</asp:LinkButton></TD>
								<TD width="155" style="WIDTH: 155px"><asp:LinkButton id="lnkBillReturn" runat="server" CausesValidation="False" CssClass="mlnkstyle"
										Visible="true" tabIndex="-1" onclick="lnkBillReturn_Click">Bill Return</asp:LinkButton></TD>
								<td width="20%"><asp:LinkButton id="lnkBillStatus" CssClass="mlnkstyle" runat="server" CausesValidation="False"
										tabIndex="-1" onclick="lnkBillStatus_Click">Bill Status</asp:LinkButton></td>
								<TD width="20%"><asp:LinkButton id="lnkChequeissue" CssClass="mlnkstyle" runat="server" CausesValidation="False"
										tabIndex="-1" Visible="True" onclick="lnkChequeissue_Click">Cheque Issue</asp:LinkButton></TD>
							</tr>
						</table>
					</td>
				</tr>
			</table>--%>
		</td>
	</tr>
</table>
<br>
