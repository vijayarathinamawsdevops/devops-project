<%@ Page language="c#" Codebehind="ChequeIssue.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Cheque.ChequeIssue" %>
<%@ Register TagPrefix="uc1" TagName="CounterMenus" Src="../UserControls/CounterMenus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Cheque Issue</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
		<script>
		function selectChequeType()
		{
			var radbuts = document.getElementsByName("radQueryCheque");
			for(i = 0;i<radbuts.length;i++)
			{
				if(radbuts[i].checked && radbuts[i].value == 0) 
				{			
					document.getElementById("divIndividual").style.display = "block";	
					document.getElementById("divDDOCheques").style.display = "none";
					//document.getElementById("txtTokenNo").value = "";											
					return;
				}
				if(radbuts[i].checked && radbuts[i].value == 1) 
				{			
					document.getElementById("divDDOCheques").style.display = "block";	
					document.getElementById("divIndividual").style.display = "none";
					document.getElementById("txtDOCode").value = "";								
					document.getElementById("txtDOCode").focus();						
					return;
				}
			}				
		}		
		</script>
	</HEAD>
	<body id="Counter_Chequeissue" leftMargin="0" topMargin="0" onload="selectChequeType();" rightMargin="0">
		<form id="ChequeIssue" method="post" runat="server">
         
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td vAlign="top"><uc1:countermenus id="CounterMenus1" runat="server"></uc1:countermenus></td>
				</tr>
				<tr>
					<td class="mandatory" style="PADDING-LEFT: 20px"><asp:radiobuttonlist id="radQueryCheque" Runat="server" CssClass="mandatory" RepeatDirection="Horizontal"
							AutoPostBack="True" onselectedindexchanged="radQueryCheque_SelectedIndexChanged">
							<asp:ListItem Value="0">By TokenNo (Only for Individual Cheques)</asp:ListItem>
							<asp:ListItem Value="1">By Drawing Officer Code</asp:ListItem>
						</asp:radiobuttonlist></td>
				</tr>
				<tr>
					<td vAlign="top" height="100%">
						<asp:Panel ID="pnlByTokenNo" Runat="server" Visible="False">
							<TABLE border="0" cellSpacing="0" cellPadding="2" width="98%" align="center">
								<TR>
									<TD>
										<asp:label id="lblTokenno" CssClass="mandatory" Runat="server">Token No</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:DropDownList id="CboTokenYear" runat="server" CssClass="formlines"></asp:DropDownList>
										<asp:textbox id="txtTokenNo" tabIndex="1" AutoPostBack="True" CssClass="formlines" Runat="server" ontextchanged="txtTokenNo_TextChanged" 
onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;
										<asp:imagebutton id="ibtnTokenGo" runat="server" CausesValidation="False" ImageUrl="../Images/go.gif"
											ImageAlign="AbsBottom"></asp:imagebutton></TD>
								</TR>
								<TR>
									<TD>
										<asp:panel id="pnlcheque" Runat="server" Visible="False">
											<TABLE id="tblTable" class="tablelefgbgcolor" border="0" cellSpacing="1" cellPadding="1"
												width="100%">
												<TR>
													<TD>
														<asp:Label id="lblCqNumber" runat="server" CssClass="mandatory">Cheque Number</asp:Label></TD>
													<TD>
														<asp:DropDownList id="drpcqNumber" tabIndex="2" AutoPostBack="True" CssClass="drptxt" Runat="server"
															Width="160px" onselectedindexchanged="drpcqNumber_SelectedIndexChanged"></asp:DropDownList>
													<TD>
														<asp:Label id="lblCqDate" runat="server" CssClass="mandatory">Cheque Date</asp:Label></TD>
													<TD>
														<asp:TextBox id="txtCqDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('txtCqDate');"><IMG border="0" src="../Images/show-calendar.gif"></A>
                                                            
                                                            <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtCqDate"
                                                              CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>






                                                            
                                                            </TD>
												</TR>
												<TR>
													<TD>
														<asp:Label id="lblCqDeliveredTo" runat="server" CssClass="mandatory">Cheque in Favour of</asp:Label></TD>
													<TD>
														<asp:TextBox id="txtCqDeliveredTo" runat="server" CssClass="formlines" Visible="true" onblur="chkbadchar(this);"></asp:TextBox></TD>
													<TD>
														<asp:Label id="lblDyDate" runat="server" CssClass="mandatory">Delivery Date</asp:Label></TD>
													<TD>
														<asp:TextBox id="txtDyDate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('txtDyDate');"><IMG border="0" src="../Images/show-calendar.gif"></A>
                                                            
                                                        <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtDyDate"
                                                          CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>






                                                         </TD>
												</TR>
												<TR>
													<TD>
														<asp:Label id="lblamt" runat="server" CssClass="mandatory">Cheque Amount</asp:Label></TD>
													<TD>
														<asp:TextBox id="txtcqamt" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:TextBox></TD>
													<TD>
														<asp:Label id="lblDeliveredTo" runat="server" CssClass="mandatory">Delivered To</asp:Label></TD>
													<TD>
														<asp:TextBox id="txtIDeliveredTo" runat="server" CssClass="formlines" Visible="true" onblur="chkbadchar(this);"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD colSpan="4">
														<asp:Label id="lblMessage" runat="server" CssClass="mandatory"></asp:Label></TD>
												</TR>
												<TR>
													<TD>
														<asp:linkbutton id="addChequedetails" tabIndex="8" runat="server" CssClass="formbuttons" Width="133px" onclick="addChequedetails_Click"> Add Cheque Details </asp:linkbutton></TD>
													<TD>
														<asp:linkbutton id="cmdCleardetails" tabIndex="8" runat="server" CssClass="formbuttons" Width="133px" onclick="cmdCleardetails_Click"> Clear Cheque Details </asp:linkbutton></TD>
												</TR>
											</TABLE>
										</asp:panel></TD>
								</TR>
								<TR>
									<TD align="left">
										<asp:panel id="pnlgird" Runat="server" Visible="False">
											<TABLE cellSpacing="0" cellPadding="2" width="80%">
												<TR>
													<TD colSpan="4">
														<asp:DataGrid id="dgrdDetails" Runat="server" Width="100%" cssclass="tableleftbgcolor" AutoGenerateColumns="True"></asp:DataGrid></TD>
												</TR>
												<TR>
													<TD colSpan="4">
														<asp:Button id="btnSave" tabIndex="3" runat="server" CssClass="formbuttons" Width="100px" Text="Save" onclick="btnSave_Click"></asp:Button></TD>
												</TR>
											</TABLE>
										</asp:panel></TD>
								</TR>
							</TABLE>
						</asp:Panel>
						<asp:Panel ID="pnlByDDO" Runat="server" Visible="False">
							<TABLE border="0" cellSpacing="0" cellPadding="2" width="98%" align="center">
								<TR>
									<TD width="15%" align="left">
										<asp:label id="lblDrawingOfficer" runat="server" CssClass="mandatory">Drawing Officer&nbsp;</asp:label></TD>
									<TD>
										<asp:textbox id="txtDOCode" tabIndex="2" runat="server" AutoPostBack="True" CssClass="formlines"
											Width="50px" MaxLength="5" ontextchanged="txtDOCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox>
										<asp:dropdownlist id="cboDrawingOfficer" tabIndex="2" runat="server" AutoPostBack="True" CssClass="formlines"
											Width="260px" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblDeliverydate" runat="server" CssClass="mandatory">Delivery Date</asp:label></TD>
									<TD>
										<asp:textbox id="txtDDOdeliverydate" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
											href="javascript:show_calendar('txtDDOdeliverydate');"><IMG border="0" src="../Images/show-calendar.gif">
                                            
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="Date is dd/MM/yyyy format"  ControlToValidate="txtDDOdeliverydate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>






                                            
                                            </A>
									</TD>
								</TR>
								<TR>
									<TD>
										<asp:label id="lblToWhom" runat="server" CssClass="mandatory">Delivered To</asp:label></TD>
									<TD>
										<asp:textbox id="txtToWhom" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
								</TR>
								<TR>
									<TD colSpan="2">
										<asp:Panel id="pnlddogrid" Runat="server" Visible="False">
											<asp:datagrid id="dgrdDDOCheques" Runat="server" Width="80%" cssclass="tblborder" AutoGenerateColumns="True">
												<HeaderStyle CssClass="mandatory"></HeaderStyle>
											</asp:datagrid>
										</asp:Panel></TD>
								</TR>
								<TR>
									<TD colSpan="2">
										<asp:button id="btnDDOSave" runat="server" CssClass="formbuttons" Width="100px" Text="Save" onclick="btnDDOSave_Click"></asp:button></TD>
								</TR>
							</TABLE>
						</asp:Panel></td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</tr>
			</TABLE> 
		</form>
	</body>
</HTML>
