<%@ Page language="c#" Codebehind="alert.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.alert" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server"> 
 private void Button1_Click(object sender, EventArgs e) 
    { 
        string message = "MessageBoxTest"; 
        string alertScript = "<script language=JavaScript>"; 
           alertScript += "alert('" +message +"');"; 
	       alertScript += "</script" +">"; 

       if (!IsClientScriptBlockRegistered("alert")) 
                
 			this.RegisterClientScriptBlock("alert", alertScript); 
    } 


		</script>
<HTML>
	<HEAD>
		<title>alert</title>
		
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form runat="server" ID="Form1">
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button id="Button1" onclick="Button1_Click" runat="server" Text="Button"></asp:Button>
			&nbsp;</form>
	</body>
</HTML>
