<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChequeRealisationReport.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.ChequeRealisationReport" %>

 
<%--<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>--%>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/MiseReportsHeader.ascx" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
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
    <form id="form1" runat="server">
    <TABLE id="Table1" class="tableleftbgcolor" border="0" cellSpacing="0" cellPadding="0"
				width="100%" height="100%">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>			
    
 
    <table width="100%"><tr><td>
        <table style="width:100%;">
            <tr>
                <td class="formtitle" colspan="5" align="center">
                    Cheque Status Report</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" CssClass="mandatory" 
                        Text="Enter From Cheque Date:&nbsp;"></asp:Label>
                </td>
                <td>
     
   <asp:textbox id="txtFromDate" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('txtFromDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT>
									<asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ControlToValidate="txtFromDate"
										ErrorMessage="Date Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="revTranDate" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtFromDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator><FONT 
            face="Courier New" color=#6600ff><STRONG></STRONG></FONT>
     
                </td>
                <td>


     
                    <asp:Label ID="Label2" runat="server" CssClass="mandatory" 
                        Text="Enter To Cheque Date: "></asp:Label>
                </td>
                <td>
                    <asp:textbox id="txtToDate" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('txtToDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT>
									<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtToDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator><FONT 
            face="Courier New" color=#6600ff><STRONG></STRONG></FONT>
			 

          
                </td>
                <td>
                    <asp:Button ID="BtnDate" runat="server" Text="View Report" onclick="BtnDate_Click" 
                        CssClass="formbuttons" /></td>
            </tr>
            </table>
        </td>
    </tr>
     <tr>
     <td>


         <asp:Label ID="lblMessage" runat="server" CssClass="validatemessage" 
             Font-Size="Medium"></asp:Label>
			 

          
     </td>
     </tr>
     <tr>
     <td>
      <iframe id="frame1" src=""  target="_blank" runat="server" height="470" width="100%"/>
         </td>
     </tr>
    </table>
    <tr>
					<td colSpan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
     </TABLE>

    
    
    </form>
</body>
</html>
