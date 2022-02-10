<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="eKaruvoolam.WebUI.SuperUser.MainMenu" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - SuperUser Menu</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
</head>
<body>
    <form id="form1" method="post" runat="server">
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    <table border="0" cellpadding="0" cellspacing="4" width="95%">
							<tr>
								<td>
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td><img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Super/AcctPen.aspx" class="linktxt">AcctPen</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Super/Refp4.aspx" class="linktxt">RefP4</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Super/Refdepp.aspx" class="linktxt">RefDepp</a></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
									</table>
								</td>
								<td valign="top">
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td><img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Super/Refp3.aspx" class="linktxt">RefP3</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Super/Refpen.aspx" class="linktxt">RefPen</a></td>
										</tr>
										<tr>
											<td><img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Super/Refdepr.aspx" class="linktxt">RefDepr</a></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
									</table>
								</td>
							</tr>
														
						</table>
    <br />
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
