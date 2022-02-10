<%@ Page language="c#" Codebehind="PrintDoc.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Scripts.PrintDoc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>PrintDoc</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK REL="stylesheet" TYPE="text/css" HREF="../styles/style1.css">
		<script language="javascript">
	function body_onload()
	{
	var varPrintStuff;
	
		PrintingPane.innerHTML = "<Table><TR class=FeildsText><TD>&nbsp;</TD></TR></Table><Table><TR>&nbsp;</TR><TR>&nbsp;</TR><TR>&nbsp;</TR><TR>&nbsp;</TR></Table><table border='1'  cellspacing='0' cellpadding='0' WIDTH=100%>" + opener.document.all("ResultPane").innerHTML + "</table>";
		//var b
		//b=PrintingPane.innerHTML.toString ()		
	}
	function window.onbeforeprint(){
		varPrintStuff = document.body.innerHTML;
		document.body.innerHTML = PrintingPane.innerHTML 
	}
	function window.onafterprint(){
	   document.body.innerHTML = varPrintStuff;
	}
	function DatedOn()
{
  var d, s = "";
  d = new Date();
  s += d.getDate() + "/";
  s += (d.getMonth() + 1) + "/";
  
  s += d.getYear();
  return(s);
}
		</script>
	</head>
	<body MS_POSITIONING="GridLayout" OnLoad="body_onload()">
		<form id="PrintDoc" method="post" runat="server">
			<Div ID="PrintingPane">
			</Div>
			<Input TYPE="button" NAME="printBut" VALUE="Print" OnClick="javascript:window.print()"
				ID="Button1">
		</form>
	</body>
</html>
