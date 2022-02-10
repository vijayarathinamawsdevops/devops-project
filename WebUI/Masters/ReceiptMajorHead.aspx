<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="ReceiptMajorHead.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.ReceiptMajorHead" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Receipt Major Head</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="frmReceiptMajorHead" method="post" runat="server">
			<table class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="tblContent" cellSpacing="2" cellPadding="2" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Receipt Major Head Details</asp:label></TD>
							</TR>
							<TR>
								<TD align="right"><asp:label id="lblReceiptBillType" runat="server" CssClass="mandatory">Bill Type</asp:label></TD>
								<TD><asp:textbox id="txtReceiptBillType" runat="server" Width="60px" CssClass="formlines" MaxLength="5" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvtxtDOCode" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtReceiptBillType">*</asp:requiredfieldvalidator>&nbsp;<asp:label id="lblBilltypehelp" runat="server" CssClass="mandatory">(R-Receipt X-Other Receipts F-Funds)</asp:label></TD>
								<TD align="right"><asp:label id="lblReceiptMajorHead" runat="server" CssClass="mandatory">Receipt Major Head</asp:label></TD>
								<TD><asp:textbox id="txtReceiptMajorHead" runat="server" Width="60px" CssClass="formlines" MaxLength="4" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="reqMajorHead" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtReceiptMajorHead">*</asp:requiredfieldvalidator></TD>
							</TR>
							<tr>
								<TD align="right"><asp:label id="lblDescr1" runat="server" CssClass="mandatory">Description 1</asp:label></TD>
								<TD><asp:textbox id="txtDescription1" runat="server" Width="230px" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="reqDescription" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
										ControlToValidate="txtDescription1">*</asp:requiredfieldvalidator></TD>
								<TD align="right"><asp:label id="lblDescr2" runat="server" CssClass="mandatory">Description 2</asp:label></TD>
								<TD><asp:textbox id="txtDescription2" runat="server" Width="230px" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></TD>
							</tr>
							<tr>
								<TD align="right"><asp:label id="lblDescr3" runat="server" CssClass="mandatory">Description 3</asp:label></TD>
								<TD><asp:textbox id="txtDescription3" runat="server" Width="230px" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD align="right"><asp:label id="lblDescr4" runat="server" CssClass="mandatory">Description 4</asp:label></TD>
								<TD><asp:textbox id="txtDescription4" runat="server" Width="230px" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox></TD>
							</tr>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
							<TR>
								<TD align="center" colSpan="4"><asp:button id="btnSave" runat="server" Width="100px" CssClass="formbuttons" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;<asp:button id="btnCancel" runat="server" Width="100px" CssClass="formbuttons" Text="Clear"
										CausesValidation="False" onclick="btnCancel_Click"></asp:button>
								</TD>
							</TR>
						</TABLE>
						<br>
						<TABLE id="tblDataGrid" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD><asp:datagrid id="dgrdReceiptMajorHead" runat="server" CssClass="tableleftbgcolor" width="100%"
										BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3"
										PageSize="10" AllowPaging="True" AutoGenerateColumns="False" DataKeyField="MHCODE">
										<SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
										<ItemStyle ForeColor='#000066'></ItemStyle>
										<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
										<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Bill Type">
												<ItemTemplate>
													<asp:Label id="dgrdlblBillType" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BILLTYPE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Major Head">
												<ItemTemplate>
													<asp:Label id="dgrdlblMajorHead" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"MHCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description">
												<ItemTemplate>
													<asp:Label id="dgrdlblDescription1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description2" Visible="False">
												<ItemTemplate>
													<asp:Label id="dgrdlblDescription2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description3" Visible="False">
												<ItemTemplate>
													<asp:Label id="dgrdlblDescription3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC3") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description4" Visible="False">
												<ItemTemplate>
													<asp:Label id="dgrdlblDescription4" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC4") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;|&nbsp;
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
