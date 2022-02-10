<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.ManageUsers" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    <table class="style1" width="100%">
                            <tr>
                                <td class="formtitle" colspan="4">
                                    Manage Users Locks
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
                                    <asp:Label id="lblUserId" runat="server" CssClass="mandatory">User Id</asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox id="txtuser" runat="server" CssClass="formlines" MaxLength="10" 
                                        onkeyup="chkbadchar(this);"></asp:TextBox></td>
                                <td align="left" width="15%">
                                    &nbsp;</td>
                                <td align="right" width="30%">
                                    <asp:Button id='btnClr' runat='server' Text='Clear' CssClass='formbuttons' 
                                        Width="100px" onclick="btnClr_Click"></asp:Button>
                                    <asp:Button id='btnSearch' runat='server' Text='Search' CssClass='formbuttons' 
                                        Width="100px" onclick="btnSearch_Click"></asp:Button>
                                    <asp:Button id='btnRemove' runat='server' Text='Remove' CssClass='formbuttons' 
                                        Width="100px" onclick="btnRemove_Click"></asp:Button>
                                </td>
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
                                <asp:DataGrid AutoGenerateColumns="False" id='dgItems' runat='server' CssClass='tableleftbgcolor'
										width='101%' BorderColor='#CCCCCC' BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3'
										PageSize='10' AllowPaging='True'>
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
                                            <asp:TemplateColumn HeaderText="User Id">
												<ItemTemplate>
													<asp:Label id="dglblUserId" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"UserId") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Session Id">
												<ItemTemplate>
													<asp:Label id="dglblSessionId" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SessionId") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Session Start">
												<ItemTemplate>
													<asp:Label id="dglblSessionStart" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SessionStart") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>
													<%--<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>--%>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Center" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:DataGrid></TD>
							</TR>
						</TABLE>
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
