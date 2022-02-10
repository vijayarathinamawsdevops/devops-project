<%@ Page language="c#" Codebehind="QueryDefault.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Query.QueryDefault" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>QueryDefault</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="QueryDefault" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
					<TD>
						<uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<tr>
					<td align="middle" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<TR>
								<TD style="WIDTH: 144px; HEIGHT: 34px" align="left" colSpan="4">&nbsp;</TD>
							</TR>
							<TR>
							</TR>
							<TR>
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
									<asp:Label id="txtQueryType" runat="server" CssClass="mandatory">Select Query</asp:Label></TD>
								<TD>
									<asp:DropDownList id="cboMasters" runat="server" CssClass="drptxt" Width="200px"></asp:DropDownList>
									<asp:Button id="btnMasterFormGo" runat="server" CssClass="formbuttons" Text="Go" Width="35px"></asp:Button></TD>
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
								<TD colSpan="4" align="middle"><br>
								</TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<uc1:ErrorLabel id="ErrorLabel1" runat="server" Visible="False"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
