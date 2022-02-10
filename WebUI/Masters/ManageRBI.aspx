<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageRBI.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.ManageRBI" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Manage RBI</title>
     <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:StripHeader ID="StripHeader1" runat="server" />
   
   
			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				
				<tr>
					<td align="center" height="100%" valign="top">

                        <asp:Panel ID="PnlUpdation" runat="server">

                        <TABLE id="Table2" class="parabr" cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="4"><asp:label id="Label4" runat="server" CssClass="formtitle" Width="100%">Manage
                                    RBI Control</asp:label></TD>
							</TR>
							<TR>
								<TD>
									&nbsp;</TD>
								<td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
								<TD>
									&nbsp;</TD>
							</TR>
							<tr>
                                <td>
                                    <asp:Label ID="Label13" runat="server" CssClass="mandatory">ECS CODE</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEcsCode" runat="server" CssClass="formlines" 
                                        onblur="chkbadchar(this);" MaxLength="5"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label14" runat="server" CssClass="mandatory">USER CODE</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserNo" runat="server" CssClass="formlines" 
                                        onblur="chkbadchar(this);"></asp:TextBox>
                                </td>
                            </tr>
							<tr>
                                <td>
                                    <asp:Label ID="Label15" runat="server" CssClass="mandatory">USER_NAME</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="formlines" 
                                        onblur="chkbadchar(this);" MaxLength="40"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label16" runat="server" CssClass="mandatory">SPON_BBCOD</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSpon_Bbcode" runat="server" CssClass="formlines" 
                                        onblur="chkbadchar(this);" MaxLength="9"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label17" runat="server" CssClass="mandatory">USER ACT NO</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserActNo" runat="server" CssClass="formlines" 
                                        onblur="chkbadchar(this);" MaxLength="15"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label18" runat="server" CssClass="mandatory">LEDGER NO</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtLedgerNo" runat="server" CssClass="formlines" 
                                        onblur="chkbadchar(this);" MaxLength="3"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblifsc" runat="server" CssClass="mandatory">IFSC CODE</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtifsccode" runat="server" CssClass="formlines" 
                                        onblur="chkbadchar(this);" MaxLength="15"></asp:TextBox>
                                </td>
                               
                                <td colspan="2">
                                </td>
                            </tr>
							<tr>
								<td colspan="4">&nbsp;</td>
							</tr>
						    <tr>
                                <td colspan="4">
                                    <asp:Label ID="lblError" runat="server" CssClass="validatemessage"></asp:Label>
                                    <asp:Label ID="lblSuccess" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
                            </tr>
						    <tr>
                                <td align="center" colspan="4">
                                    <asp:Button ID="btnUpdate" runat="server" CssClass="formbuttons" 
                                        onclick="btnUpdate_Click" Text="Update" 
                                        Width="110px" />                                   
                                </td>
                            </tr>
						</TABLE>

                        </asp:Panel>

						
						
						
					</td>
				</tr>
				<tr>
					<td>
                       
				</tr>
				
			</TABLE>

    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>