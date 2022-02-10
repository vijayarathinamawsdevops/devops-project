<%@ Page language="c#" Codebehind="AdminDefault.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.AdminDefault" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Admin Settings</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="AdminDefault" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<TR>
								<TD style="WIDTH: 144px; HEIGHT: 34px" align="left" colSpan="4">&nbsp;</TD>
							</TR>
							<TR>
								<TD width="25%" style="HEIGHT: 26px" align="left"></TD>
								<TD width="15%">
									<asp:Label id="lblLoggedUsers" runat="server" CssClass="mandatory" Width="135px">Currently Logged Users</asp:Label></TD>
								<TD width="35%" style="HEIGHT: 26px">
									<asp:DropDownList id="cboLoginUsers" runat="server" CssClass="drptxt"></asp:DropDownList>
									<asp:Button id="btnResetUser" runat="server" CssClass="formbuttons" Text="Reset User" Width="100px" onclick="btnResetUser_Click"></asp:Button></TD>
								<TD width="25%" style="HEIGHT: 26px">&nbsp;</TD>
							</TR>
							<TR>
								<TD style="WIDTH: 144px" align="left"></TD>
								<TD style="WIDTH: 106px"></TD>
								<TD></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 144px; HEIGHT: 31px" align="left"></TD>
								<TD style="WIDTH: 106px; HEIGHT: 31px">
									<asp:Label id="Label1" runat="server" CssClass="mandatory" Width="136px">Password Generation</asp:Label></TD>
								<TD style="HEIGHT: 31px">
									<asp:Button id="btnSecPwd" runat="server" CssClass="formbuttons" Text="Generate Secondary Password"
										Width="240px" onclick="btnSecPwd_Click"></asp:Button></TD>
								<TD style="HEIGHT: 31px"></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 144px"></TD>
								<TD style="WIDTH: 106px"></TD>
								<TD></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 144px" align="left"></TD>
								<TD style="WIDTH: 106px">
									<asp:Label id="Label2" runat="server" CssClass="mandatory">MasterForm Entry</asp:Label></TD>
								<TD>
									<asp:DropDownList id="cboMasters" runat="server" CssClass="drptxt" Width="200px"></asp:DropDownList>
									<asp:Button id="btnMasterFormGo" runat="server" CssClass="formbuttons" Text="Go" Width="35px" onclick="btnMasterFormGo_Click"></asp:Button></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 144px"></TD>
								<TD style="WIDTH: 106px">
									<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label></TD>
								<TD></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD colSpan="4" align="center"><br>
									<asp:DataGrid id="dgUsersList" Width="70%" runat="server" CssClass="tableleftbgcolor" BorderColor="#CCCCCC"
										BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:DataGrid></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
