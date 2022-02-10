<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="PensionFa.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.PensionFa" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bank" Src="../UserControls/Bank.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - PensionFa</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
         <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="PensionFa" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
                
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD colSpan="4" style="text-align:left">
									<uc1:BillInfo id="BillInfo1" runat="server"></uc1:BillInfo></TD>
							</TR> <tr><td> 
							<asp:Panel ID="pnlControls" Runat="server">
                            <table class="parabr"> 
								<TR>
									<TD width="15%">
										<asp:Label id="lblPpoNo" runat="server" CssClass="mandatory">PPO No</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtPpoNo" runat="server" CssClass="formlines"  onblur="chkbadchar(this)" MaxLength="15"></asp:TextBox>
										<asp:RequiredFieldValidator id="rfvPpoNo" runat="server" CssClass="validatemessage" ControlToValidate="txtPpoNo"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
									<TD width="15%">
										<asp:Label id="lblName" runat="server" CssClass="mandatory">Name</asp:Label></TD>
									<TD width="35%">
										<asp:TextBox id="txtName" runat="server" CssClass="formlines" onblur="chkbadchar(this)" MaxLength="40"></asp:TextBox>
										<asp:RequiredFieldValidator id="rfvName" runat="server" CssClass="validatemessage" ControlToValidate="txtName"
											Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<uc1:Bank id="Bank1" runat="server"></uc1:Bank></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:Label id="lblFestival" runat="server" CssClass="mandatory">Festival</asp:Label></TD>
									<TD width="35%">
										<asp:DropDownList id="cboFestival" runat="server" CssClass="drptxt"></asp:DropDownList></TD>
									<TD width="15%"></TD>
									<TD width="35%"></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label></TD>
								</TR></table>
							</asp:Panel>
                            </td></tr>
							<TR>
								<TD><asp:Button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="btnSave_Click"></asp:Button></TD>
								<TD><asp:ImageButton id="ImageButton2" runat="server" ImageUrl="../Images/lookup.gif" onclick="ImageButton2_Click"></asp:ImageButton></TD>
								<TD colspan="2">&nbsp;</TD>
							</TR>
							<tr>
								<td colspan="4"><asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></td>
							</tr>
							<TR>
								<TD colSpan="4">
									<asp:PlaceHolder id="PlaceHolder1" runat="server"></asp:PlaceHolder></TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></TD>
							</TR>
						</table>
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
