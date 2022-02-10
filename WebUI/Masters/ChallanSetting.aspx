<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChallanSetting.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.ChallanSetting" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>
<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - Challan Settings</title>
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
								<TD align="center" colspan="5"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">General Challan Setting</asp:label></TD>
							</TR>
							<TR>
								<TD width="15%">
									<asp:Label id="lblECSSal" runat="server" Width="190px" CssClass="mandatory">Challan Year : </asp:Label></TD>
								<TD width="35%">
									<asp:TextBox id="txtChallanYear" runat="server" CssClass="formlines" 
                                        MaxLength="10" onblur="chkbadchar(this);" Width="170px"></asp:TextBox>
								<TD width="15%">
                                    <asp:Label id="Label1" runat="server" Width="96px" CssClass="mandatory">Treasury Code : </asp:Label>
									</TD>
								<TD width="35%" align="left" colspan="2">
									<asp:TextBox id="txtTOCode" runat="server" CssClass="formlines" 
                                        MaxLength="4" Width="150px" onblur="chkbadchar(this);"></asp:TextBox>
                                    </TD>
							</TR>
							<TR>
								<TD width="15%">
									<asp:Label ID="lblAccount" runat="server" CssClass="mandatory">Last Challan No : </asp:Label>
                                </TD>
								<TD width="35%">
									<asp:TextBox ID="txtChallanNo" runat="server" CssClass="formlines" 
                                        Width="170px"></asp:TextBox>
                                    </TD>
								<TD width="15%">
									<asp:Label ID="lblAccount0" runat="server" CssClass="mandatory">Last PDChecque No : </asp:Label>
                                </TD>
								<TD width="35%" align="left" style="width: 0%">
									<asp:TextBox id="txtTokenNo" runat="server" CssClass="formlines" 
                                        MaxLength="15" Width="150px" onblur="chkbadchar(this);"></asp:TextBox>
                                    </TD>
								<TD width="35%" align="right" style="width: 17%">
									&nbsp;</TD>
							</TR>
							<TR>
								<TD width="15%">
									<asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>
									<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                </TD>
								<TD width="35%">
									&nbsp;</TD>
								<TD width="15%">
									&nbsp;</TD>
								<TD width="35%" align="left" style="width: 0%">
									<asp:Button ID="btnSave" runat="server" CssClass="formbuttons" Height="17px" 
                                        Text="Save" Width="80px" onclick="btnSave_Click" />
									<asp:Button ID="btnClear" runat="server" CssClass="formbuttons" Height="17px" 
                                        Text="Clear" Width="80px" onclick="btnClear_Click" />
                                    </TD>
								<TD width="35%" align="right" style="width: 17%">
									&nbsp;</TD>
							</TR>
							</TABLE>
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
