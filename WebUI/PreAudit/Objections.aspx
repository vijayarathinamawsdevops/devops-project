<%@ Register TagPrefix="uc2" TagName="PersonalDetails" Src="../UserControls/PersonalDetails.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="volume" Src="../UserControls/volume.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="Objections.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.PreAudit.Objections" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Objections</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/PreAudit.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Objections" method="post" runat="server">
			<table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top" height="100%">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<tr>
								<td>
									<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></td>
							</tr>
							<TR>
								<TD>
									<uc1:volume id="Volume1" runat="server"></uc1:volume></TD>
							</TR>
							<tr>
								<td>
									<uc2:PersonalDetails id="PersonalDetails1" runat="server"></uc2:PersonalDetails></td>
							</tr>
							<tr>
								<td align="center">
									<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
										<tr class="formtitle">
											<td align="center" colSpan="8">Objections</td>
										</tr>
										<tr>
											<td><asp:label id="lblEmpIdNo" CssClass="mandatory" Runat="server">EmpIdNo</asp:label></td>
											<td><asp:textbox id="txtEmpIdNo" onblur="chkbadchar(this);" CssClass="formlines" Runat="server"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ControlToValidate="txtEMPIDNo"
													ErrorMessage="Enter EmpIdNo" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblSuffix" runat="server" CssClass="mandatory">Suffix</asp:label></td>
											<td><asp:TextBox id="txtEMPSuffix" onblur="chkbadchar(this);" runat="server" CssClass="formlines"></asp:TextBox><asp:requiredfieldvalidator id="RfdSuffix2" runat="server" CssClass="validatemessage" ErrorMessage="Enter EmpId Suffix"
													ControlToValidate="txtEMPSuffix" Visible="False"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></td>
											<td><asp:label id="lblObjectionNo" CssClass="mandatory" Runat="server">Objection No</asp:label></td>
											<td><asp:textbox id="txtObjectionNo" CssClass="formlines" onblur="chkbadchar(this);" Runat="server" Enabled="False"></asp:textbox></td>
											<td><asp:label id="lblDescription" CssClass="mandatory" Runat="server">Description</asp:label></td>
											<td><asp:textbox id="txtDescription" CssClass="formlines" Runat="server" TextMode="MultiLine" onblur="chkbadchar(this);"></asp:textbox></td>
										</tr>
										<tr>
											<td align="right" colSpan="8"><asp:button id="btnAddNew" CssClass="formbuttons" Runat="server" Text="Add New" CausesValidation="False" onclick="btnAddNew_Click"></asp:button><asp:button id="btnClear" CssClass="formbuttons" Runat="server" Text="Clear" CausesValidation="False" onclick="btnClear_Click"></asp:button></td>
										</tr>
										<tr>
											<td align="center" colSpan="8"><asp:datagrid id="dgrdObjections" Width="75%" Runat="server" GridLines="Horizontal" CellPadding="3"
													BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#E7E7FF" AutoGenerateColumns="False" PageSize="5"
													AllowPaging="True" PagerStyle-Mode="NumericPages">
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#99CCFF"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#ECF5FF"></AlternatingItemStyle>
													<ItemStyle ForeColor="#4A3C8C" BackColor="White"></ItemStyle>
													<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6699CC"></HeaderStyle>
													<Columns>
														<asp:TemplateColumn HeaderText="ObjectionNo">
															<ItemTemplate>
																<asp:Label id=lbldObjectionNo Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ObjectionNo")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Description">
															<ItemTemplate>
																<asp:Label id=lbldDescription Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Descript")%>'>
																</asp:Label>
															</ItemTemplate>
														</asp:TemplateColumn>
														<asp:TemplateColumn HeaderText="Actions">
															<ItemTemplate>
																<asp:LinkButton id="lnkEdit" Runat="server" CausesValidation="False" CommandName="Edit">Edit</asp:LinkButton>&nbsp;|&nbsp;
																<asp:LinkButton id="lnkDelete" Runat="server" CausesValidation="False" CommandName="Delete">Delete</asp:LinkButton>
															</ItemTemplate>
														</asp:TemplateColumn>
													</Columns>
													<PagerStyle Mode="NumericPages"></PagerStyle>
												</asp:datagrid></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><asp:ValidationSummary ID="valid" Runat="server" ShowMessageBox="True" ShowSummary="True" DisplayMode="BulletList"></asp:ValidationSummary></td>
				</tr>
				<tr>
					<td>
						<uc2:ErrorLabel id="ErrorLabel1" runat="server"></uc2:ErrorLabel></td>
				</tr>
				<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
