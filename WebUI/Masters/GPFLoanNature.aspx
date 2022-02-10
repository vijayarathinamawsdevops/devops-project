<%@ Page language="c#" Codebehind="GPFLoanNature.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.GPFLoanNature" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>GPFLoanNature</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/Style1.css" type="text/css" rel="stylesheet">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script> 
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="frmMasterGPFLoanNature" method="post" runat="server">
			<table class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="tblContent" cellSpacing="2" cellPadding="2" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">GPF Loan Nature Details</asp:label></TD>
							</TR>
							<TR>
								<TD align="right"><asp:label id="lblNatureCode" runat="server" CssClass="mandatory">Nature Code</asp:label></TD>
								<TD><asp:textbox id="txtNatureCode" runat="server" Width="150px" CssClass="formlines" MaxLength="1" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="reqDPcode" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtNatureCode">*</asp:requiredfieldvalidator></TD>
							</TR>
							<tr>
								<TD align="right"><asp:label id="lblNatureDesc" runat="server" CssClass="mandatory">Nature Description</asp:label></TD>
								<TD><asp:textbox id="txtNatureDesc" runat="server" Width="230px" CssClass="formlines" MaxLength="25" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="reqDescription" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtNatureDesc">*</asp:requiredfieldvalidator></TD>
							</tr>
							<tr>
								<TD align="right"><asp:label id="lblAdmPercent" runat="server" CssClass="mandatory">Adm Percentage</asp:label></TD>
								<TD><asp:textbox id="txtAdmPervent" runat="server" Width="230px" CssClass="formlines" MaxLength="3" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvAdmPercent" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtAdmPervent">*</asp:requiredfieldvalidator></TD>
							</tr>
							<TR>
								<TD colSpan="2"><asp:Label id='lblMessage' runat='server' CssClass='validationmessage'></asp:Label></TD>
							</TR>
							<TR>
								<TD align="center" colSpan="2">
									<asp:button id="btnSave" runat="server" Width="100px" CssClass="formbuttons" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;
									<asp:button id="btnCancel" runat="server" Width="100px" CssClass="formbuttons" Text="Clear"
										CausesValidation="False" onclick="btnCancel_Click"></asp:button>
								</TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="tblDataGrid" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD><asp:datagrid id="dgrdGPFLoanNature" runat="server" CssClass="tableleftbgcolor" width="100%" BorderColor="#CCCCCC"
										BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" PageSize="10" AllowPaging="True"
										AutoGenerateColumns="False">
										<SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
										<ItemStyle ForeColor='#000066'></ItemStyle>
										<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
										<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Nature Code">
												<ItemTemplate>
													<asp:Label id="dgrdlblNatureCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NatureCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Nature Description">
												<ItemTemplate>
													<asp:Label id="dgrdlblNatureDesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NatureDesc") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Adm Percentage">
												<ItemTemplate>
													<asp:Label id="dgrdlblAdmPercent" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AdmPercentage") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;&nbsp;|&nbsp;
													<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign='Left' ForeColor='#000066' BackColor='White' Mode='NumericPages'></PagerStyle>
									</asp:datagrid></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</table>
		</form>
	</body>
</HTML>
