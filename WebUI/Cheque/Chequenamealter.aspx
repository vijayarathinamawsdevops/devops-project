<%@ Register TagPrefix="uc1" TagName="ChequeMenus" Src="../UserControls/ChequeMenus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="Chequenamealter.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Cheque.Chequenamealter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Cheque Cancellation</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body id="Cheque_alterchqname" MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
    

		<form id="chequenamealter" method="post" runat="server">
         
        
  
			<TABLE id="Table1" width="100%" border="0" class="tableleftbgcolor" cellpadding="0" cellspacing="0"
				height="100%">
				<TR>
					<TD><uc1:ChequeMenus id="ChequeMenus1" runat="server"></uc1:ChequeMenus></TD>
				</TR>
				<TR>
					<td valign="top" height="100%"><br>
						<br>
						<table width="70%" cellpadding="4" cellspacing="1" border="0" align="center" class="parabr">
							<tr>
								<td colspan="2" align="center" class="formtitle"><asp:Label id="frmtitle" runat="server" CssClass="formtitle">Updation of Cheque Name</asp:Label></td>
							</tr>
							<TR>
								<TD align="right">
									<asp:Label id="lblCheque" runat="server" Width="160px" CssClass="mandatory">Enter Cheque Number</asp:Label></TD>
								<td>
									<asp:TextBox id="txtChequeNo" runat="server" CssClass="formlines" Width="149px" onblur="chkbadchar(this);"></asp:TextBox>&nbsp;
									<asp:imagebutton id="ibtnchqGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnchqGo_Click"></asp:imagebutton></td>
							</TR>
							<TR>
								<TD align="right">
									<asp:Label id="lblchequename" runat="server" Width="159px" CssClass="mandatory"> Existing Name</asp:Label></TD>
								<td>
									<asp:TextBox id="txtOChequename" runat="server" CssClass="formlines" Enabled="False" onblur="chkbadchar(this);"></asp:TextBox></td>
							</TR>
							<TR>
								<TD align="right">
									<asp:Label id="Label1" runat="server" Width="158px" CssClass="mandatory">Enter New Name</asp:Label></TD>
								<td>
									<asp:TextBox id="txtNChequename" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
							</TR>
							<TR>
								<TD colspan="2" align="center" vAlign="middle">
									<asp:Button id="btnupdate" runat="server" Width="113px" CssClass="formbuttons" Text="Update" onclick="btnupdate_Click"></asp:Button>
									<asp:Button id="btnclear" runat="server" CssClass="formbuttons" Width="113px" Text="Clear" onclick="btnclear_Click"></asp:Button>
								</TD>
							</TR>
							<tr>
								<td colspan="2"><asp:Label id="lblMessage" runat="server" Width="335px" CssClass="validatemessage"></asp:Label></td>
							</tr>
						</table>
					</td>
				</TR>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
             
   
		</form>
	</body>
</HTML>
