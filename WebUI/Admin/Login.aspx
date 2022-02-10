<%@ Page Language="c#" CodeBehind="Login.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.Login" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="LoginFooter" Src="../UserControls/LoginFooter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title>eKaruvoolam - Login</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="../Styles/Style1.css" type="text/css" rel="stylesheet">

    <script language="javascript" type="text/javascript">
        function chkbadchar(obj) {
            var tempdata = obj.value;
            var mySplitResult = tempdata.split(" ");
            var myCars = new Array("--", ";--",
            //                ";",
            "/*", "*/", "._",
                             "char", "nchar", "varchar", "nvarchar", "alter",
                            "begin", "cast", "create", "cursor", "declare", "delete",
                            "drop", "end",
            //                                "or",
                            "exec", "execute",
                            "fetch", "insert",
                            "kill",
            //                                "open", 
                            "select", "sys", "sysobjects", "syscolumns",
                            "table", "update", "*",
                            "'",
                            "shutdown", "shut", "iisstop", "iisrestart");
            for (var i = 0; i < mySplitResult.length; i++) {
                for (var j = 0; j < myCars.length; j++) {
                    if (mySplitResult[i] == myCars[j]) {
                        alert("Enter Valid input");

                        obj.value = "";
                    }
                }
            }
        }

    </script>
    <script>
        var actualtitle = document.title + " "
        if (document.all || document.getElementById)
            scroll()
        function scroll() {

            today = new Date();
            sec = today.getSeconds();
            hr = today.getHours();
            min = today.getMinutes();
            if (hr < 12) { timeday = " AM"; }
            else { timeday = " PM"; }
            if (hr > 12) hr = hr - 12;
            if (hr <= 9) hr = "0" + hr;
            if (min <= 9) min = "0" + min;
            if (sec <= 9) sec = "0" + sec;
            var clocktext = " - " + hr + ":" + min + ":" + sec + timeday;
            clocktimer = setTimeout("scroll()", 1000);
            //document.title = actualtitle + clocktext; 
        }
        //			function setFocus()
        //			{
        //				document.getElementById("txtUserID").focus();
        //			}
    </script>
