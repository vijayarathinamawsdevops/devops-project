<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ECSDateAssign.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.ECSDateAssign" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - ECS Date Assign</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
        <script src="../Scripts/date-picker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    <TABLE id="Table1" class="parabr" cellSpacing="2" cellPadding="1" width="98%" 
        border="0" align="center">
							<TR>
								<TD align="center" colspan="5"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">General Settings</asp:label></TD>
							</TR>
							<TR>
								<TD width="15%">
									<asp:Label id="lblECSSal" runat="server" Width="190px" CssClass="mandatory">Salary Settlement Date : </asp:Label></TD>
								<TD width="35%">
									<asp:TextBox id="txtSalEcsDate" runat="server" CssClass="formlines" 
                                        MaxLength="10" onblur="chkbadchar(this);" Width="150px"></asp:TextBox>
                                   <asp:CalendarExtender ID="CalendarExtender2" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtSalEcsDate">
                                   </asp:CalendarExtender></TD>
								<TD width="15%">
                                    <asp:Label id="Label1" runat="server" Width="72px" CssClass="mandatory">ECS Batch : </asp:Label>
									</TD>
								<TD width="35%" align="left" style="width: 0%">
									<asp:TextBox id="txtbatch" runat="server" CssClass="formlines" 
                                        MaxLength="2" Width="50px" onblur="chkbadchar(this);"></asp:TextBox>
                                    </TD>
								<TD width="35%" align="right" style="width: 17%">
									<asp:Button ID="btnSave" runat="server" CssClass="formbuttons" Height="17px" 
                                        Text="Save" Width="80px" onclick="btnSave_Click" />
									<asp:Button ID="btnClear" runat="server" CssClass="formbuttons" Height="17px" 
                                        Text="Clear" Width="80px" />
                                    </TD>
							</TR>
							<tr>
								<td colspan="2" class="style2"><asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label></td>
								<td class="style2"></td>
							</tr>
						</TABLE>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
