<%@ Page language="c#" SmartNavigation="True" Codebehind="DPCodeMas.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.DPCodeMas" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - DPCode Master</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
         <script language ="javascript" type = "text/javascript">

             function CheckDPCode() {
                 if ((document.getElementById("cboBillNature").value == "01") && ( (parseInt(document.getElementById("txtdpcode").value.substring(0, 4)) > 6000) || (parseInt(document.getElementById("txtdpcode").value.substring(0, 4)) < 2000)) ) {
                     alert("DPCode Not Valid for PayBill");
                     return false;
                 }
                 else{
                  return true;
                 }                              

             } 
 
    </script>  



	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="DPCodeMas" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center">
						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="1" width="95%" border="0">
							<TR>
								<TD align="center"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">DOCode - DPCode Master Entry</asp:label></TD>
							</TR>
							<tr>
								<td>
									<TABLE id="Table11" cellSpacing="3" cellPadding="2" width="98%" border="0">
										<TR>
											<TD width="15%"><asp:label id="lbldocode" runat="server" CssClass="mandatory">DOCode</asp:label></TD>
											<TD width="35%"><asp:textbox id="txtdocode" runat="server" CssClass="formlines" MaxLength="5" AutoPostBack="True"
													Width="50px" ontextchanged="txtdocode_TextChanged" onblur="chkbadchar(this);"></asp:textbox><asp:requiredfieldvalidator id="rfvtxtDOCode" runat="server" CssClass="validatemessage" ControlToValidate="txtdocode"
													Display="Dynamic" ErrorMessage="Data Required"></asp:requiredfieldvalidator>
												<asp:DropDownList id="cboDrawingOfficer" runat="server" CssClass="formlines" Font-Size="XX-Small"
													AutoPostBack="True" Width="225px" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></TD>
											<TD width="5%"><asp:label id="lbldpcode" runat="server" CssClass="mandatory">DPCode</asp:label></TD>
											<TD><asp:textbox id="txtdpcode" runat="server" CssClass="formlines" MaxLength="15" ontextchanged="txtdpcode_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
										</TR>
                                         
										<TR>
											<TD width="15%"><asp:label id="lblBillType" runat="server" CssClass="mandatory">Bill Type</asp:label></TD>
											<TD width="35%"><asp:dropdownlist id="cboBillNature" runat="server" CssClass="drptxt" AutoPostBack="True" Width="150px" onselectedindexchanged="cboBillNature_SelectedIndexChanged"></asp:dropdownlist><asp:textbox id="txtBillType" runat="server" CssClass="formlines" MaxLength="2" Visible="False" onblur="chkbadchar(this);"></asp:textbox></TD>
											<TD width="15%"><asp:Label ID="lblTOCode" runat="server" CssClass="mandatory">TOCode</asp:Label></TD>
                                            
											<TD width="35%"><asp:TextBox ID="txtTOCode" runat="server" Enabled="false" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
										</TR>
										<TR>
											<TD colSpan="4"><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
										</TR>
										<TR>
											<TD colspan="4">
												<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" 
                                                    Width="90px" onclick="btnSave_Click" onclientclick="return CheckDPCode();"></asp:button>
												<asp:button id="btnSearch" runat="server" CssClass="formbuttons" Text="SearchDOCode" Width="110px" onclick="btnSearch_Click"></asp:button>
                                                <asp:button id="btnDODP" runat="server" CssClass="formbuttons" Text="SearchDP&DOCode" Width="110px" onclick="btnDODP_Click"></asp:button>
												<asp:button id="btnCancel" runat="server" CssClass="formbuttons" Text="Clear" CausesValidation="False"
													Width="90px" onclick="btnCancel_Click"></asp:button>
												<asp:button id="btnDel" runat="server" CssClass="formbuttons" Width="90px" Text="Delete" CausesValidation="False" onclick="btnDel_Click"></asp:button>
											</TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</TABLE>
					</td>
				<tr>
					<td align="center" height="100%" valign="top"><br>
						<asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" AllowPaging="True" PageSize="10"
							CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC"
							width="95%" AutoGenerateColumns="False">
							<SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
							<ItemStyle ForeColor='#000066'></ItemStyle>
							<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
							<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
							<Columns>
								<asp:TemplateColumn HeaderText="DOCode">
									<ItemTemplate>
										<asp:Label ID="dlblDocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOCode") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="DPCode">
									<ItemTemplate>
										<asp:Label ID="dlblDPCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Bill Type">
									<ItemTemplate>
										<asp:Label ID="dlblBillType" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillType") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Action">
									<ItemTemplate>
										<asp:LinkButton ID="lnkedit" Runat="server" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
							<PagerStyle HorizontalAlign='Left' ForeColor='#000066' BackColor='White' Mode='NumericPages'></PagerStyle>
						</asp:datagrid>
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