</head>
<body leftmargin="0" background="../Images/gray_pinstripe_bkg.gif" topmargin="0" <%--onload="setFocus()"--%>
    rightmargin="0">
    <form id="frmLogin" method="post" runat="server">
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
            <tr>
                <td background="../Images/bg_new.gif">
                    <img height="60" src="../Images/header.gif" width="700"></td>
            </tr>
            <tr>
                <td valign="top" height="100%">
                    <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td valign="top" width="25%" bgcolor="#ffffff">
                                <img height="350" src="../Images/main.jpg" width="254"></td>
                            <td valign="top" width="75%" bgcolor="#ffffff">
                                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tr>
                                        <td background="/webui/images/shadow.gif">
                                            <img height="11" src="../Images/shadow.gif" width="19"></td>
                                    </tr>
                                </table>
                                <div align="center">
                                    <p>
                                        <img height="53" src="../Images/name.gif" width="274">
                                    </p>
                                    <table cellspacing="0" cellpadding="0" width="85%" border="0">
                                        <tr>
                                            <td>
                                                <img height="190" src="../Images/login-2.jpg" align="absMiddle" border="0"
                                                    width="80%">
                                            </td>
                                            <td width="75%">
                                                <table cellspacing="2" cellpadding="2" width="80%"
                                                    style="background-image: url('../Images/twitterbg1.jpg'); background-repeat: no-repeat; table-layout: auto; width: 80%; height: 190px;">
                                                    <tr>
                                                        <td colspan="2">
                                                            <div align="center">
                                                                <asp:Label ID="lblAppversion" Visible="False"
                                                                    Font-Name="Tahoma" Font-Bold="True" Font-Size="10pt"
                                                                    runat="server" Font-Names="Tahoma" ForeColor="#C00000"></asp:Label>
                                                            </div>
                                                            <div align="center">
                                                                <asp:Label ID="Label2"
                                                                    Font-Name="Tahoma" Font-Bold="True" Font-Size="10pt"
                                                                    runat="server" Font-Names="verdana" ForeColor="#1306A7" Text="Version 5.0&nbsp;December 2012"></asp:Label>
                                                                <%--<STRONG>Version 5.0&nbsp;April 2012</STRONG>--%>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbl" align="right" width="50%">
                                                            <asp:Label ID="Label1" runat="server" CssClass="mandatorylog"
                                                                ToolTip="User Name">Choose language</asp:Label></td>
                                                        <td align="center">
                                                            <asp:DropDownList ID="drplanguage" runat="server" Width="120px"
                                                                CssClass="formlines" AutoPostBack="True">
                                                                <asp:ListItem Value="ENGLISH" Selected="True">English</asp:ListItem>
                                                                <asp:ListItem Value="TAMIL">Tamil</asp:ListItem>
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="lblUserName" runat="server" CssClass="mandatorylog"
                                                                ToolTip="User Name">UserID</asp:Label></td>
                                                        <td align="center">
                                                            <asp:TextBox ID="txtUserID" runat="server" CssClass="formlines"
                                                                onblur="return chkbadchar(this);" Width="120px"></asp:TextBox><asp:RequiredFieldValidator ID="rfvUserID" runat="server" CssClass="validatemessage" ControlToValidate="txtUserID"
                                                                    ErrorMessage="Data required">*</asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="40%" align="right">
                                                            <asp:Label ID="lblPassword" runat="server"
                                                                CssClass="mandatorylog" ToolTip="Password">Password</asp:Label></td>
                                                        <td align="center">
                                                            <asp:TextBox ID="txtPassword" runat="server" CssClass="formlines"
                                                                TextMode="Password" onblur="chkbadchar(this);" Width="120px">input</asp:TextBox><asp:RequiredFieldValidator ID="rfvPassword" runat="server" CssClass="validatemessage" ControlToValidate="txtPassword"
                                                                    ErrorMessage="Data Required">*</asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="lblSecPassword" runat="server" CssClass="mandatorylog"
                                                                ToolTip="Secondary Password">Secondary Password</asp:Label></td>
                                                        <td align="center">
                                                            <asp:TextBox ID="txtSecondaryPwd" runat="server" CssClass="formlines"
                                                                TextMode="Password" onblur="chkbadchar(this);" Width="120px">input</asp:TextBox><asp:RequiredFieldValidator ID="rfvSecondaryPwd" runat="server" CssClass="validatemessage" ControlToValidate="txtSecondaryPwd"
                                                                    ErrorMessage="Data required">*</asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="lblcaptcha" runat="server" CssClass="mandatorylog"
                                                                ToolTip="Captcha">Enter Image Text</asp:Label></td>
                                                        <td align="center">
                                                            <cc1:captchacontrol id="CaptchaControl1" runat="server" enableviewstate="False"
                                                                captchamaxtimeout="1200" cssclass="mandatorylog" width="150px" CaptchaMinTimeout="0" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">&nbsp;</td>
                                                        <td align="center">
                                                            <asp:TextBox ID="txtimgcode" runat="server" CssClass="formlines" onblur="chkbadchar(this);" Width="120px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvCaptcha" runat="server" CssClass="validatemessage" ControlToValidate="txtimgcode"
                                                                ErrorMessage="Data required">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:ValidationSummary ID="errsummary" runat="server"
                                                                ShowSummary="False" ShowMessageBox="True" DisplayMode="BulletList"
                                                                CssClass="mandatory"></asp:ValidationSummary>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:ImageButton ID="cmdLogin" runat="server"
                                                                ToolTip="Login" AlternateText="Click to Login" ImageAlign="AbsMiddle"
                                                                ImageUrl="~/WebUI/Images/login.gif" BorderWidth="0" /></asp:imagebutton></td>
                                                        <td align="center">
                                                            <asp:Button ID="Button1" runat="server" Width="100px"
                                                                CssClass="formbuttons" CausesValidation="False"
                                                                Text="Reset" OnClick="Button1_Click1"></asp:Button></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                <asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label></td>
                                        </tr>

                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <uc1:ErrorLabel ID="ErrorLabel1" runat="server"></uc1:ErrorLabel>
                            </td>
                        </tr>
                        <tr>
                            <td valign="bottom" colspan="2">
                                <table height="18" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                                    <tr valign="middle" background="../images/footer.gif">
                                        <td class="ftr" width="60%" background="../images/footer.gif">
                                            <%--                                            <div align="left">© NIC,Tamil Nadu State Unit, Chennai</div>--%>
                                            <div align="left">&nbsp;Disclaimer - Designed, Developed and hosted by NIC. Contents owned and updated by the respective DDOs / Treasuries Department, Government of Tamil Nadu.</div>
                                        </td>
                                        <td class="ftr" width="40%" background="../images/footer.gif">

                                            <div align="centre">
                                                <marquee behavior="alternate" direction="left"><asp:Label ID="lblLocation" runat="server"></asp:Label></marquee>
                                            </div>
                                        </td>
                                        <%--  <td class="ftr" width="30%" background="../images/footer.gif">

                                            <div align="right">© All rights reserved</div>
                                        </td>--%>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
