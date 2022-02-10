<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChequeRealised.aspx.cs" Inherits="eKaruvoolam.WebUI.Cheque.ChequeRealised" %>

<%@ Register TagPrefix="uc1" TagName="ChequeMenus" Src="../UserControls/ChequeMenus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Cheque Cancellation</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">  
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   


        <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>		
		<script language="javascript">

		    function ShowScrollPopup(srcScreen, KeyField, OperMode, sTitle, Width, Height) {
		        alert('hi');
		    }
		</script>



        <script language="javascript">
            function getMessage() {
                var ans;
                ans = window.confirm('Are you sure?');

                if (ans == true) {

                    document.getElementById('hdfConfirm').value = 1;
                    return true;
                }
                else {
                    document.getElementById('hdfConfirm').value = 0;
                    return false;
                }

            }
        </script>

	</HEAD>
	<body id="Cheque_ChequeRealisation" MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="chequecancellation" method="post" runat="server">
			<TABLE id="Table1" width="100%" border="0" class="tableleftbgcolor" cellpadding="0" cellspacing="0"
				height="100%">
				<TR>
					<TD><uc1:ChequeMenus id="ChequeMenus1" runat="server"></uc1:ChequeMenus></TD>
				</TR>
				<TR>
					<td valign="top" height="100%"><br>
						<br>
						<table width="70%" cellpadding="4" cellspacing="1" border="0" align="center" class="parabr">
							<tr>
								<td colspan="5" align="center" class="formtitle"><asp:Label id="frmtitle" runat="server" CssClass="formtitle">Cheque Realisation</asp:Label></td>
							</tr>
							<TR>
								<TD align="right">
									<asp:Label id="lblCheque" runat="server" Width="176px" CssClass="mandatory">Enter Cheque Number</asp:Label></TD>
								<td>
									<asp:TextBox id="txtChequeNo" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:TextBox></td>
								<td align="right">
									<asp:Label id="lblchequeto" runat="server" Width="176px" CssClass="mandatory">Cheque Year</asp:Label></td>
								<td>
									<asp:DropDownList ID="drpChequeYear" runat="server" CssClass="drptxt" 
                                        Width="160px">
                                        <asp:ListItem Value="-1">--Select--</asp:ListItem>
                                        <asp:ListItem>2010</asp:ListItem>
                                        <asp:ListItem>2011</asp:ListItem>
                                        <asp:ListItem>2012</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
								<td align="center">
									<asp:Button id="btnViewDetails" runat="server" Width="142px" 
                                        CssClass="formbuttons" Text="View Details"                                      
                                        onclick="btnViewDetails_Click" ></asp:Button>
								</td>
							</TR>
							<TR>
								<TD align="right">
									&nbsp;</TD>
								<td>
									&nbsp;</td>
								<td>
									&nbsp;</td>
								<td>
									&nbsp;</td>
								<td>
									&nbsp;</td>
							</TR>
							<TR>
								<TD colspan="5" vAlign="middle">
									<asp:Panel ID="pnlChequeDetails" runat="server" Visible="False">
                                        <table style="width:100%;">
                                            <tr>
                                                <td align="right" width="50%" style="padding-right: 5%">
                                                    <asp:Label ID="Label1" runat="server" CssClass="mandatory" Text="Token No"></asp:Label>
                                                </td>
                                                <td style="padding-left: 5%">
                                                    <asp:DropDownList ID="drpTokenNo" runat="server" 
                                                        CssClass="drptxt" Height="16px" 
                                                        onselectedindexchanged="drpTokenNo_SelectedIndexChanged" Width="136px">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" width="50%" style="padding-right: 5%">
                                                    <asp:Label ID="Label2" runat="server" CssClass="mandatory" Text="To Whom"></asp:Label>
                                                </td>
                                                <td style="padding-left: 5%">
                                                    <asp:TextBox ID="txtToWhom" runat="server" CssClass="formlines" ReadOnly="True" 
                                                        TextMode="MultiLine" Width="136px" onblur="chkbadchar(this);"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" width="50%" style="padding-right: 5%">
                                                    <asp:Label ID="Label5" runat="server" CssClass="mandatory" Text="DOCode"></asp:Label>
                                                </td>
                                                <td style="padding-left: 5%">
                                                    <asp:TextBox ID="txtDOCode" runat="server" CssClass="formlines" ReadOnly="True" 
                                                        Width="136px" onblur="chkbadchar(this);"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" width="50%" style="padding-right: 5%">
                                                    <asp:Label ID="Label4" runat="server" CssClass="mandatory" Text="Cheque Amount"></asp:Label>
                                                </td>
                                                <td style="padding-left: 5%">
                                                    <asp:TextBox ID="txtChequeAmount" runat="server" CssClass="formlines" 
                                                        ReadOnly="True" Width="136px" onblur="chkbadchar(this);"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" width="50%" style="padding-right: 5%">
                                                    <asp:Label ID="Label3" runat="server" CssClass="mandatory" 
                                                        Text="Cheque Issue Date"></asp:Label>
                                                </td>
                                                <td style="padding-left: 5%">
                                                    <asp:TextBox ID="txtChequeDate" runat="server" CssClass="formlines" 
                                                        ReadOnly="True" Width="136px" onblur="chkbadchar(this);"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" width="50%" style="padding-right: 5%">
                                                    <asp:Label ID="Label6" runat="server" CssClass="mandatory" 
                                                        Text="Cheque Delivered Date"></asp:Label>
                                                </td>
                                                <td style="padding-left: 5%">
                                                    <asp:TextBox ID="txtChequeDyDate" runat="server" CssClass="formlines" 
                                                        ReadOnly="True" Width="136px" onblur="chkbadchar(this);"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" width="50%" style="padding-right: 5%">
                                                    <asp:Label ID="lblReason" runat="server" CssClass="mandatory" 
                                                        Text="Enter Realisation Date"></asp:Label>
                                                </td>
                                                <td style="padding-left: 5%">
                                                <asp:textbox id="txtDate" runat="server" CssClass="formlines" MaxLength="10" 
                                                        Width="136px" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('txtDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT>
									<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator><FONT 
            face="Courier New" color=#6600ff><STRONG></STRONG></FONT>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td width="50%" align="right" style="padding-right: 5%">
                                                    &nbsp;</td>
                                                <td style="padding-left: 5%">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="50%" align="right" style="padding-right: 5%">
                                                    &nbsp;</td>
                                                <td style="padding-left: 5%">
                                                    <asp:Button ID="btnChequeRevalidate" runat="server" CssClass="formbuttons" 
                                                        onclick="btnChequeRevalidate_Click" Text="Cheque Realised" 
                                                        OnClientClick="return getMessage();" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
								</TD>
							</TR>
							<tr>
								<td colspan="2"><asp:Label id="lblMessage" runat="server" Width="335px" CssClass="validatemessage"></asp:Label></td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>
                                    <asp:HiddenField ID="hdfConfirm" runat="server" />
                                </td>
							</tr>
						</table>
					</td>
				</TR>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
