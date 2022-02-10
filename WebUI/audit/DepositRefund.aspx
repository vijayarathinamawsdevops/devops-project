<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Page language="c#" Codebehind="DepositRefund.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.DepositRefund" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eeKaruvoolam - Deposit Refund</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script language="javascript">
		function enableGrid()
		{			
			if(document.getElementById("divRefund").style.display == "none") 
			  document.getElementById("divRefund").style.display = "block";		
		    else
		      document.getElementById("divRefund").style.display = "none";			  
		}
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" rightmargin="0" topmargin="0" leftmargin="0">
		<form id="DepositRefund" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" height="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
                            </table>
							<asp:Panel ID="pnlControls" Runat="server">
                            <table  class="parabr" style="text-align: left">
								<%--<TR>
									<TD width="15%">
										<asp:label id="lblDepositNo" runat="server" CssClass="mandatory">Deposit Number</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDepositNo" runat="server" CssClass="formlines" AutoPostBack="True" ontextchanged="txtDepositNo_TextChanged"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblName" runat="server" CssClass="mandatory">Remitter Name</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtName" runat="server" CssClass="formlines" AutoPostBack="True" ReadOnly="True"
											Enabled="False"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lbldepositamount" runat="server" CssClass="mandatory">Deposit Amount</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtdepositamount" runat="server" CssClass="formlines" ReadOnly="True" Enabled="False"
											MaxLength="19"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lbldepositdate" runat="server" CssClass="mandatory">Deposit Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtdepositdate" runat="server" CssClass="formlines" ReadOnly="True" Enabled="False"
											MaxLength="16"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblbankchallannumber" runat="server" CssClass="mandatory" Width="99px">Bank Challan Number</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtbankchallannumber" runat="server" CssClass="formlines" ReadOnly="True" Enabled="False"
											MaxLength="10"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblRefAuthority" runat="server" CssClass="mandatory" Width="144px">Authority competent to Refund</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtRefAuthority" runat="server" CssClass="formlines" AutoPostBack="True" ReadOnly="True"
											Enabled="False" MaxLength="5"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblDepositPlace" runat="server" CssClass="mandatory">Place of Deposit</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDepositPlace" runat="server" CssClass="formlines" AutoPostBack="True" ReadOnly="True"
											Enabled="False" MaxLength="5"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDPCode" runat="server" CssClass="formlines" AutoPostBack="True" ReadOnly="True"
											Enabled="False" MaxLength="15"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lbldeposit_type" runat="server" CssClass="mandatory">Deposit Type/Purpose</asp:label></TD>
									<TD colSpan="3">
										<asp:textbox id="txtDepositType" runat="server" CssClass="formlines" ReadOnly="True" Enabled="False"
											Width="535px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<HR>
									</TD>
								</TR>
								<TR>
									<TD colSpan="3">
										<asp:label id="lblCreditVer" runat="server" CssClass="mandatory"> Credit Verification Done</asp:label>&nbsp;&nbsp;
										<asp:DropDownList id="cboCreditVer" runat="server" CssClass="drptxt" AutoPostBack="True" Width="100px" onselectedindexchanged="cboCreditVer_SelectedIndexChanged"></asp:DropDownList></TD>
								</TR>
								<TR>
									<TD width="20%">
										<asp:label id="lblRefundOrderNo" runat="server" CssClass="mandatory">Refund Order Number</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtRefundOrderNo" runat="server" CssClass="formlines" MaxLength="30"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblPaymentDate" runat="server" CssClass="mandatory">Refund Order Date</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPaymentDate" runat="server" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('DepositRefund.txtPaymentDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" CssClass="validatemessage" ErrorMessage="dd/mm/yyyy"
											ControlToValidate="txtPaymentDate" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:regularexpressionvalidator>
										<asp:requiredfieldvalidator id="rfvBillDate" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
											ControlToValidate="txtPaymentDate" Display="Dynamic"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblRefAuth" runat="server" CssClass="mandatory">Refunding Authority</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtRefAuth" runat="server" CssClass="formlines" MaxLength="5"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblDateofRefund" runat="server" CssClass="mandatory">Date of Refund</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDateofRefund" runat="server" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('DepositRefund.txtDateofRefund');"><IMG src="../Images/show-calendar.gif" border="0"></A>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ErrorMessage="dd/mm/yyyy"
											ControlToValidate="txtDateofRefund" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:regularexpressionvalidator>
										<asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
											ControlToValidate="txtDateofRefund" Display="Dynamic"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblToWhom" runat="server" CssClass="mandatory"> To Whom Paid</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtToWhom" runat="server" CssClass="formlines" MaxLength="30"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblDOCode" runat="server" CssClass="mandatory">Drawing Officer</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtDrawingOfficer" runat="server" CssClass="formlines" MaxLength="5"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lableDPCode" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="textDpCode" runat="server" CssClass="formlines" MaxLength="15"></asp:textbox></TD>
									<TD width="15%">
										<asp:label id="lblRefundAmt" runat="server" CssClass="mandatory">Refund Amount</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtRefundAmt" runat="server" CssClass="formlines" AutoPostBack="True"></asp:textbox></TD>
								</TR>
								<TR>
									<TD width="15%" colSpan="4">
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:button></TD>
									<TD width="15%" colSpan="3"><INPUT class="formbuttons" onclick="enableGrid();" type="button" value="View Previous Refund Details">
										<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
								</TR>
								<TR>
									<TD colSpan="4">
										<DIV id="divRefund" style="DISPLAY: none">
											<asp:datagrid id="dgrdRefunds" runat="server" CssClass="tableleftbgcolor" Width="60%" CellPadding="3"
												BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" AutoGenerateColumns="False"
												ShowFooter="True" onselectedindexchanged="dgrdRefunds_SelectedIndexChanged">
												<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
												<ItemStyle ForeColor="#000066"></ItemStyle>
												<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
												<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
												<Columns>
													<asp:TemplateColumn HeaderText="Token No" ItemStyle-Width="15%">
														<ItemTemplate>
															<asp:Label id="lblPreTokenNo" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>' Runat="server">
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Date Of Refund" ItemStyle-Width="35%">
														<ItemTemplate>
															<asp:Label id="lbldtRefund" Text='<%# DataBinder.Eval(Container.DataItem,"DateOfRefund") %>' Runat="server">
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Refund Amount" ItemStyle-Width="35%">
														<ItemTemplate>
															<asp:Label id="lblrefAmount" Text='<%# DataBinder.Eval(Container.DataItem,"RefundAmt") %>' Runat="server">
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
												</Columns>
												<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
											</asp:datagrid></DIV>
									</TD>
								</TR>--%>
                                <table width="100%" style="text-align: left">
                                        <tr>
                                            <td width="17%">
										<asp:label id="lblDepositNo" runat="server" CssClass="mandatory">Deposit Number</asp:label>
                                            </td>
                                            <td width="33%">
										<asp:textbox id="txtDepositNo" runat="server" onblur="chkbadchar(this);" CssClass="formlines" AutoPostBack="True" ontextchanged="txtDepositNo_TextChanged"></asp:textbox>
                                            </td>
                                            <td width="17%">
										<asp:label id="lblName" runat="server" CssClass="mandatory">Remitter Name</asp:label>
                                            </td>
                                            <td width="33%">
										<asp:textbox id="txtName" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ReadOnly="True"
											Enabled="False"></asp:textbox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lbldepositamount" runat="server" CssClass="mandatory">Deposit Amount</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtdepositamount" runat="server" CssClass="formlines" onblur="chkbadchar(this);" ReadOnly="True" Enabled="False"
											MaxLength="19"></asp:textbox>
                                            </td>
                                            <td>
										<asp:label id="lbldepositdate" runat="server" CssClass="mandatory">Deposit Date</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtdepositdate" runat="server" CssClass="formlines" onblur="chkbadchar(this);" ReadOnly="True" Enabled="False"
											MaxLength="16"></asp:textbox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lblbankchallannumber" runat="server" CssClass="mandatory">Bank Challan Number</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtbankchallannumber" runat="server" onblur="chkbadchar(this);" CssClass="formlines" ReadOnly="True" Enabled="False"
											MaxLength="10"></asp:textbox>
                                            </td>
                                            <td>
										<asp:label id="lblRefAuthority" runat="server" CssClass="mandatory">Authority competent to Refund</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtRefAuthority" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ReadOnly="True"
											Enabled="False" MaxLength="5"></asp:textbox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lblDepositPlace" runat="server" CssClass="mandatory">Place of Deposit</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtDepositPlace" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ReadOnly="True"
											Enabled="False" MaxLength="5"></asp:textbox>
                                            </td>
                                            <td>
										<asp:label id="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtDPCode" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True" ReadOnly="True"
											Enabled="False" MaxLength="15"></asp:textbox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lbldeposit_type" runat="server" CssClass="mandatory">Deposit Type/Purpose</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtDepositType" runat="server" CssClass="formlines" 
                                                    onblur="chkbadchar(this);" ReadOnly="True" Enabled="False"
											Width="80%"></asp:textbox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>                                   
                                    <table width="100%" style="text-align: left">
                                        <tr>
                                            <td width="17%">
										<asp:label id="lblCreditVer" runat="server" CssClass="mandatory"> Credit Verification Done</asp:label>
                                            </td>
                                            <td width="33%">
										<asp:DropDownList id="cboCreditVer" runat="server" CssClass="drptxt" AutoPostBack="True" Width="100px" onselectedindexchanged="cboCreditVer_SelectedIndexChanged"></asp:DropDownList>
                                            </td>
                                            <td width="17%">
										<asp:label id="lblPaymentDate" runat="server" CssClass="mandatory">Refund Order Date</asp:label>
                                            </td>
                                            <td width="33%">
										<asp:textbox id="txtPaymentDate" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('DepositRefund.txtPaymentDate');"><IMG src="../Images/show-calendar.gif" border="0"></A><asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtPaymentDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
										<asp:requiredfieldvalidator id="rfvBillDate" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
											ControlToValidate="txtPaymentDate" Display="Dynamic"></asp:requiredfieldvalidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lblRefundOrderNo" runat="server" CssClass="mandatory">Refund Order Number</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtRefundOrderNo" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="30"></asp:textbox>
                                            </td>
                                            <td>
										<asp:label id="lblDateofRefund" runat="server" CssClass="mandatory">Date of Refund</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtDateofRefund" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('DepositRefund.txtDateofRefund');"><IMG src="../Images/show-calendar.gif" border="0"></A><asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDateofRefund" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
										<asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" ErrorMessage="Data required"
											ControlToValidate="txtDateofRefund" Display="Dynamic"></asp:requiredfieldvalidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lblRefAuth" runat="server" CssClass="mandatory">Refunding Authority</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtRefAuth" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="5"></asp:textbox>
                                            </td>
                                            <td>
										<asp:label id="lblDOCode" runat="server" CssClass="mandatory">Drawing Officer</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtDrawingOfficer" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="5"></asp:textbox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lblToWhom" runat="server" CssClass="mandatory"> To Whom Paid</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtToWhom" runat="server" CssClass="formlines" onblur="chkbadchar(this);"  MaxLength="30"></asp:textbox>
                                            </td>
                                            <td>
										<asp:label id="lblRefundAmt" runat="server" CssClass="mandatory">Refund Amount</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="txtRefundAmt" runat="server" CssClass="formlines" onblur="chkbadchar(this);" AutoPostBack="True"></asp:textbox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lableDPCode" runat="server" CssClass="mandatory">DP Code</asp:label>
                                            </td>
                                            <td>
										<asp:textbox id="textDpCode" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="15"></asp:textbox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <INPUT class="formbuttons" onclick="enableGrid();" type="button" value="View Previous Refund Details"></td>
                                        </tr>
                                        <tr>
                                            <td>
										<asp:button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" 
                                                    onclick="btnSave_Click" Height="23px"></asp:button>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
										<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                            <DIV id="divRefund" style="DISPLAY: none">
                                            
											<asp:datagrid id="dgrdRefunds" runat="server" CssClass="tableleftbgcolor" Width="60%" CellPadding="3"
												BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" AutoGenerateColumns="False"
												ShowFooter="True" onselectedindexchanged="dgrdRefunds_SelectedIndexChanged">
												<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
												<ItemStyle ForeColor="#000066"></ItemStyle>
												<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
												<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
												<Columns>
													<asp:TemplateColumn HeaderText="Token No" ItemStyle-Width="15%">
														<ItemTemplate>
															<asp:Label id="lblPreTokenNo" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>' Runat="server">
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Date Of Refund" ItemStyle-Width="35%">
														<ItemTemplate>
															<asp:Label id="lbldtRefund" Text='<%# DataBinder.Eval(Container.DataItem,"DateOfRefund") %>' Runat="server">
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
													<asp:TemplateColumn HeaderText="Refund Amount" ItemStyle-Width="35%">
														<ItemTemplate>
															<asp:Label id="lblrefAmount" Text='<%# DataBinder.Eval(Container.DataItem,"RefundAmt") %>' Runat="server">
															</asp:Label>
														</ItemTemplate>
													</asp:TemplateColumn>
												</Columns>
												<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
											</asp:datagrid></DIV></td>
                                        </tr>
                                    </table>
                                 </table>
							</asp:Panel>
							<TR>
								<TD width="15%"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist><asp:textbox id="todaydate" runat="server" Visible="False"></asp:textbox></TD>
							</TR>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD width="15%"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
