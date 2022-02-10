
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AMCRChallanInput.aspx.cs" Inherits="eKaruvoolam.WebUI.AMReports.AMCRChallanInput" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CRDetails" Src="../UserControls/CRDetails.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AMCRChallanInput</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
</head>
<body id="AM_AMCRChallan" MS_POSITIONING="GridLayout">
		<form id="CRChallanInput" method="post" runat="server">

        
         
			<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0" height="100%">
				<TR>
                     
					<TD colSpan="4">
						<uc1:TopHeader id="TopHeader1" runat="server"></uc1:TopHeader></TD>
				</TR>
				<TR>
					<TD align="center" class="formtitle" style="HEIGHT: 19px"><asp:Label id="lblHeader" runat="server" CssClass="formtitle" DESIGNTIMEDRAGDROP="14">CR Challan Input Entry</asp:Label></TD>
				</TR>
				<tr>
					<td align="center" valign="top" height="100%"> 

                        
                        
                         
						<table border="0" cellpadding="2" cellspacing="1" width="98%">
							<TR>
								<TD style="WIDTH: 94px"><asp:label id="lblChallanNo" runat="server" CssClass="mandatory">Challan Number</asp:label></TD>
								<TD width="431" style="WIDTH: 431px" align="left"><asp:dropdownlist id="CboChallanYear" runat="server" CssClass="formlines" Width="60"></asp:dropdownlist>
									<asp:dropdownlist id="DrpStocode" runat="server" CssClass="formlines" Width="130px"></asp:dropdownlist>
									<asp:textbox id="txtChallanNo" Width="145px" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>&nbsp;&nbsp;<asp:imagebutton 
                                        id="ibtnTokenGo" runat="server" ImageAlign="AbsBottom" ImageUrl="../Images/go.gif"
										CausesValidation="False" onclick="ibtnTokenGo_Click" style="height: 18px"></asp:imagebutton></TD>
								<TD   style="HEIGHT: 13px; WIDTH: 94px" align="left"><asp:label id="Label1" runat="server" CssClass="mandatory">Payment Type</asp:label></TD>
								<TD style="HEIGHT: 13px" align="left"><asp:dropdownlist id="cboPaymentType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD><asp:label id="Label2" runat="server" CssClass="mandatory">DO Code</asp:label></TD>
								<TD align="left">
									<asp:TextBox id="txtDOCode" runat="server" CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);"
 ontextchanged="txtDOCode_TextChanged"></asp:TextBox>
									<asp:DropDownList id="cboDrawingOfficer" runat="server" CssClass="drptxt" AutoPostBack="True" onselectedindexchanged="cboDrawingOfficer_SelectedIndexChanged"></asp:DropDownList></TD>
								<TD align="left"><asp:label id="Label3" runat="server" CssClass="mandatory">DO Type</asp:label></TD>
								<TD align="left"><asp:dropdownlist id="cboDOType" runat="server" CssClass="drptxt"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD><asp:label id="Label4" runat="server" CssClass="mandatory">DP Code</asp:label></TD>
								<TD align="left"><asp:textbox id="txtDPCode" runat="server" CssClass="formlines" MaxLength="4" ontextchanged="txtDPCode_TextChanged" onblur="chkbadchar(this);"></asp:textbox>
									<asp:RegularExpressionValidator id="revDPCode" runat="server" CssClass="validatemessage" ErrorMessage="Data Incorrect"
										ValidationExpression="[0-9]{4}" ControlToValidate="txtDPCode"></asp:RegularExpressionValidator></TD>
                                        <TD align="left"><asp:label id="lblDateofTr" runat="server" CssClass="mandatory">AM Date</asp:label></TD>
								<TD style="WIDTH: 431px" align="left"><asp:textbox id="txtDateofTr" MaxLength="10" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
                                <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtDateofTr')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A>
                                        <asp:Label id="Label5" runat="server" CssClass="mandatory">(dd/mm/yyyy)</asp:Label>
                                        <asp:requiredfieldvalidator id="rfvDate" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtDateofTr"
										ErrorMessage=" Date Required"></asp:requiredfieldvalidator>

                                 <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format"  ControlToValidate="txtDateofTr"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                
                                        </TD>
								 
							</TR>
							<TR>
								<TD><asp:label id="Label6" runat="server" CssClass="mandatory">Challan Amount</asp:label></TD>
								<TD align="left"><asp:textbox id="txtBillAmount" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox></TD>
								 <td align="left"><asp:label id="lblAmsign" runat="server" CssClass="mandatory">AM Sign</asp:label></td>
                                <td align="left"> 
                                 <asp:dropdownlist ID="DDLAMSign" runat="server"><asp:ListItem Value="0" >Select</asp:ListItem><asp:ListItem>+</asp:ListItem><asp:ListItem>-</asp:ListItem></asp:dropdownlist> 
                                    <asp:requiredfieldvalidator id="rvDDLAMSign" runat="server" InitialValue="0"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="DDLAMSign"
										ErrorMessage="Select Sign"></asp:requiredfieldvalidator>
                                 </td>
							</TR>
							<TR>
								<TD colSpan="3"><uc1:crdetails id="CRDetails1" runat="server"></uc1:crdetails></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save"
										Width="100px" onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnDelete" CausesValidation="False" runat="server" CssClass="formbuttons" Text="Delete"
										Width="100px" onclick="btnDelete_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="btnClear" CausesValidation="False" runat="server" CssClass="formbuttons" Text="Clear"
										Width="100px" onclick="btnClear_Click"></asp:button>
								</TD>
							</TR>
						</table>
                        
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td><br>
						<uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</html>
