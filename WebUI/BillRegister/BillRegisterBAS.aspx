<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillRegisterBAS.aspx.cs" Inherits="eKaruvoolam.WebUI.BillRegister.BillRegisterBAS" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
           <script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/PreAudit.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="BillRegisterBAS" runat="server">
    <div>
    <table class="tableleftborder" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0"
				<tr>
					<td vAlign="top" height="639" style="HEIGHT: 639px">
						<table cellSpacing="1" cellPadding="3" width="100%" border="0">
							<TBODY>
								<tr>
									<td><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></td>
								</tr>
								<TR>
									<TD></TD>
								</TR>
								<tr>
									<td align="center">
										<table class="pgborder" cellSpacing="1" cellPadding="1" width="98%" align="center" border="0">
											<TBODY>
												<tr class="formtitle">
													<td align="center" colSpan="8"><FONT size="3">Bill Register BAS</FONT></td>
												</tr>
												<tr>
													<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<asp:label id="lblFromDate" runat="server" CssClass="mandatory">From Date(DD/MM/YYYY)</asp:label>&nbsp;
														<asp:textbox id="txtFromDate" runat="server"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('txtFromDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                            <asp:requiredfieldvalidator id="rfvDate" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtFromDate"
										                       ErrorMessage="*"></asp:requiredfieldvalidator>
                                                               <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Date"  ControlToValidate="txtFromDate"
                                                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>






                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<asp:label id="lblToDate" runat="server" CssClass="mandatory">To Date(DD/MM/YYYY)</asp:label>&nbsp;
														<asp:textbox id="txtToDate" runat="server"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('txtToDate');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                            <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtToDate"
										                            ErrorMessage="*"></asp:requiredfieldvalidator>
                                                        <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Date"  ControlToValidate="txtToDate"
                                                          CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>






                                                            &nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<tr>
													<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button id="btnFDReport" runat="server" CssClass="formbuttons" Text="FDREPORT" BorderStyle="Solid"
															BorderWidth="2px" onclick="btnFDReport_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button id="btnNFDReport" runat="server" CssClass="formbuttons" Text="NFDREPORT" BorderStyle="Solid"
															BorderWidth="2px" onclick="btnNFDReport_Click"></asp:Button></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td align="center" colSpan="8">&nbsp;</td>
												</tr>
												<tr>
													<td align="right" colSpan="5" style="HEIGHT: 20px"><asp:label id="lblOB" CssClass="totaltext" Runat="server" Width="143px">O.B(Pending Bills) :</asp:label>
														<asp:label id="txtOB" CssClass="totaltext" Runat="server" Width="32px"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
												</tr>
												<tr>
													<td align="right" colSpan="5">
														<asp:label id="lblRecived" CssClass="totaltext" Runat="server" Width="106px">Recived Bills :</asp:label>&nbsp;
														<asp:label id="txtRecived" CssClass="totaltext" Runat="server" Width="56px"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</td>
												</tr>
												<tr>
													<td align="right" colSpan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<asp:label id="lblTotal" CssClass="totaltext" Runat="server">Total :</asp:label>
														<asp:label id="txtTotal" CssClass="totaltext" Runat="server" Width="32px"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</td>
												</tr>
												<tr>
													<td align="right" colSpan="5"><asp:label id="lblDiposed" CssClass="mandatory" Runat="server">Disposed :</asp:label>
														<asp:label id="txtDisposed" CssClass="mandatory" Runat="server"></asp:label>
														<asp:label id="lblReturn" CssClass="mandatory" Runat="server"> +  Returned Bills :</asp:label>
														<asp:label id="txtReturn" CssClass="mandatory" Runat="server"></asp:label>&nbsp;<asp:label id="lbldrtoal" CssClass="totaltext" Runat="server"> Total :</asp:label>
														<asp:label id="txtdrtotal" CssClass="totaltext" Runat="server"></asp:label>&nbsp;&nbsp; 
														&nbsp;&nbsp;&nbsp; 
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</td>
												</tr>
												<tr>
													<td align="right" colSpan="5"><asp:label id="lblCB" CssClass="totaltext" Runat="server">C.B :</asp:label>
														<asp:label id="txtCB" CssClass="totaltext" Runat="server" Width="40px"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</td>
												</tr>
											</TBODY>
										</table>
									</td>
								</tr>
							</TBODY>
						</table>
					</td>
				</tr>
				<tr>
					<td><asp:validationsummary id="valid" Runat="server" DisplayMode="BulletList" ShowSummary="True" ShowMessageBox="True"></asp:validationsummary></td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</table>
    </div>
    </form>
</body>
</html>
