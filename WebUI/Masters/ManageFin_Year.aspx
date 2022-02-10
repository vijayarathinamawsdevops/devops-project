<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageFin_Year.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.ManageFin_Year" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Manage Financial Year </title>
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
								<TD align="center" colspan="2"><asp:label id="Label4" runat="server" CssClass="formtitle" Width="100%">Manage 
                                    Financial Year </asp:label></TD>
							</TR>
							<TR>
								<TD>
									&nbsp;</TD>
								<td>
                                    &nbsp;</td>
							</TR>
							<tr>
                                <td align="center" colspan="2">
                                    <asp:Label ID="Label13" runat="server" CssClass="mandatory">Year</asp:Label>
                                     &nbsp; &nbsp;<asp:TextBox ID="txtYear" runat="server" CssClass="formlines" 
                                        MaxLength="4" onblur="chkbadchar(this);"></asp:TextBox>
                                </td>
                            </tr>
						    <tr>
                                <td>
                                    <asp:Label ID="lblError" runat="server" CssClass="validatemessage"></asp:Label>
                                    <asp:Label ID="lblSuccess" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
						    <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="btnSave" runat="server" CssClass="formbuttons" 
                                        onclick="btnSave_Click" Text="Save" 
                                        Width="110px" />                                   
                                </td>
                            </tr>
						    <tr>
                                <td align="center" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:GridView ID="grdFin_Year" runat="server" CellPadding="4" 
                                        ForeColor="#333333" GridLines="None" AllowPaging="True" 
                                        onpageindexchanging="grdFin_Year_PageIndexChanging">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;</td>
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