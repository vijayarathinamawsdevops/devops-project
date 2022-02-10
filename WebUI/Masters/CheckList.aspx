<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="CheckList.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.CheckList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Audit Check Lists</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="CheckList" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Audit Bill Objection Check List Entry</asp:label></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblBilltype" runat="server" CssClass="mandatory">Billtype</asp:label></TD>
								<TD width="35%"><asp:dropdownlist id="cboBillType" runat="server" CssClass="drptxt"></asp:dropdownlist><asp:HiddenField ID="hidval" runat="server" /></TD>
								<TD width="15%"></TD>
								<TD width="35%"></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDescr" runat="server" CssClass="mandatory">Descr</asp:label></TD>
								<TD colSpan="3"><asp:textbox id="txtDescr" runat="server" CssClass="formlines" MaxLength="150" Width="375px" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDescr1" runat="server" CssClass="mandatory">Descr1</asp:label></TD>
								<TD colSpan="3"><asp:textbox id="txtDescr1" runat="server" CssClass="formlines" MaxLength="150" Width="375px" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDescr2" runat="server" CssClass="mandatory">Descr2</asp:label></TD>
								<TD colSpan="3"><asp:textbox id="txtDescr2" runat="server" CssClass="formlines" MaxLength="150" Width="375px" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDescr3" runat="server" CssClass="mandatory">Descr3</asp:label></TD>
								<TD colSpan="3"><asp:textbox id="txtDescr3" runat="server" CssClass="formlines" MaxLength="150" Width="375px" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblRules" runat="server" CssClass="mandatory">Rules</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtRules" runat="server" CssClass="formlines" MaxLength="50" onblur="chkbadchar(this);"></asp:textbox>
                                 

                                </TD>
								<TD width="15%"><asp:label id="lbldisplay" runat="server" CssClass="mandatory">Display</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtdisplay" runat="server" CssClass="formlines" MaxLength="1" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblOrders" runat="server" CssClass="mandatory">Orders</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtOrders" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"><asp:label id="lblStage" runat="server" CssClass="mandatory">Stage</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtStage" runat="server" CssClass="formlines" MaxLength="1" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;<asp:button id="btnCancel" runat="server" CssClass="formbuttons" Width="90px" Text="Cancel"
										CausesValidation="False" onclick="btnCancel_Click"></asp:button>&nbsp;<asp:button id="btnSearch" runat="server" CssClass="formbuttons" Width="90px" Text="Search" onclick="btnSearch_Click"></asp:button>&nbsp;<asp:button 
                                        id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" 
                                        onclick="btnDel_Click"></asp:button></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<TR>
					<TD align="center"> 
						<asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" DataKeyField="ID" AllowPaging="True" PageSize="10"
							CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" AutoGenerateColumns="false"
							Width="98%" onselectedindexchanged="dgItems_SelectedIndexChanged"  >
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
							<ItemStyle ForeColor="#000066"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
							<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
							<Columns>

                            <asp:TemplateColumn HeaderText="Billtype">
												<ItemTemplate>
													<asp:Label id="dglblBilltype" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Billtype") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description">
												<ItemTemplate>
													<asp:Label id="dglblDescr" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Descr") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description1">
												<ItemTemplate>
													<asp:Label id="dglblDescr1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Descr1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description2">
												<ItemTemplate>
													<asp:Label id="dglblDescr2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Descr2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText=" Description3 ">
												<ItemTemplate>
													<asp:Label id="dglblDescr3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Descr3") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Rules">
												<ItemTemplate>
													<asp:Label id="dglblRules" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Rules") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Orders">
												<ItemTemplate>
													<asp:Label id="dglblOrders" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Orders") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="display">
												<ItemTemplate>
													<asp:Label id="dglbldisplay" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"display") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText=" Stage ">
												<ItemTemplate>
													<asp:Label id="dglblStage" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Stage") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											 

								<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></TD>
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
