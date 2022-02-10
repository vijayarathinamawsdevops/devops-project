<%@ Page language="c#" Codebehind="Users.aspx.cs" AutoEventWireup="True" SmartNavigation="True" Inherits="eKaruvoolam.WebUI.Admin.Users" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Users</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="Users" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center">
						<TABLE id="Table1" class="parabr" cellSpacing="1" cellPadding="1" width="95%" border="0">
							<TR>
								<TD align="center"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">User Creation</asp:label></TD>
							</TR>
							<tr>
								<td>
									<TABLE id="Table11" class="tableleftbgcolor" cellSpacing="2" cellPadding="2" width="100%"
										border="0">
										<TR>
											<TD width="15%">
												<asp:Label id="lblUserID" runat="server" CssClass="mandatory">User ID</asp:Label></TD>
											<TD width="35%">
												<asp:TextBox id="txtUserID" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
												<asp:RequiredFieldValidator id="rfvUserId" runat="server" ErrorMessage="Data required" ControlToValidate="txtUserID"
													CssClass="validatemessage"></asp:RequiredFieldValidator></TD>
											<TD width="15%">
												<asp:Label id="lblUserName" runat="server" CssClass="mandatory">User Name</asp:Label></TD>
											<TD width="35%">
												<asp:TextBox id="txtUserName" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD>
												<asp:Label id="lblPassword" runat="server" CssClass="mandatory">Password</asp:Label></TD>
											<TD>
												<asp:TextBox id="txtPassword" runat="server" CssClass="formlines" MaxLength="50" TextMode="Password" onblur="chkbadchar(this);"></asp:TextBox>
												<asp:RequiredFieldValidator id="rfvPwd" runat="server" ErrorMessage="Data required" ControlToValidate="txtPassword"
													CssClass="validatemessage"></asp:RequiredFieldValidator></TD>
											<TD>
												<asp:Label id="lblSecondPwd" runat="server" CssClass="mandatory">Secondary Password</asp:Label></TD>
											<TD>
												<asp:TextBox id="txtSecondaryPwd" runat="server" CssClass="formlines" MaxLength="50" TextMode="Password" onblur="chkbadchar(this);"></asp:TextBox>
												<asp:RequiredFieldValidator id="rfvSecdPwd" runat="server" ErrorMessage="Data required" ControlToValidate="txtSecondaryPwd"
													CssClass="validatemessage"></asp:RequiredFieldValidator></TD>
										</TR>
										<TR>
											<TD width="15%">
												<asp:Label id="lblUserType" runat="server" CssClass="mandatory">User Type</asp:Label></TD>
											<TD width="35%">
												<asp:DropDownList id="cboUserType" runat="server" CssClass="drptxt" AutoPostBack="true"
                                                    Width="130px" onselectedindexchanged="cboUserType_SelectedIndexChanged"></asp:DropDownList>
                                                 
                                            </TD>
											<TD width="15%">
												<asp:Label id="lblUserStatus" runat="server" CssClass="mandatory">User Status</asp:Label></TD>
											<TD width="35%">
												<asp:DropDownList id="cboUserStatus" runat="server" CssClass="drptxt" Width="100px"></asp:DropDownList></TD>
										</TR>
                                        <tr><td width="15%"> <asp:Label ID="lblTocode" runat="server" CssClass="mandatory">TOCode</asp:Label>
                                            &nbsp;</td>
                                        <td width="35%"><asp:TextBox ID="txtTOCode" runat="server" Enabled="true" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
                                        <td><asp:Label ID="lblBAS" runat="server" CssClass="mandatory" Visible="false">BAS</asp:Label></td>
                                        <td><asp:DropDownList ID="DrpBAS" runat="server" Visible="false"></asp:DropDownList></td>
                                        
                                        </tr> 
                                         <tr><td><asp:Label ID="lblUnit" runat="server" Visible="false" CssClass="mandatory">Unit</asp:Label></td>
                                         <td><asp:DropDownList ID="DrpUnit" runat="server" Visible="false"></asp:DropDownList></td>
                                         </tr>            
                        
										<TR>
											<TD colSpan="4">
												<asp:Label id="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
												<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></TD>
										</TR>
										<TR>
											<TD colspan="4">
												<asp:Button id="btnSave" runat="server" Text="Save" CssClass="formbuttons" Width="90px" onclick="btnSave_Click"></asp:Button>
												<asp:Button id="btnCacel" runat="server" CssClass="formbuttons" Width="90px" Text="Clear" CausesValidation="False" onclick="btnCacel_Click"></asp:Button>
												<asp:Button id="btnSearch" runat="server" CssClass="formbuttons" Text="Search" CausesValidation="False"
													Width="90px" onclick="btnSearch_Click"></asp:Button>
												<asp:Button id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" CausesValidation="False" onclick="btnDel_Click"></asp:Button>
											</TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</TABLE>
					</td>
				</tr>
				<TR>
					<TD align="center" height="100%" valign="top"><br>
						<asp:DataGrid id="dgItems" runat="server" Width="97%" BorderColor="#CCCCCC" BorderStyle="None"
							BorderWidth="1px" BackColor="White" CellPadding="3" AllowPaging="True" CssClass="tableleftbgcolor"
							AutoGenerateColumns="False">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
							<ItemStyle ForeColor="#000066"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
							<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
							<Columns>
								<asp:TemplateColumn HeaderText="UserId">
									<ItemTemplate>
										<asp:Label ID="dlblUserid" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Userid") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="User Name">
									<ItemTemplate>
										<asp:Label ID="dlblUName" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"User Name") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="User Type">
									<ItemTemplate>
										<asp:Label ID="dlblUType" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"User Type") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="User Status">
									<ItemTemplate>
										<asp:Label ID="dlblUStatus" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"User Status") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Action">
									<ItemTemplate>
										<asp:LinkButton ID="lnkedit" Runat="server" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid>
					</TD>
				</TR>
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
