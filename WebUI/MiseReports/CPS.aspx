<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CPS.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.CPS" %>

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
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="javascript">

		    function ShowScrollPopup(srcScreen, KeyField, OperMode, sTitle, Width, Height) {
		        alert('hi');
		    }
		</script>
    <style type="text/css">
        #frame1
        {
            height: 361px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <TABLE id="Table1" class="tableleftbgcolor" border="0" cellSpacing="0" cellPadding="0"
				width="100%" height="100%">
				<TR>
					<TD colSpan="2">
                        <uc1:MiseReportsHeader ID="MiseReportsHeader1" runat="server" />
                    </TD>
				</TR></TABLE>
<table width="100%"><tr><td>
        <table style="width:100%;">
            <tr>
                <td class="formtitle" colspan="5" align="center">
                    CPS Report</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMonth" runat="server" CssClass="mandatory" 
                        Text="Enter Month"></asp:Label>
                </td>
                <td>
                  <asp:DropDownList ID="DDLMonth" runat="server" CssClass="formlines" Width="100px">
                   <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem Value="01">JAN</asp:ListItem>
                    <asp:ListItem Value="02">FEB</asp:ListItem>
                    <asp:ListItem Value="03">MARCH</asp:ListItem>
                    <asp:ListItem Value="04">APRIL</asp:ListItem>
                    <asp:ListItem Value="05">MAY</asp:ListItem>
                    <asp:ListItem Value="06">JUNE</asp:ListItem>
                    <asp:ListItem Value="07">JULY</asp:ListItem>
                    <asp:ListItem Value="08">AUG</asp:ListItem>
                    <asp:ListItem Value="09">SEPT</asp:ListItem>
                    <asp:ListItem Value="10">OCT</asp:ListItem>
                    <asp:ListItem Value="11">NOV</asp:ListItem>
                    <asp:ListItem Value="12">DEC</asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="rfvmonth" runat="server"  ControlToValidate="DDLMonth" InitialValue="0" ErrorMessage="Select Month" CssClass="validatemessage"></asp:RequiredFieldValidator>
                </td>
                <td>


     
                    <asp:Label ID="lblYear" runat="server" CssClass="mandatory" 
                        Text="Enter Year"></asp:Label>
                </td>
                <td>
                 
                 <asp:DropDownList ID="DDLyear" runat="server" CssClass="formlines" Width="100px">
                 <asp:ListItem Value="0">--Select--</asp:ListItem>                    
                    <asp:ListItem Value="2010">2010</asp:ListItem>
                    <asp:ListItem Value="2011">2011</asp:ListItem>
                    <asp:ListItem Value="2012">2012</asp:ListItem>
                    <asp:ListItem Value="2013">2013</asp:ListItem>
                    <asp:ListItem Value="2014">2014</asp:ListItem>
                    <asp:ListItem Value="2015">2015</asp:ListItem>
                    <asp:ListItem Value="2016">2016</asp:ListItem>
                    <asp:ListItem Value="2017">2017</asp:ListItem>
                    <asp:ListItem Value="2018">2018</asp:ListItem>
                    <asp:ListItem Value="2019">2019</asp:ListItem>
                    <asp:ListItem Value="2020">2020</asp:ListItem>
                 </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RefYear" ControlToValidate="DDLyear" runat="server" InitialValue="0" ErrorMessage="Select Year" CssClass="validatemessage"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="BtnCheck" runat="server" Text="View Report" onclick="BtnCheck_Click" 
                        CssClass="formbuttons" /></td>
            </tr>
             
            </table>
        </td>
    </tr>
      
     <tr>
     <td>
     
     
         <iframe id="frame1" src=""  target="_blank" runat="server" width="100%"/>

      
         </td> 
     </tr>
    </table>
 

    <table width="100%" height="100%">
    <tr>
					<td colSpan="2"><uc2:ErrorLabel ID="ErrorLabel1" runat="server" /></td>
				</tr>
				<tr>
					<td colSpan="2"><uc3:Footer ID="Footer1" runat="server" /></td>
				</tr>
     </table>
    </form>
</body>
</html>

         
         
