<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DDOLogin.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.DDOLogin" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - DDOLogin</title>
		
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>  
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
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
		<script language="javascript" type="text/javascript">
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
    <style type="text/css">
        .style1
        {
            width: 17%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

   <table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td><uc1:StripHeader ID="StripHeader1" runat="server" /></td>
				</tr>
				<tr>
					<td vAlign="top" height="100%">
                        <table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td vAlign="top" bgColor="#ffffff" class="style1"><IMG height="350" 
                                        src="../Images/main.jpg" width="254"></td>
								<td vAlign="top" width="75%" bgColor="#ffffff">
									<table cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td background="../images/shadow.gif"><IMG height="11" src="../Images/shadow.gif" width="19"></td>
										</tr>
									</table>
                                    <div align="center">
										<p> 
                                            
                                            <IMG height="53" src="../Images/name.gif" width="274"></p>
										<table cellSpacing="0" cellPadding="0" width="85%" border="0">
											<tr>
												<td><IMG height="190" src="../Images/login-2.jpg" align="absMiddle" border="0" 
                                                        width="80%">
												</td>
												<td width="75%">
													<table cellSpacing="2" cellPadding="2" width="80%" 
                                                        
                                                        style="background-image: url('../Images/twitterbg1.jpg'); background-repeat: no-repeat; table-layout: auto; width: 80%; height: 190px;">
														<tr>
															<td colSpan="2" >
																<div align="center"><asp:label id="lblAppversion" Visible="False" 
                                                                        Font-Name="Tahoma" Font-Bold="True" Font-Size="10pt"
																		Runat="server" Font-Names="Tahoma" ForeColor="#C00000"></asp:label></div>
																<DIV align="center"><asp:label id="Label2" 
                                                                        Font-Name="Tahoma" Font-Bold="True" Font-Size="10pt"
																		Runat="server" Font-Names="verdana" ForeColor="#1306A7" Text="Version 5.0&nbsp;April 2012"></asp:label>
                                                                        <%--<STRONG>Version 5.0&nbsp;April 2012</STRONG>--%></DIV>
															</td>
														</tr>
														<tr>
															<td class="lbl" align="right" width="50%" >
                                                                <asp:Label ID="lblTreasuryCode" runat="server" CssClass="mandatory" 
                                                                    Text="TreasuryCode"></asp:Label>
                                                            </td>
															<td align="center">
                                                                <asp:DropDownList ID="ddlTOCode" runat="server" CssClass="formlines" 
                                                                    AutoPostBack="True" onselectedindexchanged="ddlTOCode_SelectedIndexChanged">
                                                                </asp:DropDownList>
                                                            </td>
														</tr>
														<tr>
															<td align="right">
                                                                <asp:Label ID="lblDDOCode" runat="server" CssClass="mandatory" Text="DDO Code"></asp:Label>
                                                            </td>
															<td align="center">
                                                                <asp:DropDownList ID="ddlDOCode" runat="server" CssClass="formlines" 
                                                                    AutoPostBack="True" onselectedindexchanged="ddlDOCode_SelectedIndexChanged">
                                                                </asp:DropDownList>
                                                            </td>
														</tr>
														<tr>
															<td width="40%" align="right">
                                                                <asp:Label ID="lblPassword" runat="server" CssClass="mandatory" Text="Password"></asp:Label>
                                                            </td>
															<td align="center">
                                                                <asp:TextBox ID="txtPassword" runat="server" CssClass="formlines" 
                                                                    ontextchanged="txtPassword_TextChanged"></asp:TextBox>
                                                            </td>
														</tr>
														<tr>
															<td align="right">
                                                                <asp:Label ID="lblNewPassword" runat="server" CssClass="mandatory" 
                                                                    Text="New Password"></asp:Label>
                                                            </td>
															<td align="center">
                                                                <asp:TextBox ID="txtNewPassword" runat="server" CssClass="formlines" 
                                                                    Visible="False"></asp:TextBox>
                                                            </td>
														</tr>
														<tr>
															<td align="right"><asp:validationsummary id="errsummary" Runat="server" 
                                                                    ShowSummary="False" ShowMessageBox="True" DisplayMode="BulletList" 
                                                                    CssClass="mandatory"></asp:validationsummary>
                                                                </td>
														</tr>
														<tr>
															<td align="right">
                                                                <asp:imagebutton id="cmdLogin" Runat="server" 
                                                                    ToolTip="Login" AlternateText="Click to Login" ImageAlign="AbsMiddle"
																	ImageUrl="~/WebUI/Images/login.gif" BorderWidth="0" onclick="cmdLogin_Click"/></asp:imagebutton></td>
															<td align="center"><asp:button id="Button1" runat="server" Width="100px" 
                                                                    CssClass="formbuttons" CausesValidation="False"
																	Text="Reset" onclick="Button1_Click"></asp:button></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td align="center" colSpan="2"><asp:label id="lblMessage" runat="server" 
                                                        CssClass="validatemessage" Visible="False"></asp:label></td>
											</tr>
											
										</table>
									</div>
                                </td>
                                </tr>
                                </table>
                    </td>
				</tr>
			</table>
    </form>
</body>
</html>
