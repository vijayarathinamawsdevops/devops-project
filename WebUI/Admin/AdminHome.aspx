<%@ Page language="c#" Codebehind="AdminHome.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.AdminHome" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD runat="server">
		<title>eKaruvoolam - Admin Settingse</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>

        <script>

            function closeSession() {
                //capturing ALT + F4
                if (event.altKey == true && event.keyCode == 0) {
                    //alert("closed1")
                    document.location.href = "SessionEndFile.asp";
                    window.close();
                }

                Xwidth = window.document.body.offsetWidth - window.event.clientX
                YHeight = window.event.clientY
                if (Xwidth <= 30 && YHeight < 0) {
                    // alert("closed2")
                    document.location.href = "SessionEndFile.asp";
                    window.close();

                }

            }
            window.onbeforeunload = closeSession

            //or we can use body(unload) method

</script>

	    <style type="text/css">
            .style2
            {
                height: 17px;
            }
        </style>

	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0" onunload="closeSession()">
		<form id="frmAdmin" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td colspan="2" style="PADDING-LEFT:20px" class="rptHead"><img src="../Images/settings.gif" align="absMiddle" width="50px">Administrator 
						Settings</td>
				</tr>
				<tr>
					<td width="7%">&nbsp;</td>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="4" width="95%" class="menutree">
							<tr>
								<td class="rptSubHead" width="50%">Drawing Officer Details</td>
								<td class="rptSubHead">User Settings</td>
							</tr>
							<tr>
								<td>
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/DdoMas.aspx" class="linktxt">Drawing 
													Officer Creation</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/DoSignature.aspx" class="linktxt">Drawing 
													Officer Signature</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/DPCodeMas.aspx" class="linktxt">DOCode 
													- DPCode Details</a></td>
										</tr>
										<%--<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/SerialNumber.aspx" class="linktxt">Generate 
													Serial Number</a></td>
										</tr>--%>
									</table>
								</td>
								<td valign="top">
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/Users.aspx" class="linktxt">User 
													Creation</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="ResetPassword.aspx" class="linktxt">Reset 
													User Password/Secondary Password</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="GenerateSecPassword.aspx?Mode=Report" class="linktxt">Secondary 
													Password List</a></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="rptSubHead">Control Settings</td>
								<td class="rptSubHead">Budget Allocation Details</td>
							</tr>
							<tr>
								<td>
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/ControlMas.aspx" class="linktxt">Office 
													Control Settings</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a 
                                                    href="../Masters/ChallanSetting.aspx" class="linktxt">General Challan 
                                                Setting</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a 
                                                    href="../Masters/ECSDateAssign.aspx" class="linktxt">ECS Batch Assign</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<A class="linktxt" href="AMMainForm.aspx">AM 
													Module</A></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<A class="linktxt" href="../Admin/CounterstagePrint.aspx">Counter 
													Stage List</A></td>
										</tr>
										</table>
								</td>
								<td valign="top">
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td class="style2"><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/DoAllotmentMas.aspx" class="linktxt">Budget 
													Allotment Quartely Wise</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Admin/BudgetBalance.aspx" class="linktxt">View 
													Budget Balance</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<A class="linktxt" href="../Admin/AdminCounter.aspx">Manage 
													Token Entry</A></td>
										</tr>
										<TR>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<A class="linktxt" 
                                                    href="../Masters/ManageFin_Year.aspx">Manage 
													Financial Year </A></td>
										</TR>
										<%--<TR>
											<TD><IMG src="../Images/bullet1.gif" align="middle">&nbsp;<A class="linktxt" href="">Input 
													Date Assigning</A>
											</TD>
										</TR>--%>
										<TR>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<A class="linktxt" 
                                                    href="../Masters/ManageRBI.aspx">Manage 
													RBI Control</A></td>
										</TR>
										</table>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="rptSubHead">Master Entry Details</td>
							</tr>
							<tr>
								<td valign="top">
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/Checklist.aspx" class="linktxt">Audit 
													Bill Objection List</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/BudSub.aspx" class="linktxt">BudSub 
													Entry (11 digit)</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/Bank.aspx" class="linktxt">Bank 
													Details</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/Branch.aspx" class="linktxt">Branch 
													Details</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/depositmaster.aspx" class="linktxt">Deposit 
													Master</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/Dept.aspx" class="linktxt">Department 
													Creation</a></td>
										</tr>
										<%--<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Super/refdepp.aspx" class="linktxt">Payment 
													Major Head</a></td>
										</tr>--%>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/refp2.aspx" class="linktxt">Pay 
													Breakup Master</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/gpfloannature.aspx" class="linktxt">GPF 
													Loan(%) Master</a></td>
										</tr>
										<tr>
											<td><img src="../images/bullet1.gif" align="middle">&nbsp;<a 
                                                href="../Admin/Indmas.aspx" class="linktxt">IndMas Details</a></td>
										</tr>
                                        <tr>
                                        <td><img src="../images/bullet1.gif" align="middle" />&nbsp;<a href="../Twenntyfour/TweentyFourG.aspx" class="linktxt">
                                        IT Header</a></td>
                                        </tr>
                                        <tr>
                                        <td><img src="../images/bullet1.gif" align="middle">&nbsp;<a 
                                                href="../Masters/BillAuditSectionMas.aspx" class="linktxt">Bill Audit 
                                            Section</a></td>
                                        </tr>
                                          
                                        <tr>
                                        <td><img src="../images/bullet1.gif" align="middle">&nbsp;<a 
                                                href="ManageUsers.aspx" class="linktxt">Manage User Locks</a> </td>
                                        </tr>
                                          
                                        <tr>
                                        <td><img src="../images/bullet1.gif" align="middle">&nbsp;<a 
                                                href="FillOpeningBalance.aspx" class="linktxt">Fill Open Balance</a> </td>
                                        </tr>
                                          
                                        <tr>
                                        <td>&nbsp;</td>
                                        </tr>
                                          
                                        <tr>
                                        <td>&nbsp;</td>
                                         
                                        </tr>
                                          
									</table>
								</td>
								<td valign="top">
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/CommonDPCodeDetails.aspx" class="linktxt">Common 
													DPCode Master</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/samhcode.aspx" class="linktxt">Sub 
													Account Master</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/BuildingRentMas.aspx" class="linktxt">Building 
													Rent Details</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/ElectricityMas.aspx" class="linktxt">Electricity 
													Details</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/Festival.aspx" class="linktxt">Festival 
													Details</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/WaterMas.aspx" class="linktxt">Water 
													Details</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/TelephoneMas.aspx" class="linktxt">Telephone 
													Details</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/ReceiptMajorHead.aspx" class="linktxt">Receipt 
													Major Head</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/Suffix.aspx" class="linktxt">Suffix 
													Master</a></td>

										</tr>
                                         
                                        <tr><td><img src="../images/bullet1.gif" align="middle">&nbsp;<a 
                                                href="../Masters/UnitMaster.aspx" class="linktxt">Unit Master</a></td></tr>
                                        <tr><td><img src="../images/bullet1.gif" align="middle">&nbsp;<a 
                                                href="../Masters/TNTC70AMaster.aspx" class="linktxt">TNTC70A</a></td></tr> 
                                        <tr><td><img src="../images/bullet1.gif" align="middle">&nbsp;<%--<a href="../Masters/Encryption.aspx" class="linktxt">Encrypt Connection String</a>--%><a 
                                                href="DataBaseBackUp.aspx" class="linktxt">Manage DataBase BackUp</a> </td></tr> 
                                        <tr><td><img src="../images/bullet1.gif" align="middle" style="margin-top: 0px">&nbsp;<a 
                                                href="../Masters/EcsSettDateChange.aspx" class="linktxt">Change ECS 
                                            Settlement Date</a> </td></tr>
                                        <tr><td><img src="../images/bullet1.gif" align="middle" style="margin-top: 0px">&nbsp;<a 
                                                href="DuplicateEmployeeAcnoDetails.aspx" class="linktxt">Duplicate Employee ACNo Details</a> </td></tr>  
                                        <%--<tr><td><img src="../images/bullet1.gif" align="middle">&nbsp;<a 
                                                href="../Masters/ECSBatchRemove.aspx" class="linktxt">Ecs Batch Remove</a>   </td></tr>  --%>
									</table>
								</td>
							</tr>
						</table>
                        
					</td>
				</tr>
				<tr>
					<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td colspan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
