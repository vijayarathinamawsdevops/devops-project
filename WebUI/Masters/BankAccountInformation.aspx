<%@ Page language="c#" Codebehind="BankAccountInformation.aspx.cs" AutoEventWireup="True" Inherits="WebUI.Masters.BankAccountInformation" smartNavigation="True"%>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bank" Src="../UserControls/Bank.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>BankAccountInformation</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
         
        

			<TABLE style="Z-INDEX: 101; POSITION: absolute; TOP: 8px; LEFT: 8px" id="tblTitle" border="1"
				cellSpacing="1" cellPadding="1" width="100%" class="tableleftbgcolor" align="center">
				<TR>
					<TD align="center">
						<asp:label style="Z-INDEX: 0" id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Bank Account  Details</asp:label></TD>
				</TR>
			</TABLE>
			<TABLE style="Z-INDEX: 102; POSITION: absolute; TOP: 40px; LEFT: 8px" id="tblDetails" border="1"
				cellSpacing="1" cellPadding="1" width="100%" class="tableleftbgcolor" align="center">
				<TR>
					<TD colSpan="2">
						<uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<TR>
					<TD colSpan="2">
						<uc1:GPFNumber id="GPFNumber1" runat="server"></uc1:GPFNumber></TD>
				</TR>
				<TR>
					<TD>
						<asp:label style="Z-INDEX: 0" id="lblEmpName" runat="server" CssClass="mandatory" Width="208px"
							Height="24px">Employee Name (Eg. Raman V)</asp:label></TD>
					<TD>
						<asp:TextBox id="txtEmpName" tabIndex="2" runat="server" CssClass="formlines" Width="195px" MaxLength="40" onblur="chkbadchar(this);"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 105px; HEIGHT: 25px" colSpan="2">
						<uc1:Bank id="Bank1" runat="server"></uc1:Bank></TD>
				</TR>
				<TR>
					<TD>
						<asp:label style="Z-INDEX: 0" id="lblAcctNo" runat="server" CssClass="mandatory">Account Number</asp:label></TD>
					<TD>
						<asp:TextBox id="txtAcctNo" tabIndex="5" runat="server" CssClass="formlines" MaxLength="15" onblur="chkbadchar(this);"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD>
						<asp:label style="Z-INDEX: 0" id="lblDoCode" runat="server" CssClass="mandatory" Width="176px">Drawing Officer Code</asp:label></TD>
					<TD>
						<asp:textbox style="Z-INDEX: 0" id="txtDOCode" tabIndex="2" runat="server" CssClass="formlines"
							Width="50px" MaxLength="5" AutoPostBack="True" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox>
						<asp:dropdownlist style="Z-INDEX: 0" id="cboDrawingOfficer" tabIndex="2" runat="server" CssClass="formlines"
							Width="260px" AutoPostBack="True" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist></TD>
				</TR>
				<TR>
					<TD>
						<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" onclick="btnSave_Click"></asp:Button></TD>
					<TD>
						<asp:Button id="btnSearch" runat="server" CssClass="formbuttons" Text="Search on Gpf Number and Suffix"></asp:Button></TD>
				</TR>
				<TR>
					<TD>
						<asp:label style="Z-INDEX: 0" id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
					<TD>
						<asp:label style="Z-INDEX: 0" id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
				</TR>
				<TR>
					<TD colSpan="2">
						<uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></TD>
				</TR>
				<TR>
					<TD colSpan="2">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
            


		</form>
	</body>
</HTML>
