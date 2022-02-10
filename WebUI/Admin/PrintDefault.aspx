<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="PrintDefault.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.PrintDefault" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>eKaruvoolam - Print Objection</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
  </HEAD>
	<body background="../Images/gray_pinstripe_bkg.gif" leftmargin="0" topmargin="0">
		<form id="PrintDefault" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD width="15%" colSpan="4"><uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table class="tableleftbgcolor" id="table2" cellSpacing="2" cellPadding="3" width="100%"
							border="0">
							<tr>
								<td class="mandatory" align="right">Date</td>
								<td>
									<asp:textbox id="txtTransDate" runat="server" CssClass="formlines" MaxLength="10" AutoPostBack="True" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('PrintDefault.txtTransDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>&nbsp;&nbsp;<asp:imagebutton id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnTokenGo_Click"></asp:imagebutton>
									<asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtTransDate" ErrorMessage="dd/mm/yyyy"></asp:regularexpressionvalidator><asp:requiredfieldvalidator id="rfvBillDate" runat="server" CssClass="validatemessage" ControlToValidate="txtTransDate"
										ErrorMessage="Data required" Display="Dynamic"></asp:requiredfieldvalidator>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<asp:datagrid id="dgrdTokens" ShowFooter="True" AutoGenerateColumns="False" runat="server" BorderColor="#CCCCCC"
										BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" Width="90%" CssClass="tableleftbgcolor">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Token Number" ItemStyle-Width="15%">
												<ItemTemplate>
													<asp:Label id="lbldTokenNo" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>' Runat="server">
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DO Code" ItemStyle-Width="10%">
												<ItemTemplate>
													<asp:Label id="lbldDOCode" Text='<%# DataBinder.Eval(Container.DataItem,"DOCode") %>' Runat="server">
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Bill Type" ItemStyle-Width="35%">
												<ItemTemplate>
													<asp:Label id="lbldBillType" Text='<%# DataBinder.Eval(Container.DataItem,"BillType") %>' Runat="server">
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Bill Amount" ItemStyle-Width="15%">
												<ItemTemplate>
													<asp:Label id="lbldAmount" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>' Runat="server">
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action" ItemStyle-Width="45%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkObjection" Runat="server" CommandName="Print" CausesValidation="False">Show Audit Objections</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:datagrid>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<asp:Panel ID="pnlPrint" Runat="server" Visible="False">
            <TABLE class=tableleftbgcolor cellSpacing=2 cellPadding=3 
            width="100%" border=0>
              <TR>
                <TD>
<asp:Panel id=txtControls Visible="False" Runat="server">
<asp:textbox id=txtTokenNo runat="server" CssClass="formlines" Enabled="False" MaxLength="19"></asp:textbox>
<asp:textbox id=txtBillType runat="server" CssClass="formlines" Enabled="False" MaxLength="6"></asp:textbox>
<asp:textbox id=txtDOCode runat="server" AutoPostBack="True" CssClass="formlines" Width="50px" MaxLength="5"></asp:textbox></asp:Panel></TD></TR>
              <TR>
                <TD>
<asp:label id=lblBillObjection runat="server" CssClass="normal"></asp:label></TD></TR>
              <TR>
                <TD align=right><INPUT class=formbuttons style="WIDTH: 100px" onclick=PrintObjection() tabIndex=2 type=button value="  Print Objection  "> 
<asp:Button id=btnClear tabIndex=3 runat="server" CssClass="formbuttons" Width="100px" Text="Clear" onclick="btnClear_Click"></asp:Button></TD></TR>
              <TR>
                <TD>
                  <DIV style="VISIBILITY: hidden">
<asp:TextBox id=txtPrintMsg Width="100%" Runat="server" Enabled="True" TextMode="MultiLine" Wrap="False" Rows="10" ReadOnly="True" Height="45px"></asp:TextBox></DIV></TD></TR>
              <TR>
                <TD>
                  <OBJECT id=Myobject1 style="DISPLAY: none" 
                  codeBase=TitleMessage.ocx height=0 width=0 
                  classid=CLSID:20CEDDF2-2C6C-4859-BAF3-9F5465D9FFD1 VIEWASTEXT>
	<PARAM NAME="_ExtentX" VALUE="26">
	<PARAM NAME="_ExtentY" VALUE="26">
	</OBJECT>
	</TD></TR>
              <TR>
                <TD>
<asp:label id=lblMessage runat="server" CssClass="validatemessage"></asp:label></TD></TR></TABLE>
									</asp:Panel>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
		function PrintObjection()
		{
			/*var obj;			
			obj = new ActiveXObject("TitleMessage.AlertBox");
			obj.Samp = document.getElementById("txtPrintMsg").value;
			obj.StartPrinting(document.getElementById("txtPrintMsg").value);*/
			var prtobj;			
			prtobj = new ActiveXObject("RawPrinter.clsPrintLib");			
			prtobj.SendTextToSelectedPrinter(document.getElementById("txtPrintMsg").value);
			prtobj = null;
		}
		</SCRIPT>
	</body>
</HTML>
