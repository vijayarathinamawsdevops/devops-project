<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UnitMaster.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.UnitMaster" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>
<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eKaruvoolam - Unit Master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script src="../Scripts/ekvm.js" type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
        <style type="text/css">
            .style1
            {
                width: 100%;
            }
            .style4
            {
                font-family: verdana;
                font-size: 12px;
                font-style: normal;
                font-weight: bold;
                color: #ffffff;
                width: 30%;
                height: 15px;
                background-color: #4682B4;
            }
            .style5
            {
                width: 6%;
            }
            .style6
            {
                width: 2%;
            }
        </style>
</head>
<script type="text/javascript" language="javascript">
    function valsave() 
    {
        var vtxtUnitcode = document.getElementById('<%=txtUnitcode.ClientID %>');
        var vtxtDescription = document.getElementById('<%=txtDescription.ClientID %>');

        if (vtxtUnitcode.value == '') 
        {
            alert("Unit Code Cannot Be Blank");
            vtxtUnitcode.focus();
            return false;
        }
        if (vtxtDescription.value == '') 
        {
            alert("Description Cannot Be Blank");
            vtxtDescription.focus();
            return false;
        }
        return true;
    }
    function checknosExperience() {
        if ((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode == 46)) {
            event.returnValue = true;
        }
        else
        { event.returnValue = false; }
    }
    function checkTextExperience() {
        if ((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode >= 65 && event.keyCode <= 90) || (event.keyCode >= 97 && event.keyCode <= 122) || (event.keyCode == 46)) {
            event.returnValue = true;
        }
        else
        { event.returnValue = false; }
    }
    </script>
<body>
    <form id="form1" runat="server">
   <TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD>
                        <uc1:StripHeader ID="StripHeader1" runat="server" />
                    </TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table class="style1" width="100%">
                            <tr>
                                <td class="style4" colspan="6">
                                    Unit Master</td>
                            </tr>
                            <tr>
                                <td align="left" class="style5">
                                    <%--<asp:Label id="lblBasCode" runat="server" CssClass="mandatory">Bas Code</asp:Label>--%>
                                </td>
                                <td width="2%">
                                    &nbsp;</td>
                                <td align="left" class="style6">
                                    <%--<asp:DropDownList ID="ddlBasCode" runat="server" CssClass="formlines" 
                                        Width="150px">
                                    </asp:DropDownList>--%>
                                </td>
                                <td align="left" width="15%">
                                    &nbsp;</td>
                                <td width="2%">
                                    &nbsp;</td>
                                <td align="left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style5">
                                    <asp:Label id="lblUnitCode" runat="server" CssClass="mandatory" Visible="False">UNIT Code</asp:Label>
                                    <asp:TextBox id="txtUnitcode" runat="server" CssClass="formlines" 
                                        MaxLength="2" Width="150px" TabIndex="1" 
                                        onkeypress="return checknosExperience();" onblur="chkbadchar(this);" 
                                        Visible="False"></asp:TextBox>
                                </td>
                                <td align="left" colspan="2">
                                    <asp:Label id="lblDescription" runat="server" CssClass="mandatory">Unit Description</asp:Label>
                                </td>
                                <td align="left" width="15%">
                                    <asp:TextBox id="txtDescription" runat="server" CssClass="formlines" 
                                        MaxLength="6" Width="150px" 
                                        TabIndex="2" onkeypress="return checkTextExperience();" 
                                        onblur="chkbadchar(this);"></asp:TextBox>
                                </td>
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
										 onclick="btnSearch_Click"></asp:Button>
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
											<%--<asp:TemplateColumn HeaderText="Bas Code">
												<ItemTemplate>
													<asp:Label id="dglblBascode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BASCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>--%>
                                            <asp:TemplateColumn HeaderText="Unit Code">
												<ItemTemplate>
													<asp:Label id="dglblUnitcode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"UnitCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Unit Description">
												<ItemTemplate>
													<asp:Label id="dglblDESC" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC") %>'>
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
									</asp:DataGrid></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td>
                        <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
                    </td>
				</tr>
				<TR>
					<TD>
                        <uc3:Footer ID="Footer1" runat="server" />
                    </TD>
				</TR>
			</TABLE>
    </form>
</body>
</html>
