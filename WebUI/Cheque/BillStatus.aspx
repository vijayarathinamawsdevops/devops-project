<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillStatus.aspx.cs" Inherits="eKaruvoolam.WebUI.Cheque.BillStatus" %>

<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register src="../UserControls/ChequeMenus.ascx" tagname="ChequeMenus" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>eKaruvoolam - Bill Status</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
        <script src="../Scripts/date-picker.js" type="text/javascript"></script>       
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script>
		    function enableQueryViews() {
		        var radgrp;
		        var radval;
		        radgrp = document.getElementsByName("radbillStatusby");
		        for (i = 1; i < radgrp.length; i++) {
		            if (radgrp[i].checked) radval = radgrp[i].value;
		        }
		        switch (radval) {
		            case "0":
		                document.getElementById("divQuerydate").style.display = "block";
		                document.getElementById("divQueryTokenno").style.display = "none";
		                break;
		            case "1":
		                document.getElementById("divQueryTokenno").style.display = "block";
		                document.getElementById("txtQueryTokenNo").focus();
		                document.getElementById("divQuerydate").style.display = "none";
		                break;
		        }
		    }
		    function setControlFocus() {
		        document.getElementById("txtTokenNo").focus();
		    }
		</script>
	</HEAD>
	<body id="Cheque_BillStatus" leftMargin="0" topMargin="0" rightMargin="0" onload="enableQueryViews();">
		<form id="BillStatus" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top">
                        
                        <uc3:ChequeMenus ID="ChequeMenus1" runat="server" />
                        
                    </td>
				</tr>
				<TR>
					<td vAlign="top" height="100%" align="center">
						<div>
                        
							<table cellSpacing="2" cellPadding="2" width="95%" border="0" class="parabr">
                            <tr>
								<TD class="formtitle" align="center" colSpan="4"><asp:label id="frmtitle" runat="server" CssClass="formtitle">Bill Status</asp:label></TD>
							</tr>
								<tr>
									<td class="mandatory">Bill Status By</td>
									<td width="85%">
										<asp:RadioButtonList ID="radbillStatusby" CssClass="mandatory" Runat="server" RepeatDirection="Horizontal">
											<asp:ListItem Value="0" Selected="True">Transaction Date</asp:ListItem>
											<asp:ListItem Value="1">Token Number</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<div id="divQuerydate">
											<table cellSpacing="0" cellPadding="2" align="left" border="0">
												<tr>
													<td class="mandatory">Transaction Date</td>
													<td><asp:textbox id="txtTransactionDate" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox>&nbsp;<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('txtTransactionDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                            <asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtTransactionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
                                                            
                                                            </td>
													<td><asp:Button ID="btnSubmitbyDate" Runat="server" Text="Submit" CssClass="formbuttons" Width="95px" onclick="btnSubmitbyDate_Click"></asp:Button></td>
												</tr>
											</table>
										</div>
										<div id="divQueryTokenno" style="DISPLAY:none">
											<table cellSpacing="0" cellPadding="2" align="left" border="0">
												<tr>
													<td class="mandatory">Token Number</td>
													<td>
														<asp:DropDownList id="CboTokenYear" runat="server" CssClass="formlines" onselectedindexchanged="CboTokenYear_SelectedIndexChanged"></asp:DropDownList><asp:textbox id="txtQueryTokenNo" runat="server" CssClass="formlines"></asp:textbox></td>
													<td><asp:Button ID="btnSubmitbyToken" Runat="server" Text="Submit" CssClass="formbuttons" Width="95px" onclick="btnSubmitbyToken_Click"></asp:Button></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>
						</div>
						<br>
						<asp:Panel ID="pnlBYDate" Runat="server" Visible="False">
							<DIV id="divStatusgrid">
								<asp:DataGrid id="dgrdStatus" Runat="server" CssClass="tableleftbgcolor" Width="95%" CellPadding="2"
									BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" ShowFooter="True"
									PagerStyle-HorizontalAlign="Right">
									<ItemStyle ForeColor="#000066"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
									<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
								</asp:DataGrid></DIV>
							<BR>
							<DIV id="divBillStatuslist">
								<asp:DataGrid id="dgrdBillStatuslist" Runat="server" CssClass="tableleftbgcolor" Width="95%" CellPadding="2"
									BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" ShowFooter="True"
									PagerStyle-HorizontalAlign="left" AutoGenerateColumns="False" AllowPaging="True" PagerStyle-Mode="NumericPages"
									PageSize="10">
									<ItemStyle ForeColor="#000066"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
									<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
									<Columns>
										<asp:TemplateColumn HeaderText="Token No">
											<ItemTemplate>
												<asp:Label ID="dgTokenno" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Token No") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="DOCode">
											<ItemTemplate>
												<asp:Label ID="dgDOCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOCode") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="DPCode">
											<ItemTemplate>
												<asp:Label ID="dgDPCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Bill Type">
											<ItemTemplate>
												<asp:Label ID="dgBillType" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Bill Type") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Bill Amount (Rs.)">
											<ItemTemplate>
												<asp:Label ID="dgBillAmount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Bill Amount") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Bill Status">
											<ItemTemplate>
												<asp:Label ID="dgBillStatus" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Bill Status") %>'>
												</asp:Label>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="Actions">
											<ItemTemplate>
												<asp:LinkButton ID="lnkDetails" Runat="server" CommandName="Details" CausesValidation="False">Show Details</asp:LinkButton>
											</ItemTemplate>
										</asp:TemplateColumn>
									</Columns>
								</asp:DataGrid></DIV>
						</asp:Panel>
						<asp:Panel ID="pnlBYToken" Runat="server" Visible="False">
							<TABLE cellSpacing="2" cellPadding="2" width="98%" align="center" border="0" class="parabr">
								<TR>
									<TD width="15%">
										<asp:label id="Label1" runat="server" CssClass="mandatory">Token </asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtTokenNo" runat="server" CssClass="formlines" Enabled="False" ReadOnly="True" ontextchanged="txtTokenNo_TextChanged"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblDoCode" runat="server" CssClass="mandatory">Drawing Officer </asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDoCode" runat="server" CssClass="mandatory" Enabled="False" 
                                            ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDPCode" runat="server" CssClass="mandatory" Enabled="False" 
                                            ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblBillAmount" runat="server" CssClass="mandatory">Bill Amount</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtBillAmount" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblBillPresDt" runat="server" CssClass="mandatory">Bill Presented Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtBillPresDt" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblBillType" runat="server" CssClass="mandatory">Bill Type</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtBillType" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblBillReceived" runat="server" CssClass="mandatory">Bill Received By</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtBillReceived" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblAudit1" runat="server" CssClass="mandatory">Ist Level Audited By</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtAudit1" runat="server" CssClass="mandatory" Enabled="False" 
                                            ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblAudit2" runat="server" CssClass="mandatory">IInd Level Audited By</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtAudit2" runat="server" CssClass="mandatory" Enabled="False" 
                                            ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblAudit3" runat="server" CssClass="mandatory">IIIrd Level Audited By</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtAudit3" runat="server" CssClass="mandatory" Enabled="False" 
                                            ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblChqPrintedBy" runat="server" CssClass="mandatory"> Cheque Printed By </asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChqPrintedBy" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblChqDeliveredBy" runat="server" CssClass="mandatory">Cheque Delivered By</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChqDeliveredBy" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblChqDeliveredTo" runat="server" CssClass="mandatory">Cheque Delivered To</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChqDeliveredTo" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblChqDeliveredDt" runat="server" CssClass="mandatory">Cheque Delivered Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChqDeliveredDt" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblNoOfCheque" runat="server" CssClass="mandatory">No Of Cheques Printed</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtNoOfCheque" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblChequeDt" runat="server" CssClass="mandatory">Cheque Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtChequeDt" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblReturnBy" runat="server" CssClass="mandatory">Bill Return By</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtReturnBy" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblReturnDt" runat="server" CssClass="mandatory">Bill Return On</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtReturnDt" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblBillStatus" runat="server" CssClass="mandatory">Bill Status</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtBillStatus" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblchequeno" runat="server" CssClass="mandatory">Cheque No</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtchequeno" runat="server" CssClass="mandatory" 
                                            Enabled="False" ReadOnly="True" Width="182px"></asp:textbox></TD> <!--<TD width="15%"><asp:label id="lblNoOfChq" runat="server" CssClass="mandatory">No of Cheques </asp:label></TD>
										
									<TD width="35%"><asp:textbox id="txtNoOfChq" runat="server" CssClass="mandatory"></asp:textbox></TD>--></TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblecsdate" runat="server" CssClass="mandatory">ECS Settlement Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtecs" runat="server" CssClass="mandatory" Enabled="False" 
                                            ReadOnly="True" Width="182px"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="Label2" runat="server" CssClass="mandatory">ECS / Non ECS</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtecsst" runat="server" CssClass="mandatory" Enabled="False" 
                                            ReadOnly="True" Width="182px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD colSpan="2">
										<asp:panel id="pnlAuditOverrule" Runat="server" Visible="False">
											<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="100%" align="center" border="0">
												<TR>
													<TD>
														<asp:label id="lblAuditorremark" runat="server" CssClass="mandatory">Auditor - Over Rule Remarks</asp:label></TD>
												</TR>
												<TR>
													<TD>
														<asp:textbox id="txtOverruleRemark" runat="server" CssClass="txtbx" TextMode="MultiLine" Columns="70"
															Rows="3"></asp:textbox></TD>
												</TR>
											</TABLE>
										</asp:panel></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="mandatory"></asp:label></TD>
								</TR>
								<TR>
									<TD>
										<asp:button id="btnClear" runat="server" CssClass="formbuttons" Width="100px" Text="Clear" onclick="btnClear_Click"></asp:button>
										<asp:button id="btnBack" runat="server" CssClass="formbuttons" Width="100px" Text="Back" Visible="False" onclick="btnBack_Click"></asp:button>
									<TD colSpan="3">
										<asp:button id="btnView" runat="server" CssClass="formbuttons" Width="100px" Text="View" Visible="False" onclick="btnView_Click"></asp:button></TD>
								</TR>
							</TABLE>
						</asp:Panel>
					</td>
				</TR>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
