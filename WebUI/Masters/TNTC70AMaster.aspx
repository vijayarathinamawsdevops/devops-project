<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TNTC70AMaster.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.TNTC70AMaster" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc1" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc2" %>
<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - TNTC70A Master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <style type="text/css">
            .style1
            {
                width: 100%;
            }
        </style>
</head>
<script type="text/javascript" language="javascript">
    function valsave()
    {
       
        var vddlName = document.getElementById('<%=ddlBasCode.ClientID %>');
        var vddlDepartment = document.getElementById('<%=ddlUnitCode.ClientID %>'); 
        
         
        if(vddlType.value=='-1')
        {
            alert("Select DO Code");
            vddlType.focus();
            return false;
        }
        
        if(vddlName.value=='-1')
        {
             alert("Select BAS Code");
            vddlName.focus();
            return false;
        }
        
        if(vddlDepartment.value=='-1')
        {
           alert("Select UNIT Code");
            vddlDepartment.focus();
            return false;
        }
         return true;
     
    }
    </script>
<body>
    <form id="form1" runat="server">
    <TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
                        <uc3:StripHeader ID="StripHeader1" runat="server" />
                    </TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table class="style1" width="100%">
                            <tr>
                                <td class="formtitle" colspan="6">
                                    TNTC70A Master</td>
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
                                    <asp:Label id="lblBasCode" runat="server" CssClass="mandatory">BAS Code</asp:Label>
                                </td>
                                <td width="2%">
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:DropDownList ID="ddlBasCode" runat="server" CssClass="formlines" 
                                        Width="150px" ToolTip="Bas Code"  
                                         >
                                    </asp:DropDownList>
                                </td>
                                <td align="left" width="15%">
                                    <asp:Label id="lblUnitCode" runat="server" CssClass="mandatory">Unit Code</asp:Label>
                                </td>
                                <td width="2%">
                                    &nbsp;</td>
                                <td align="left" width="30%">
                                    <asp:DropDownList ID="ddlUnitCode" runat="server" CssClass="formlines" 
                                        Width="150px" ToolTip="Unit Code">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                 
                                <td align="left" width="15%">
                                    &nbsp;</td>
                                <td width="2%">
                                    &nbsp;</td>
                                <td align="left">
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
                                    <asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' 
                                        Width="100px" onclick="btnSave_Click" OnClientClick="return valsave();"></asp:Button>
                                &nbsp;<asp:Button id='btnCancel' runat='server' Text='Clear' CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button>
                                &nbsp;<asp:Button id='btnSearch' runat='server' CssClass='formbuttons' Text='Search' Width="100px"
										Visible="False" onclick="btnSearch_Click"></asp:Button>
									&nbsp;<asp:Button id="btnDel" runat="server" CssClass="formbuttons" Width="100px" 
                                        Text="Delete" Visible="False" onclick="btnDel_Click"></asp:Button>
                                </td>
                            </tr>
                        </table>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan='4'>
                                <asp:DataGrid AutoGenerateColumns="False" id='dgItems' runat='server' CssClass='tableleftbgcolor'
										width='100%' BorderColor='#CCCCCC' BorderStyle='None' BorderWidth='1px' BackColor='White' CellPadding='3'
										PageSize='10' AllowPaging='True'>
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<%--<asp:TemplateColumn HeaderText="DO Code">
												<ItemTemplate>
													<asp:Label id="dglblDDOCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DDOCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>--%>
                                            <asp:TemplateColumn HeaderText="ID" Visible="false">
												<ItemTemplate>
													<asp:Label id="dglblID" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ID") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="BAS Desc">
												<ItemTemplate>
													<asp:Label id="dglblBASDesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BASDesc") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="UNIT Desc">
												<ItemTemplate>
													<asp:Label id="dglblUNITDesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"UnitDesc") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="BAS Code" Visible="false">
												<ItemTemplate>
													<asp:Label id="dglblBASCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BASCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="UNIT Code" Visible="false">
												<ItemTemplate>
													<asp:Label id="dglblUnitCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"UnitCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <%--<asp:TemplateColumn HeaderText="TO Code" Visible="false">
												<ItemTemplate>
													<asp:Label id="dglblTOCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TOCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>--%>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;&nbsp;|&nbsp;
													<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Center" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:DataGrid></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td>
                        
                        <uc1:ErrorLabel ID="ErrorLabel1" runat="server" />
                        
                    </td>
				</tr>
				<TR>
					<TD>
                        <uc2:Footer ID="Footer1" runat="server" />
                    </TD>
				</TR>
			</TABLE>
    </form>
</body>
</html>
