<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ChequeMenus" Src="../UserControls/ChequeMenus.ascx" %>
<%@ Page language="c#" Codebehind="chequeentry.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Cheque.chequeentry" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Cheque Printing</title>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
		<script>	
        	function setControlFocus()
		{
			document.getElementById("txtTokenNo").focus();
		}
		history.forward();
		</script>
	</HEAD>
	<body id="Cheque_ChequeEntry" bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0">
		<form id="chequeprinting" method="post" runat="server">
        
        
  
			<TABLE id="Table1" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td><uc1:chequemenus id="ChequeMenus1" runat="server"></uc1:chequemenus></td>
				</tr>
				<tr vAlign="top">
					<td vAlign="top" height="100%">
						<table class="pgborder" cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
							<tr>
								<TD class="formtitle" align="center" colSpan="4"><asp:label id="frmtitle" runat="server" CssClass="formtitle">Cheque Entry Details</asp:label></TD>
							</tr>
							<TR>
								<TD style="HEIGHT: 15px"><asp:label id="lblTokenNo" runat="server" CssClass="mandatory">Token Number</asp:label></TD>
								<TD style="HEIGHT: 15px" width="15%"><asp:dropdownlist id="CboTokenYear" runat="server" CssClass="formlines" onselectedindexchanged="CboTokenYear_SelectedIndexChanged"></asp:dropdownlist><asp:textbox id="txtTokenNo" tabIndex="1" runat="server" CssClass="formlines" AutoPostBack="True"
										MaxLength="15" ontextchanged="txtTokenNo_TextChanged" onblur="chkbadchar(this);"></asp:textbox></TD>
								<td><asp:label id="lblDrawingOfficer" runat="server" CssClass="mandatory">Drawing Officer</asp:label></td>
								<td><asp:textbox id="txtDrawingOfficer" tabIndex="3" runat="server" CssClass="formlines" ReadOnly="True"
										Enabled="False" onblur="chkbadchar(this);"></asp:textbox></td>
							</TR>
							<TR>
								<TD style="HEIGHT: 23px"><asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
								<TD style="HEIGHT: 23px"><asp:textbox id="txtBillAmount" tabIndex="5" runat="server" CssClass="formlines" ReadOnly="True"
										Enabled="False" onblur="chkbadchar(this);"></asp:textbox><asp:label id="Label1" runat="server" Visible="False">0</asp:label></TD>
								<TD style="HEIGHT: 15px"><asp:label id="lblhowmany" runat="server" CssClass="mandatory"> Number of Cheques</asp:label></TD>
								<TD style="HEIGHT: 15px"><asp:textbox id="txtNoofCheques" tabIndex="6" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
							</TR>
							<tr>
								<TD><asp:label id="lblBillType" runat="server" CssClass="mandatory">Bill Type</asp:label></TD>
								<TD><asp:textbox id="txtBillType" tabIndex="2" runat="server" CssClass="formlines" ReadOnly="True"
										Enabled="False" onblur="chkbadchar(this);"></asp:textbox></TD>
								<td colSpan="2"><asp:label id="lblBillTypeDesc" runat="server" Font-Size="XX-Small" Width="236px"></asp:label></td>
							</tr>
							<tr>
								<TD><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
								<TD><asp:textbox id="txtDPCode" tabIndex="4" runat="server" CssClass="formlines" ReadOnly="True"
										Enabled="False" onblur="chkbadchar(this);"></asp:textbox><asp:label id="lblDPDesc" runat="server" Font-Size="XX-Small" Width="207px"></asp:label></TD>
								<td colSpan="2"><asp:label id="lblDODesc" runat="server" Font-Size="XX-Small" Width="214px"></asp:label></td>
							</tr>
							<TR>
								<TD><asp:label id="lblChequeDdoInd" runat="server" CssClass="mandatory">Cheque for whom</asp:label></TD>
								<TD align="center"><asp:radiobuttonlist id="RadioButtonList1" tabIndex="7" runat="server" CssClass="formlines" AutoPostBack="True"
										Width="250px" RepeatDirection="Horizontal" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
										<asp:ListItem Value="D" Selected="True">DDO</asp:ListItem>
										<asp:ListItem Value="I">Individual</asp:ListItem>
										<asp:ListItem Value="IG">Ind. Group</asp:ListItem>
									</asp:radiobuttonlist></TD>
								<TD><asp:label id="lblgrname" runat="server" CssClass="mandatory" Visible="False">Ind.Group Name</asp:label></TD>
								<TD><asp:dropdownlist id="DrpIndgrp" runat="server" CssClass="formlines" Visible="False" onselectedindexchanged="DrpIndgrp_SelectedIndexChanged"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD width="100%" colSpan="4"><asp:datagrid id="dgrdIndList" tabIndex="7" runat="server" CssClass="formlines" Width="100%" AutoGenerateColumns="False"
										ShowFooter="True" onselectedindexchanged="dgrdIndList_SelectedIndexChanged">
										<HeaderStyle Font-Bold="True"></HeaderStyle>
										<Columns>
											<asp:BoundColumn DataField="TokenNo" ReadOnly="True" HeaderText="TokenNo">
												<ItemStyle HorizontalAlign="Center"></ItemStyle>
											</asp:BoundColumn>
											<asp:TemplateColumn HeaderText="Serial Number">
												<ItemTemplate>
													<asp:Label ID="lblSlNo" Runat=server Text='<%#DataBinder.Eval(Container.DataItem, "SlNo" )%>' >
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:TextBox ID="txtSlNo" Runat=server Text='<%#DataBinder.Eval(Container.DataItem, "SlNo")%>' >
													</asp:TextBox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:BoundColumn DataField="ToWhom" HeaderText="Name"></asp:BoundColumn>
											<asp:BoundColumn DataField="ChequeAmount" HeaderText="Amount">
												<ItemStyle HorizontalAlign="Center"></ItemStyle>
											</asp:BoundColumn>
											<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"
												HeaderText="Action"></asp:EditCommandColumn>
											<asp:TemplateColumn HeaderText="Actions">
												<ItemTemplate>
													<asp:LinkButton ID="lnkDetails" Runat="server" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</asp:datagrid></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="2"><asp:linkbutton id="lbtnEmpFamAdd" tabIndex="8" runat="server" CssClass="formbuttons" Width="133px" onclick="lbtnEmpFamAdd_Click"> Add Cheque Details </asp:linkbutton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:linkbutton id="lbtnEmpDetails" tabIndex="9" runat="server" CssClass="formbuttons" Width="140px" onclick="lbtnEmpDetails_Click">View Cheque Details</asp:linkbutton></TD>
								<TD><asp:button id="btnSave" tabIndex="10" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button></TD>
								<TD>&nbsp;
									<asp:button id="btnClear" tabIndex="11" runat="server" CssClass="formbuttons" Width="90px" Text="Clear" onclick="btnClear_Click"></asp:button></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD width="100%"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
            
   
		</form>
	</body>
</HTML>
