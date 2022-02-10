<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Indmas.aspx.cs" Inherits="eKaruvoolam.WebUI.Admin.Indmas" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Indmas</title>
     <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
     <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
			<table class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
                    
					<td><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></td>
				</tr>
                </tabe>
                <table class="tableleftbgcolor" width="100%"> 
                <tr>
								<TD align="center" colspan="4"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Indmas Details</asp:label></TD>
							</tr>
                            <tr><td colspan="4"></td></tr>
                <tr><td><asp:Label ID="lblcode" runat="server" CssClass="mandatory">Ind Code:</asp:Label> </td>
                <td><asp:TextBox ID="txtindcode" runat="server" MaxLength="5" CssClass="formlines"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvcode" runat="server" CssClass="validatemessage" ControlToValidate="txtindcode" ErrorMessage="*"></asp:RequiredFieldValidator></td> 
                <td><asp:Label ID="lblIndDesc" runat="server" CssClass="mandatory">Ind Name:</asp:Label></td>
                <td><asp:TextBox ID="txtinddesc" runat="server" CssClass="formlines"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvdesc" runat="server" CssClass="validatemessage" ErrorMessage="*" ControlToValidate="txtinddesc"></asp:RequiredFieldValidator>
                </td></tr>
                <tr><td><asp:Label ID="lblchq1" runat="server" CssClass="mandatory">Cheque1:</asp:Label></td>
                <td><asp:TextBox ID="txtchq1" runat="server" CssClass="formlines"></asp:TextBox></td> 
                <td><asp:Label ID="lblchq2" runat="server" CssClass="mandatory">Cheque2:</asp:Label></td>
                <td><asp:TextBox ID="txtchq2" runat="server" CssClass="formlines"></asp:TextBox></td></tr>
                <tr><td colspan="2"><asp:label id="lblins" runat="server"  CssClass="validatemessage1"></asp:label></td>
                <td colspan="2"><asp:Label ID="lblerr" runat="server" CssClass="validatemessage"></asp:Label></td></tr>
                <tr> 
                <td><asp:Button ID="btnsubmit" runat="server" CssClass="formbuttons" Text="Save" onclick="btnsubmit_Click" /></td>
                <td align="left"><asp:Button ID="btnSearch" runat="server" CssClass="formbuttons" CausesValidation="false" Text="Search" onclick="btnSearch_Click" /></td>
                <td><asp:Button ID="btndel" runat="server" CssClass="formbuttons" Text="Delete" 
                        onclick="btndel_Click" /></td>
                 <td align="left"><asp:Button ID="btnclear" runat="server" CausesValidation="false" CssClass="formbuttons" Text="Clear" onclick="btnclear_Click" /></td></tr>
                </table>
                <br /><br />
                <table width="100%">
                <tr><td>
                <asp:DataGrid id="dgItems" runat="server" CssClass='tableleftbgcolor' width='100%' BorderColor='#CCCCCC'
										BorderStyle='None' BorderWidth='1px' BackColor='White' AutoGenerateColumns="False" 
                        CellPadding='3' PageSize='10' AllowPaging='True' 
                        onitemcommand="dgItems_ItemCommand" 
                        onpageindexchanged="dgItems_PageIndexChanged">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Ind Code">
												<ItemTemplate>
													<asp:Label id="dgrdlblCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Indcode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description">
												<ItemTemplate>
													<asp:Label id="dgrdlblNature" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Indname") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="cheque1">
												<ItemTemplate>
													<asp:Label id="dgrdlblSubject" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"cheque1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="cheque2">
												<ItemTemplate>
													<asp:Label id="dgrdlblSortOrderNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"cheque2") %>'>
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
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:DataGrid>
                
                </td></tr>
                <tr>
					<td colspan="2"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td colspan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
                </table>
    </div>
    </form>
</body>
</html>
