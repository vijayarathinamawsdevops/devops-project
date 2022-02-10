<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DuplicateEmployeeAcnoDetails.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.DuplicateEmployeeAcnoDetails" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 40%;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    <table class="style1" width="100%">
                            <tr>
                                <td class="formtitle" colspan="4" align="center">
                                    List of Duplicate Employee & Account No
                                </td>
                            </tr>
                            <tr>
                                <%--<td align="left" width="15%">
                                    <asp:Label id="lblDOCode" runat="server" CssClass="mandatory">DO Code</asp:Label>
                                </td>
                                <td width="2%">
                                    &nbsp;</td>
                                <td align="left" width="30%">
                                    <asp:DropDownList ID="ddlDOCode" runat="server" CssClass="formlines" 
                                        Width="150px" ToolTip="DO Code">
                                    </asp:DropDownList>
                                </td>--%>
                                <td align="left" width="15%">
                                    &nbsp;</td>
                                <td align="left" width="20%">
                                    &nbsp;</td>
                                <td align="left" width="20%">
                                    &nbsp;</td>
                                <td align="right" width="30%">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" width="15%">
												&nbsp;</td>
                                <td align="left" width="20%">
												<asp:Label ID="Label1" runat="server" CssClass="mandatory" Text="Month"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="drpMonth" runat="server" CssClass="drptxt" 
                    Width="143px">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="01">JAN</asp:ListItem>
                    <asp:ListItem Value="02">FEB</asp:ListItem>
                    <asp:ListItem Value="03">MARCH</asp:ListItem>
                    <asp:ListItem Value="04">APRIL</asp:ListItem>
                    <asp:ListItem Value="05">MAY</asp:ListItem>
                    <asp:ListItem Value="06">JUNE</asp:ListItem>
                    <asp:ListItem Value="07">JULY</asp:ListItem>
                    <asp:ListItem Value="08">AUG</asp:ListItem>
                    <asp:ListItem Value="09">SEPT</asp:ListItem>
                    <asp:ListItem Value="10">OCT</asp:ListItem>
                    <asp:ListItem Value="11">NOV</asp:ListItem>
                    <asp:ListItem Value="12">DEC</asp:ListItem>
                </asp:DropDownList>
														
                                            </td>
                                <td align="left" width="20%">
                                                <asp:Label ID="Label2" runat="server" CssClass="mandatory" Text="Year"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                              


     
                <asp:DropDownList ID="drpYear" runat="server" CssClass="drptxt" 
                    Width="120px">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>                    
                    <asp:ListItem Value="2013">2013</asp:ListItem>
                    <asp:ListItem Value="2014">2014</asp:ListItem>
                </asp:DropDownList>
                                             
                                            </td>
                                <td align="left" width="30%">
                                              


     
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" width="15%">
                                    &nbsp;</td>
                                <td align="left" width="20%">
                                    &nbsp;</td>
                                <td align="left" width="20%">
                                    &nbsp;</td>
                                <td align="right" width="30%">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" width="15%">
                                    &nbsp;</td>
                                <td align="center" colspan="2" style="width: 40%" width="20%">
                                    <asp:Button id='btnSearch' runat='server' Text='Generate Report' CssClass='formbuttons' 
                                        Width="100px" onclick="btnSearch_Click"></asp:Button>
                                </td>
                                <td align="right" width="30%">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" width="15%" class="style2">
                                    </td>
                                <td align="center" class="style3" colspan="2" width="20%">
                                    </td>
                                <td align="right" width="30%" class="style2">
                                    </td>
                            </tr>
                            <tr>
                                <td align="left" width="15%">
                                    &nbsp;</td>
                                <td align="right" width="20%">
                                                <asp:HyperLink ID="lnkEmployeeReport" runat="server" CssClass="mandatory" 
                                                    Target="_blank" Font-Underline="True" ForeColor="#0066CC">Employee Report</asp:HyperLink>
                                                &nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td align="left" width="20%">
                                                <asp:HyperLink ID="lnkAccountNoDetails" runat="server" CssClass="mandatory" 
                                                    Target="_blank" Font-Underline="True" ForeColor="#0066CC">Account No Report</asp:HyperLink>
                                </td>
                                <td align="right" width="30%">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" style="width: 45%">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" style="width: 45%">
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" style="width: 45%">
                                    &nbsp;</td>
                            </tr>
                            </table>
                            <table class="style1" width="100%">
                            <tr>
                                <td>
                                    <asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>
									&nbsp;<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
                                <td align="right">
                                &nbsp;&nbsp;&nbsp;</td>
                            </tr>
                        </table>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan='4'>
                                    &nbsp;</TD>
							</TR>
						</TABLE>
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
