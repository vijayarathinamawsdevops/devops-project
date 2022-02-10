<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FillOpeningBalance.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.FillOpeningBalance" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    <table align="center" border="0" cellpadding="3" cellspacing="0" class="parabr">
        <tr>
            <td align="center" class="formtitle" colspan="8">
                Payments &amp; Receipts
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDPCode" runat="server" CssClass="mandatory">DP Code</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DrpDPCode" runat="server" CssClass="drptxt" TabIndex="1" 
                    Width="143px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblDOCode" runat="server" CssClass="mandatory">DO Code</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DrpDOCode" runat="server" CssClass="drptxt" TabIndex="1" 
                    Width="143px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblFromDate" runat="server" CssClass="mandatory">Month</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DrpMonth" runat="server" 
                    CssClass="drptxt" 
                    Width="143px">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="0">JAN</asp:ListItem>
                    <asp:ListItem Value="1">FEB</asp:ListItem>
                    <asp:ListItem Value="2">MARCH</asp:ListItem>
                    <asp:ListItem Value="3">APRIL</asp:ListItem>
                    <asp:ListItem Value="4">MAY</asp:ListItem>
                    <asp:ListItem Value="5">JUNE</asp:ListItem>
                    <asp:ListItem Value="6">JULY</asp:ListItem>
                    <asp:ListItem Value="7">AUG</asp:ListItem>
                    <asp:ListItem Value="8">SEPT</asp:ListItem>
                    <asp:ListItem Value="9">OCT</asp:ListItem>
                    <asp:ListItem Value="10">NOV</asp:ListItem>
                    <asp:ListItem Value="11">DEC</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblToDate" runat="server" CssClass="mandatory">Year</asp:Label>
            </td>
            <td>
                <%--onblur="chkbadchar(this);"--%>
                <asp:DropDownList ID="YearCombo1" runat="server" CssClass="drptxt" 
                    Width="143px">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="2010">2010</asp:ListItem>
                    <asp:ListItem Value="2011">2011</asp:ListItem>
                    <asp:ListItem Value="2012">2012</asp:ListItem>
                    <asp:ListItem Value="2013">2013</asp:ListItem>
                    <asp:ListItem Value="2014">2014</asp:ListItem>
                    <asp:ListItem Value="2015">2015</asp:ListItem>
                    <asp:ListItem Value="2016">2016</asp:ListItem>
                    <asp:ListItem Value="2017">2017</asp:ListItem>
                    <asp:ListItem Value="2018">2018</asp:ListItem>
                    <asp:ListItem Value="2019">2019</asp:ListItem>
                    <asp:ListItem Value="2020">2020</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblOpenBal" runat="server" CssClass="mandatory">Open Balance</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="formlines" Width="143px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                    <asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>
            </td>
            <td colspan="3" align="right">
                <asp:Button ID="btnSave" runat="server" CssClass="formbuttons" Height="19px" 
                    OnClick="btnSave_Click1" OnClientClick="return valsave();" Text="Save" 
                    Width="80px" />
&nbsp;<asp:Button ID="btnUpdate" runat="server" CssClass="formbuttons" Height="19px" 
                    OnClick="btnView_Click" OnClientClick="return valsave();" Text="Update" 
                    Width="80px" />
            &nbsp;<asp:Button ID="btnClear" runat="server" CssClass="formbuttons" Height="19px" 
                    OnClick="btnView_Click" OnClientClick="return valsave();" Text="Clear" 
                    Width="80px" />
            </td>
        </tr>
    </table>
                                <asp:DataGrid AutoGenerateColumns="False" id='dgItems' runat='server' CssClass='tableleftbgcolor'
										width='100%' BorderColor='#CCCCCC' BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3'
										PageSize='10' AllowPaging='True'>
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
                                        <asp:TemplateColumn HeaderText="DP Code">
												<ItemTemplate>
													<asp:Label id="dglblDPCODE" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="DP Code" Visible="false">
												<ItemTemplate>
													<asp:Label id="dglbldpcode14" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"dpcode14") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="DO Code">
												<ItemTemplate>
													<asp:Label id="dglblDOCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Month">
												<ItemTemplate>
													<asp:Label id="dglblMonth" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Month") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Year">
												<ItemTemplate>
													<asp:Label id="dglblYear" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Year") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Open Balance">
												<ItemTemplate>
													<asp:Label id="dglblOpenBalance" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"OpenBalance") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;&nbsp;|&nbsp;
													<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Center" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:DataGrid>
    
    <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc3:Footer ID="Footer1" runat="server" />
    
    </form>
</body>
</html>
