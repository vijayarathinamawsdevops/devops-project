<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="DOSignature.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.DOSignature" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - DOSignature</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="DOSignature" method="post" encType="multipart/form-data" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table1" cellSpacing="0" cellPadding="3" width="80%" border="0">
							<TR>
								<TD colspan="4" align="center"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Drawing Officer Signature Entry</asp:label></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 122px"></TD>
								<TD style="WIDTH: 289px" align="right"><asp:label id="lblDOCode" runat="server" CssClass="mandatory">DO Code</asp:label></TD>
								<TD style="WIDTH: 719px"><asp:textbox id="txtDOCode" runat="server" CssClass="formlines" AutoPostBack="True" MaxLength="5" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:dropdownlist id="cboDrawingOfficer" runat="server" CssClass="formlines" AutoPostBack="True" Width="250px" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist></TD>
								<TD style="WIDTH: 16px">&nbsp;&nbsp;
								</TD>
							</TR>
							<TR>
								<TD style="WIDTH: 122px"></TD>
								<TD style="WIDTH: 289px" align="right"><asp:label id="lblImage" runat="server" CssClass="mandatory" Width="45px">Image&nbsp;&nbsp;&nbsp;&nbsp;</asp:label></TD>
								<TD style="WIDTH: 719px"><INPUT id="SignImage" Class="formbuttons" size="20" type="file" runat="server"></TD>
								<TD style="WIDTH: 16px"></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 122px"></TD>
								<TD style="WIDTH: 289px"></TD>
								<TD style="WIDTH: 719px"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" onclick="btnDel_Click"></asp:button><asp:label id="lblMessage" runat="server" CssClass="validatemessage1"></asp:label></TD>
								<TD style="WIDTH: 16px"></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 122px"></TD>
								<TD style="WIDTH: 289px"></TD>
								<TD style="WIDTH: 719px"><asp:label id="lblMessage1" runat="server" CssClass="validatemessage"></asp:label></TD>
								<TD style="WIDTH: 16px"></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
