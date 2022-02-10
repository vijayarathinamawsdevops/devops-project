<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="DdoMas.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.DdoMas" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
  <HEAD>
		<title>eKaruvoolam - Drawing Officer Details Entry</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
       
        <script language="javascript" type ="text/javascript" >
            function numeralsOnly(evt) {
                evt = (evt) ? evt : event;
                var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
                if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                    alert("Enter only number in this field.");
                    return false;
                }
                return true;
            } 
        </script>

        


        <script language="javascript" type="text/javascript">

            function RegNO() {
                var Docode;
                var TOCode;
                Docode = document.getElementById("txtDOCODE").value;
                TOCode = document.getElementById("txtTOCode").value;

                document.getElementById("txtreg").value = Docode + TOCode;


            }
		</script>
  </HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout" onload="RegNO()">
		<form id="DdoMas" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table1" cellSpacing="1" cellPadding="3" width="98%" border="0">
							<TR>
								<TD colSpan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Drawing Officer Details Entry</asp:label></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 28px" width="15%"><asp:label id="lblDOCODE" runat="server" CssClass="mandatory">Drawing Officer Code</asp:label></TD>
								<TD style="HEIGHT: 28px" width="35%"><asp:textbox id="txtDOCODE" runat="server" 
                                        CssClass="formlines" Width="50px" MaxLength="5" onblur="chkbadchar(this);" 
                                         ></asp:textbox><asp:requiredfieldvalidator id="rfvDoCode" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDOCODE"
										ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
								<TD style="HEIGHT: 28px" width="15%"><asp:label id="lblNG" runat="server" CssClass="mandatory">Drawing Officer Type</asp:label></TD>
								<TD style="HEIGHT: 28px" width="35%"><asp:dropdownlist id="cboDoType" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboDoType_SelectedIndexChanged"></asp:dropdownlist><asp:textbox id="txtNG" runat="server" CssClass="formlines" MaxLength="1" Visible="False" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 24px" width="162"><asp:label id="lblDODESC" runat="server" CssClass="mandatory">DO Description</asp:label></TD>
								<TD style="HEIGHT: 24px" width="35%"><asp:textbox id="txtDODESC" runat="server" CssClass="formlines" Width="200px" MaxLength="20" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD style="HEIGHT: 24px" width="15%"><asp:label id="lblMAIN_DOCODE" runat="server" CssClass="mandatory">Main Division DOCode</asp:label></TD>
								<TD style="HEIGHT: 24px" width="35%"><asp:textbox id="txtMAIN_DOCODE" runat="server" CssClass="formlines" MaxLength="5" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 24px" width="162"><asp:label id="lblSUBCODE" runat="server" CssClass="mandatory">Sub Division DO Code</asp:label></TD>
								<TD style="HEIGHT: 24px" width="35%"><asp:textbox id="txtSUBCODE" runat="server" CssClass="formlines" MaxLength="5" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD style="HEIGHT: 24px" width="15%"><asp:label id="lblSTO" runat="server" CssClass="mandatory">TO Code</asp:label></TD>
								<TD style="HEIGHT: 24px" width="35%"><asp:textbox id="txtTOCode" runat="server" 
                                        CssClass="formlines" Enabled="false" MaxLength="4" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 44px" vAlign="top" width="162"><asp:label id="lblADD1" runat="server" CssClass="mandatory">Address</asp:label></TD>
								<TD style="HEIGHT: 44px" width="35%">
									<asp:textbox id="txtADD1" runat="server" CssClass="formlines" Width="200px" MaxLength="20" onblur="chkbadchar(this);"></asp:textbox><br>
									<asp:textbox id="txtADD2" runat="server" CssClass="formlines" Width="200px" MaxLength="20" onblur="chkbadchar(this);"></asp:textbox><br>
									<asp:textbox id="txtADD3" runat="server" CssClass="formlines" Width="200px" MaxLength="20" onblur="chkbadchar(this);"></asp:textbox>
                              
                                    <br />
                              
                                    <asp:TextBox ID="txtAddress4" runat="server" CssClass="formlines" 
                                        MaxLength="25" onblur="chkbadchar(this);" Width="200px"></asp:TextBox>
                                  
                                  
                               
                                
                              
                            
                                    </TD>
								<TD style="HEIGHT: 44px" width="15%"><asp:label id="lblCHEQUE1" runat="server" CssClass="mandatory">Cheque Favouring Whom (Line 1) &</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:label id="lblCHEQUE2" runat="server" CssClass="mandatory" Width="44px"> (Line 2)</asp:label></TD>
								<TD style="HEIGHT: 44px" width="35%">
									<asp:textbox id="txtCHEQUE1" runat="server" CssClass="formlines" Width="250px" MaxLength="70" onblur="chkbadchar(this);"></asp:textbox><asp:RequiredFieldValidator ID="reqcheque1" CssClass="validatemessage" Runat="server" ControlToValidate="txtCHEQUE1">Data Required</asp:RequiredFieldValidator><br>
									<asp:textbox id="txtCHEQUE2" runat="server" CssClass="formlines" Width="250px" MaxLength="70" onblur="chkbadchar(this);"></asp:textbox><asp:RequiredFieldValidator ID="reqcheque2" CssClass="validatemessage" Runat="server" ControlToValidate="txtCHEQUE2">Data Required</asp:RequiredFieldValidator></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 26px" width="162"><asp:label id="lblLOGID" runat="server" CssClass="mandatory">LOGID</asp:label></TD>
								<TD style="HEIGHT: 26px" width="35%">
									<P><asp:textbox id="txtLOGID" runat="server" CssClass="formlines" onblur="chkbadchar(this);">0</asp:textbox></P>
								</TD>
                                <td><asp:Label ID="lbltan"  runat="server" CssClass="mandatory">TAN DDO</asp:Label></td>
                            <td><asp:textbox ID="txtTan" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
                                 
							</TR>
                            <tr><td>
                            <asp:Label ID="lblRegno"  runat="server" CssClass="mandatory">DDO Registration No</asp:Label>
                            </td><td><asp:textbox ID="txtreg" runat="server" CssClass="formlines" ReadOnly="true" onblur="chkbadchar(this);"></asp:textbox></td>
                              <td><asp:Label ID="lblState"  runat="server" CssClass="mandatory">State</asp:Label></td>
                            <td><asp:textbox ID="txtState" runat="server" ReadOnly="true" CssClass="formlines" onblur="chkbadchar(this);">TamilNadu</asp:textbox></td>
                            </tr>
                            <tr>
                             
                            <td><asp:Label ID="lblCity"  runat="server" CssClass="mandatory">City</asp:Label></td>
                            <td><asp:textbox ID="txtCity" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
                              
                            
                            </td>
                             
                              <td><asp:Label ID="lblPin"  runat="server" CssClass="mandatory">Pin Code</asp:Label></td>
                            <td><asp:textbox ID="txtPin" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></td>
                            </tr>
                            
                             
                            <tr>
                             
                            <td><asp:Label ID="lblMultiple"  runat="server" CssClass="mandatory">Multiple</asp:Label></td>
                            <td>
                                    <asp:dropdownlist id="cboMultiple" runat="server" CssClass="drptxt" 
                                        Height="28px" Width="108px" 
                                         >
                                        <asp:ListItem Value="N" Selected="True">No</asp:ListItem>
                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                </asp:dropdownlist>
                              
                            
                            </td>
                             
                              <td><asp:Label ID="lblPin0"  runat="server" CssClass="mandatory">Section Type</asp:Label></td>
                            <td>
                                <asp:DropDownList ID="drpSection" runat="server">
                                </asp:DropDownList>
                                    <asp:dropdownlist id="cboBAS" runat="server" CssClass="drptxt" 
                                        AutoPostBack="True" onselectedindexchanged="cboDoType_SelectedIndexChanged" 
                                        Height="16px" Width="108px" Visible="False"></asp:dropdownlist>
                                    <asp:dropdownlist id="cboUnits" runat="server" CssClass="drptxt" 
                                        AutoPostBack="True" onselectedindexchanged="cboDoType_SelectedIndexChanged" 
                                        Height="16px" Width="108px" Visible="False"></asp:dropdownlist></td>
                            </tr>
                            
                             
							<TR>
								<TD style="HEIGHT: 19px" colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label><asp:label id="lblMessage1" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" OnClientClick="RegNO()" Text="Save" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;<asp:button id="btnCancel" runat="server" CssClass="formbuttons" Width="90px" Text="Clear" CausesValidation="False" onclick="btnCancel_Click"></asp:button>&nbsp;&nbsp;<asp:button id="btnSearch" runat="server" CssClass="formbuttons" Width="90px" Text="Search"
										CausesValidation="False" onclick="btnSearch_Click"></asp:button>&nbsp;&nbsp;<asp:button id="btnDelete" runat="server" CssClass="formbuttons" Width="90px" Text="Delete"
										CausesValidation="False" onclick="btnDelete_Click"></asp:button></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<TR>
					<TD align="center"><br>
						<TABLE id="Table11" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<tr>
								<td align="center"><asp:datagrid id="dgItems" runat="server" CssClass="tableleftbgcolor" width="98%" BorderColor="#CCCCCC"
										BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" PageSize="10" AllowPaging="True" AutoGenerateColumns="False">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="DOCode">
												<ItemTemplate>
													<asp:Label ID="dlblDocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DO Desc">
												<ItemTemplate>
													<asp:Label ID="dlblDodesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DODESC") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Address1">
												<ItemTemplate>
													<asp:Label ID="dlbladd1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ADD1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Address 2">
												<ItemTemplate>
													<asp:Label ID="dlbladd2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ADD2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Address 3" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlbladd3" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ADD3") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Sub Code" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlblsubcode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SUBCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Main DOCode" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlblmdocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"MAIN_DOCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="TOCode">
												<ItemTemplate>
													<asp:Label ID="dlbltocode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TOCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Cheque 1">
												<ItemTemplate>
													<asp:Label ID="dlblchq1" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Cheque1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Cheque 2">
												<ItemTemplate>
													<asp:Label ID="dlblchq2" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Cheque2") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="BAS" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlblbas" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SactionID") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<%--<asp:TemplateColumn HeaderText="UNIT" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlblunit" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"UNIT") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>--%>
											<asp:TemplateColumn HeaderText="NG" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlblng" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NG") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="LOGID" Visible="False">
												<ItemTemplate>
													<asp:Label ID="dlbllogid" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"LOGID") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>

                                            <asp:TemplateColumn HeaderText="Action">
												<ItemTemplate>
													<asp:LinkButton ID="lnkDelete" Runat="server" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:datagrid></td>
							</tr>
						</TABLE> 

					</TD>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
            
		</form>
	</body>
</HTML>
