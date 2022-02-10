<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeneralTNTC70A.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.GeneralTNTC70A" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MiseReportsHeader" Src="../UserControls/MiseReportsHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
         <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="javascript">

		    function ShowScrollPopup(srcScreen, KeyField, OperMode, sTitle, Width, Height) {
		        alert('hi');
		    }
		</script>
</head>
<body>
    <form id="TNTC70A" runat="server">
     <TABLE id="Table1" class="tableleftbgcolor" border="0" cellSpacing="0" cellPadding="0"
				width="100%" height="100%">
				<TR>
					<TD colSpan="2"><uc1:MiseReportsHeader id="MiseReportsHeader1" runat="server"></uc1:MiseReportsHeader></TD>
				</TR>
      </TABLE>

<table width="100%"><tr><td>
        <table style="width:100%;">
            <tr>
                <td class="formtitle" colspan="5" align="center">
                    General TNTC70A
         </td>
            </tr>
            <tr><td class="mandatory">
            From Date :
            </td><td>
            <asp:textbox id="txtFromDate" MaxLength="10" runat="server" CssClass="formlines" onblur="chkbadchar(this);">
            </asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
			href="javascript:show_calendar('txtFromDate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
             <asp:requiredfieldvalidator id="rfvDate" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtFromDate"
										ErrorMessage="*"></asp:requiredfieldvalidator>
                                 <asp:regularexpressionvalidator id="revTranDate" runat="server" CssClass="validatemessage" 
ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
ControlToValidate="txtFromDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>

            </td>
            <td class="mandatory">TO Date:</td>
            <td> <asp:textbox id="txtTODate" MaxLength="10" runat="server" CssClass="formlines" onblur="chkbadchar(this);">
            </asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
			href="javascript:show_calendar('txtTODate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
             <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtTODate"
										ErrorMessage="*"></asp:requiredfieldvalidator>
                                <asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" 
ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
ControlToValidate="txtTODate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></td>
                                  <td><asp:Button ID="btnSbmit" CssClass="formbuttons" Text="View" runat="server" 
                                          onclick="btnSbmit_Click" /></td>
            </tr>
            </table>
                <tr><td>
                <iframe id="frame1" runat="server" src="" target="_blank" height="470" width="100%"></iframe>
                </td></tr>
                <tr>
					<td colSpan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr></td></tr></table>
      
     
                
    </form>

</body>
</html>
