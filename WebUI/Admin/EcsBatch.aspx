<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Page language="c#" Codebehind="EcsBatch.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.EcsBatch" %>
<%@ Register src="../UserControls/EcsMenus.ascx" tagname="EcsMenus" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>SAReportHome</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	    <style type="text/css">
            .style1
            {
                width: 100%;
            }
        </style>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="frmSAReportHome" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
                     
					<td vAlign="top" align="center" height="100%">
						<table cellSpacing="0" cellPadding="0" width="100%" border="0" >
                            <tr>
                                <td>  
       
                                 
                                    <uc2:EcsMenus ID="EcsMenus1" runat="server" />
       
                                 
                                 </td>
                            </tr>
                        </table>
                         </br>
                        <table class="parabr" cellSpacing="5" cellPadding="2" width="682" align="center" border="0"
							style="WIDTH: 682px; HEIGHT: 395px">
							<TBODY>
								<tr>
									<td class="rptHead" colSpan="5">ECS Batch Assigning</td>
								</tr>
                                 
								<tr>
									<td align="right" width="200"><asp:label id="lblFromToken" CssClass="mandatory" Runat="server"> Token No.</asp:label></td>
									<td align="left" width="400">
										<asp:DropDownList style="Z-INDEX: 0" id="CboTokenYear" runat="server" CssClass="formlines"></asp:DropDownList><asp:textbox id="txttokenno" tabIndex="2" CssClass="formlines" Runat="server" AutoPostBack="True" onblur="chkbadchar(this);" ontextchanged="txttokenno_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator1" CssClass="mandatory" ErrorMessage="*" ControlToValidate="txttokenno"
											Runat="server"></asp:requiredfieldvalidator>
										<asp:imagebutton id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
											CausesValidation="False" onclick="ibtnTokenGo_Click" Width="18px"></asp:imagebutton><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtTokenNo"
											ErrorMessage="Data required"></asp:requiredfieldvalidator></td>
									<TD colSpan="2"><asp:label id="lblMessage" CssClass="validatemessage" ForeColor="Red" Runat="server"></asp:label></TD>
								<tr>
									<td align="right"><asp:label id="lbldpcode" CssClass="mandatory" Runat="server"> Dpcode</asp:label></td>
									<td colspan="2" style="WIDTH: 352px"><asp:textbox id="txtdpcode" CssClass="formlines" onblur="chkbadchar(this);" Runat="server" Enabled="false"></asp:textbox></td>
								</tr>
								<tr>
									<td align="right"><asp:label id="lbldocode" CssClass="mandatory" Runat="server"> DOCode</asp:label></td>
									<td colspan="2" style="WIDTH: 352px"><asp:textbox id="txtdocode" CssClass="formlines" onblur="chkbadchar(this);" Runat="server" Enabled="false"></asp:textbox></td>
								</tr>
								<tr>
									<td align="right"><asp:label id="lblamount" CssClass="mandatory" Runat="server">Bill Amount</asp:label></td>
									<td style="WIDTH: 352px"><asp:textbox id="txtBillamount"  onblur="chkbadchar(this);" CssClass="formlines" Runat="server" Enabled="false" Width="112px"></asp:textbox>
										<asp:label id="Label5" CssClass="mandatory" Runat="server" Width="64px">P.Tax</asp:label><asp:textbox id="txtptax" CssClass="formlines" Runat="server" Enabled="False" Width="112px" onblur="chkbadchar(this);"></asp:textbox></td>
								</tr>
								<tr>
									<td align="right"><asp:label id="Label8" CssClass="mandatory" Runat="server">NSD Amount</asp:label></td>
									<td style="WIDTH: 352px"><asp:textbox id="txtnsd" CssClass="formlines" Runat="server" Enabled="false" Width="112px" onblur="chkbadchar(this);"></asp:textbox>
										<asp:label id="Label9" CssClass="mandatory" Runat="server" Width="64px">ECS Net</asp:label><asp:textbox id="txtecs" CssClass="formlines" Runat="server" Enabled="False" Width="112px" onblur="chkbadchar(this);"></asp:textbox></td>
								</tr>
								<tr>
									<td align="right"><asp:label id="Label2" CssClass="mandatory" Runat="server">Bill Status</asp:label></td>
									<TD vAlign="top" colSpan="2" style="WIDTH: 352px">
										<asp:DropDownList id="Cbobillstatus" runat="server" CssClass="formlines" Enabled="False" Width="200px">
											<asp:ListItem Value="0" Selected="true">Select Bill Status</asp:ListItem>
											<asp:ListItem Value="1">Bill submitted at counter</asp:ListItem>
											<asp:ListItem Value="2">Auditor-1 Processing</asp:ListItem>
											<asp:ListItem Value="3">Auditor-1 Passed</asp:ListItem>
											<asp:ListItem Value="4">Auditor-2 Processing</asp:ListItem>
											<asp:ListItem Value="5">Auditor-2 Passed</asp:ListItem>
											<asp:ListItem Value="6">Auditor-3 Processing</asp:ListItem>
											<asp:ListItem Value="7">Auditor-3 Passed</asp:ListItem>
											<asp:ListItem Value="8">Cheque Printing</asp:ListItem>
											<asp:ListItem Value="9">Cheque Delivered</asp:ListItem>
											<asp:ListItem Value="10">Input Processing</asp:ListItem>
										</asp:DropDownList></TD>
								</tr>
								<tr>
									<td align="right"><asp:label id="Label1" CssClass="mandatory" Runat="server">Ecs Status</asp:label></td>
									<TD vAlign="top" colSpan="2" style="WIDTH: 352px">
										<asp:DropDownList id="CboEcs" runat="server" CssClass="formlines" Enabled="False">
											<asp:ListItem Value="0" Selected="True">Non ECS</asp:ListItem>
											<asp:ListItem Value="1">ECS Non Salary</asp:ListItem>
											<asp:ListItem Value="2">ECS Salary</asp:ListItem>
										</asp:DropDownList></TD>
								</tr>
								<tr>
									<td align="right"><asp:label id="Label4" CssClass="mandatory" Runat="server">Existing Batch</asp:label></td>
									<td colspan="2" style="WIDTH: 352px"><asp:textbox id="txtebatch" CssClass="formlines" Runat="server" Enabled="False" onblur="chkbadchar(this);"></asp:textbox></td>
								</tr>
								<tr>
									<td align="right"><asp:label id="Label3" CssClass="mandatory" Runat="server">Batch</asp:label></td>
									<td colspan="2" style="WIDTH: 352px"><asp:textbox id="txtBatch" CssClass="formlines" Runat="server" Enabled="False" onblur="chkbadchar(this);"></asp:textbox></td>
								</tr>
								<tr>
									<td align="center" colSpan="5"><asp:button id="btnSubmit" CssClass="formbuttons" Runat="server" Width="100px" Text="Save" onclick="btnSubmit_Click"></asp:button>
                                        <asp:button id="btncancel" CssClass="formbuttons" Runat="server" Width="100px" 
                                            Text="Clear" onclick="btncancel_Click" CausesValidation="False"></asp:button></td>
								</tr>
							</TBODY>
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
	</body>
</HTML>
