<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Encryption.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.Encryption" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>eKaruvoolam - Encrytion</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="" name="vs_targetSchema">
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
</head>
<body>
    <form id="form1" runat="server">
     <TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="parabr" id="Table2" cellSpacing="2" cellPadding="2" width="98%" border="0">
							<TR>
								<TD align="center" colspan="2"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Encryption</asp:label></TD>
							</TR>
                            <tr>
                            <td align="left" width="15%">
                            <asp:Label ID="lblcon" runat="server" CssClass="mandatory" Text="Connection String:"></asp:Label>
                             </td>
                            <td><asp:TextBox ID="txtConnection" TextMode="MultiLine" runat="server" CssClass="formlines" Width="60%" Height="60px"></asp:TextBox></td>
                            
                            </tr>
                            <tr><td  align="left" width="15%">
                            <asp:Label ID="lblencrypt" runat="server" CssClass="mandatory" Text="Encrypted string:"></asp:Label>
                             </td>
                            <td><asp:TextBox ID="txtencrypted" runat="server" TextMode="MultiLine" CssClass="formlines" ReadOnly="true" Width="60%" Height="60px"></asp:TextBox></td></tr>
                            <tr> 
                            <td colspan="2"><asp:Button ID="btnEncrypt" Text="Encrypt" runat="server" 
                                    CssClass="formbuttons" onclick="btnEncrypt_Click" /></td>
                             
                            
                            <tr>
					<td colspan="2" ><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD colspan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR></TABLE></td></tr></TABLE>
    
     
    </form>
</body>
</html>
