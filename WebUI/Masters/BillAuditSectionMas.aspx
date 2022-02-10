<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillAuditSectionMas.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.BillAuditSectionMas" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc1" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc2" %>
<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<title>eKaruvoolam - Bill Audit Section</title>
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
        </style>
</head>
<script type="text/javascript" language="javascript">
function valsave()
    {
        var vddlType = document.getElementById('<%=txtBascode.ClientID %>'); 
        var vddlName = document.getElementById('<%=txtDescription.ClientID %>');
        
         
        if(vddlType.value =='')
        {
            alert("BAS Code Cannot Be Blank");
            vddlType.focus();
            return false;
        }
        
        if(vddlName.value =='')
        {
            alert("Descrption Cannot Be Blank");
            vddlName.focus();
            return false;
        }
         return true;

     }
     function checknosExperience() 
     {
         if ((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode == 46)) {
             event.returnValue = true;
         }
         else {
             alert("Enter Numeric Only");
             event.returnValue = false; 
         }
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
                        <uc3:StripHeader ID="StripHeader1" runat="server" />
                    </TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">
						<table class="style1" width="100%">
                            <tr>
                                <td class="formtitle" colspan="3">
                                    Bill Audit Section</td>
                            </tr>
                            <tr>
                                <td align="left" width="5%">
                                    <asp:Label id="lblBasCode" runat="server" CssClass="mandatory" Visible="False">Bas Code</asp:Label>
                                    <asp:TextBox id="txtBascode" runat="server" CssClass="formlines" 
                                        MaxLength="2" TabIndex="1" onkeypress="return checknosExperience();" 
                                        onblur="chkbadchar(this);" Visible="False"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label id="lblDescription" runat="server" CssClass="mandatory">BAS Description</asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox id="txtDescription" runat="server" CssClass="formlines" 
                                        MaxLength="6" 
                                        TabIndex="2" onkeypress="return checkTextExperience();" 
                                        onblur="chkbadchar(this);" Width="143px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <table class="style1" width="100%">
                            <tr>
                                <td align="left">
                                    <asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>
									&nbsp;<asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
                                <td align="right">
                                    <asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' 
                                        Width="100px" onclick="btnSave_Click" OnClientClick="return valsave();"></asp:Button>
                                    &nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                                        CssClass="formbuttons" onclick="btnCancel_Click" Text="Clear" Width="100px" />
                                    &nbsp;<asp:Button ID="btnSearch" runat="server" CssClass="formbuttons" 
                                        onclick="btnSearch_Click" Text="Search" Visible="true" Width="100px" />
                                    &nbsp;<asp:Button ID="btnDel" runat="server" CssClass="formbuttons" 
                                        onclick="btnDel_Click" Text="Delete" Visible="False" Width="100px" />
                                </td>
                            </tr>
                        </table>
						<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan='4'>
                                <asp:DataGrid AutoGenerateColumns="False" id='dgItems' runat='server' CssClass='tableleftbgcolor'
										width='100%' BorderColor='#CCCCCC' BorderStyle='None' BorderWidth='1px' BackColor='#F0F8FF' CellPadding='3'
										PageSize='10' AllowPaging='True'>
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Bas Code">
												<ItemTemplate>
													<asp:Label id="dglblBascode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BASCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description">
												<ItemTemplate>
													<asp:Label id="dglblDesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DESC") %>'>
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
