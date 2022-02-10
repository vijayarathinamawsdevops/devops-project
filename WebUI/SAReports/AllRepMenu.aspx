<%@ Page language="c#" Codebehind="AllRepMenu.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.SAReports.AllRepMenu" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Account-Disbursement Report</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="frmAcct" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR valign="top">
					<TD><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr valign="top">
					<td style="PADDING-LEFT:20px" class="rptHead"><img src="../Images/report.gif" align="absMiddle">Select 
						Sub Account Reports for SANO :
						<asp:Label ID="lblsano" Runat="server"></asp:Label></td>
				</tr>
				<tr valign="top">
					<td>
						<table class="tableleftbgcolor" align="center" id="T1" cellSpacing="0" cellPadding="0"
							width="80%" border="1">
							<tr>
								<td>
									<asp:CheckBox id="ChkAlistG" runat="server" Text="AList Gazetted" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkAleafP" runat="server" Text="ALeaf Plan" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkLoan" runat="server" Text="Loan" Checked="True"></asp:CheckBox>
								</td>
							</tr>
							<tr>
								<td>
									<asp:CheckBox id="ChkAlistNG" runat="server" Text="AList Non Gaz." Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkAleafNP" runat="server" Text="ALeaf Non Plan" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkAcct" runat="server" Text="Account" Checked="True"></asp:CheckBox>
								</td>
							</tr>
							<tr>
								<td>
									<asp:CheckBox id="ChkBlistG" runat="server" Text="BList Gazetted" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkBleafP" runat="server" Text="BLeaf Plan" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="Chkrecon" runat="server" Text="Reconcilation" Checked="True"></asp:CheckBox>
								</td>
							</tr>
							<tr>
								<td>
									<asp:CheckBox id="ChkBlistNG" runat="server" Text="BList Non Gaz." Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkBleafNP" runat="server" Text="BLeaf Non Plan" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkplanNPlan" runat="server" Text="Plan / Non Plan" Checked="True" oncheckedchanged="ChkplanNPlan_CheckedChanged"></asp:CheckBox>
								</td>
							</tr>
							<tr>
								<td>
									<asp:CheckBox id="Chkclist" runat="server" Text="CList " Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkCleaf" runat="server" Text="CLeaf " Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="Chkcredit" runat="server" Text="Credit List" Checked="True"></asp:CheckBox>
								</td>
							</tr>
							<tr>
								<td>
									<asp:CheckBox id="ChkDlist" runat="server" Text="DList " Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkDLeaf" runat="server" Text="DLeaf Plan" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="Chkrecpt1" runat="server" Text="Receipt 1" Checked="True"></asp:CheckBox>
								</td>
							</tr>
							<tr>
								<td>
									<asp:CheckBox id="ChkMHAbst" runat="server" Text="MH Abstract" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkDLeafNP" runat="server" Text="DLeaf Non Plan" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="Chkrecpt2" runat="server" Text="Receipt 2" Checked="True"></asp:CheckBox>
								</td>
							</tr>
							<tr>
								<td>
									<asp:CheckBox id="ChkConAbs" runat="server" Text="Con. Abstract" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="ChkCR" runat="server" Text="C. R" Checked="True"></asp:CheckBox>
								</td>
								<td>
									<asp:CheckBox id="Chkreceiptsch" runat="server" Text="Receipt Schedule" Checked="True"></asp:CheckBox>
								</td>
							</tr>
							<tr>
								<td>
									<asp:CheckBox id="Chk27D" runat="server" Text="Blist-27D" Checked="True"></asp:CheckBox>
								</td>
								<td></td>
								<td></td>
							</tr>
							<TR>
								<TD colspan="3" align="center"><asp:Button id='btnSubmit' runat='server' Text=' Generate Report' CssClass='formbuttons' Width="100px" onclick="btnSubmit_Click"></asp:Button></TD>
							</TR>
						</table>
						<P>&nbsp;</P>
						<P align="center">
							<asp:Label id="lblmessage" runat="server" Width="464px" ForeColor="DarkGreen" Font-Bold="True"
								Font-Names="Tahoma" Font-Size="Small"></asp:Label></P>
					</td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
