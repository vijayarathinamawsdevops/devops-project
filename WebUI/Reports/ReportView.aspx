<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportView.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.ReportView" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript">
        function ShowReport() {
            document.getElementById("repFrame").src = document.getElementById("hidUrl").value;

        }
		
		
		</script>
</head>
<body onload="ShowReport();" >
<form id="Form1" method="post" runat="server"  >
			<input id="hidUrl" style="Z-INDEX: 102; LEFT: 288px; WIDTH: 171px; POSITION: absolute; TOP: 176px; HEIGHT: 22px"  
				type="hidden" size="23" name="Hidden1" runat="server"> 
            <IMG style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 0px" alt="" 
                src="images\progress.gif">
			<asp:Label id="Label1" style="Z-INDEX: 105; LEFT: 208px; POSITION: absolute; TOP: 128px" runat="server"
				Width="356px" Font-Bold="True" Font-Size="Medium" ForeColor="#804000">Please wait..Report generation in progress...</asp:Label>
			<iframe id="I1" frameborder="no" name="I1" 
                style="Z-INDEX: 101; LEFT: 424px; WIDTH: 8px; POSITION: absolute; TOP: 144px; HEIGHT: 8px">
			</iframe>
		</form>


        

        
</body>
</html>
 