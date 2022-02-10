<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.List" %>

<%@ Register src="../UserControls/MiseReportsHeader.ascx" tagname="MiseReportsHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

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
    <style type="text/css">
        #iframe1
        {
            width: 1371px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:MiseReportsHeader ID="MiseReportsHeader1" runat="server" />
  <table border="0" cellpadding="3" cellspacing="0" class="brdr" width="100%">
        <tr>
            <td align="center" class="formtitle" colspan="5">
                List
            </td>
        </tr>
        <tr>
            <td align="left" width="15%">
                    <asp:Label ID="Label1" runat="server" CssClass="mandatory" 
                        Text="Enter From Date:&nbsp;"></asp:Label>
            </td>
            <td align="left" width="30%">
     
   <asp:textbox id="txtFromDate" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox>
   <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
			href="javascript:show_calendar('txtFromDate')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>
             <asp:requiredfieldvalidator id="rfvDate" runat="server"  CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtFromDate"
										ErrorMessage="*"></asp:requiredfieldvalidator>
                                 <asp:regularexpressionvalidator id="revTranDate" runat="server" CssClass="validatemessage" 
ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
ControlToValidate="txtFromDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
            </td>
            <td align="left" width="15%">


     
                    <asp:Label ID="Label2" runat="server" CssClass="mandatory" 
                        Text="Enter To Date: "></asp:Label>
            </td>
            <td align="left" width="30%">
                    <asp:textbox id="txtToDate" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('txtToDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT>
									<asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" ControlToValidate="txtToDate"
										ErrorMessage="*"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtToDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
            </td>
            <td align="center" width="10%">
                <asp:Button ID="btnView" runat="server" CssClass="formbuttons" Text="View" Width="100px"
                    OnClick="btnView_Click" Height="19px"></asp:Button>
            </td>
        </tr>
        </table>
    
               <iframe id="iframe1" runat="server" src="" height="470"></iframe>
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    <br />
    </form>
</body>
</html>
