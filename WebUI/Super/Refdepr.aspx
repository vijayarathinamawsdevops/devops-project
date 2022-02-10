<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refdepr.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.Refdepr" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     </head>
     <script type="text/javascript" language="javascript">
         function valsave() {
             var vddltype1 = document.getElementById('<%=txtDPCODE.ClientID %>');
             var vddlname = document.getElementById('<%=txtSUBJECT.ClientID %>');
             var vddlname1 = document.getElementById('<%=txtDESC.ClientID %>');
             if (vddltype1.value == '') {
                 alert("DPCODE Cannot Be Blank");
                 vddltype1.focus();
                 return false;
             }
             if (vddlname.value == '') {
                 alert("Subject Cannot Be Blank");
                 vddlname.focus();
                 return false;
             }
             if (vddlname1.value == '') {
                 alert("Description Cannot Be Blank");
                 vddlname1.focus();
                 return false;
             }
             return true;
         }
</script>
<%--<script type="text/javascript" language="javascript">
    function valsearch() {
        var vddltype1 = document.getElementById('<%=txtDPCODE.ClientID %>');
        var vddlname = document.getElementById('<%=txtDESC.ClientID %>');
        if (vddltype1.value == '') {
            alert("Enter DPCODE or DESC");
            vddltype1.focus();
            return false;
        }
        return true;
    }
</script>--%>
 <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<body>
    <form id="form1" runat="server">
    <TABLE id="Table1" cellSpacing="0" cellPadding="4" width="100%" class="tableleftborder"
	border="0">
	<TR>
    <TD colspan="2"><uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader></TD>
    
		<%--<td background="../Images/bg.gif" colspan="4"><div align="center"><img src="../Images/banner.jpg" width="680" height="70"></div>
		</td>--%>
	</TR>
	<%--<TR class="footer" align="center">
		<TD width="25%"><asp:Label id="lblCurrentDate" runat="server" CssClass="mandatory">lblCurrentDate</asp:Label></TD>
		<TD width="25%">
			<img src="../Images/user.gif" align="absMiddle">&nbsp;&nbsp;<asp:Label id="Label2" ForeColor="Black" CssClass="mandatory" runat="server" Font-Size="XX-Small">User ID :</asp:Label>&nbsp;<asp:Label id="lblUserID" runat="server" CssClass="mandatory"></asp:Label></TD>
		<TD width="50%" align="right"><asp:LinkButton id="lbtnAdminMain" runat="server" 
                CausesValidation="False" CssClass="lnkButton" 
                PostBackUrl="~/WebUI/Admin/AdminHome.aspx">Main Menu</asp:LinkButton>&nbsp;
			<img src="../Images/helpicon.jpg" align="absMiddle">&nbsp;<asp:LinkButton ID="lnkhelp" Runat="server" CssClass="lnkButton" CausesValidation="False">Help</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/password.gif" align="absMiddle">&nbsp;<asp:LinkButton 
                ID="lnkPassword" Runat="server" CssClass="lnkButton" CausesValidation="False" 
                PostBackUrl="~/WebUI/Admin/ChangePassword.aspx">Change Password</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/logout.gif" align="absMiddle">&nbsp;
			<asp:LinkButton id="lbtnLogout" CssClass="lnkButton" CausesValidation="False" 
                runat="server" PostBackUrl="~/WebUI/Admin/Login.aspx">Logout</asp:LinkButton>
		</TD>
	</TR>--%>
	<%--<TR class="footer">
		<TD width="25%"></TD>
		<TD width="25%"></TD>
		<TD width="25%"></TD>
	</TR>--%>
</TABLE>
<TABLE class="parabr" id="tblContent" cellSpacing="2" cellPadding="2" width="98%" border="0">
							<TR>
								<TD align="center" colSpan="4"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Deposit Receipt Codes(Ref Depr)</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblDPCODE" runat="server" CssClass="mandatory">DPCode</asp:Label></TD>
								<TD width='35%' colspan="2" >
                                <asp:TextBox id="txtDPCODE" runat="server" CssClass="formlines" MaxLength="15" 
                                      onblur="chkbadchar(this);"  Width="121px"></asp:TextBox>
                                <asp:DropDownList ID="drpDPCode" runat="server" CssClass="formlines" 
                                        AutoPostBack="True"></asp:DropDownList>
                                <asp:DropDownList ID="drpDPCode1" runat="server" CssClass="formlines" 
                                        AutoPostBack="True"></asp:DropDownList> 
                                <asp:DropDownList ID="drpnum" runat="server" CssClass="formlines" 
                                        AutoPostBack="True" onselectedindexchanged="drpnum_SelectedIndexChanged">
                                    <asp:ListItem Value="0"></asp:ListItem>
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                    <asp:ListItem Value="3"></asp:ListItem>
                                    <asp:ListItem Value="4"></asp:ListItem>
                                    <asp:ListItem Value="5"></asp:ListItem>
                                    <asp:ListItem Value="6"></asp:ListItem>
                                    <asp:ListItem Value="7"></asp:ListItem>
                                    <asp:ListItem Value="8"></asp:ListItem>
                                    <asp:ListItem Value="9"></asp:ListItem>
                                    </asp:DropDownList></TD>
                                    </TR>
                                    <TR>
                                
                                
									

								<TD align="right" width='15%'><asp:Label id="lblSUBJECT" runat="server" CssClass="mandatory">Subject</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtSUBJECT" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="8"></asp:TextBox>
                                
									</TD>
							</TR>
							<TR>
								<TD align="right" width='15%'><asp:Label id="lblDESC" runat="server" CssClass="mandatory">Description</asp:Label></TD>
								<TD width='35%'><asp:TextBox id="txtDESC" runat="server" onblur="chkbadchar(this);" CssClass="formlines" Width="200px" MaxLength="25"></asp:TextBox>
                                
									</TD>
								<TD colspan="2">&nbsp;</TD>
							</TR>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage' runat='server' CssClass='validationmessage'></asp:Label></TD>
							</TR>
							<TR>
								<TD colspan="4" align="center"><asp:Button id='btnSave' runat='server' Text='Save' CssClass='formbuttons' Width="100px" onclick="btnSave_Click" OnClientClick="return valsave();"></asp:Button>
									&nbsp;&nbsp;<asp:Button id='btnCancel' runat='server' Text='Cancel' 
                                        CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button>&nbsp;&nbsp;<asp:Button id='btnSearch' 
                                        runat='server' CssClass='formbuttons' Text='Search' Width="100px"   
                                        onclick="btnSearch_Click"></asp:Button>
                                        <asp:Label ID="lblSearch" runat="server" CssClass="mandatory" 
                                        Text="Search DPCode or Desc"></asp:Label>
                                        </TD>
							</TR>
						</TABLE>
                        <br>
						<TABLE id="Table2" class="tableleftbgcolor" cellSpacing="1" cellPadding="1" width="98%"
							border="0">
							<TR>
								<TD colSpan='4'><asp:DataGrid id='dgItems' runat='server' 
                                        CssClass='tableleftbgcolor' width='100%' BorderColor='#CCCCCC'
										BorderStyle='None' BorderWidth='1px' BackColor='White' AutoGenerateColumns="False" CellPadding='3' PageSize='15'
										AllowPaging='True' ondeletecommand="dgItems_DeleteCommand" oneditcommand="dgItems_EditCommand" 
                                        onpageindexchanged="dgItems_PageIndexChanged"><SelectedItemStyle Font-Bold='True' ForeColor='White' BackColor='#669999'></SelectedItemStyle>
										<ItemStyle ForeColor='#000066'></ItemStyle>
										<HeaderStyle Font-Bold='True' ForeColor='White' BackColor='#006699'></HeaderStyle>
										<FooterStyle ForeColor='#000066' BackColor='White'></FooterStyle>
										<Columns>
                                        <asp:TemplateColumn HeaderText="ID">
												<ItemTemplate>
													<asp:Label id="dgrdlblID" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AID") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DPCode">
												<ItemTemplate>
													<asp:Label id="dgrdlblDPCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Subject">
												<ItemTemplate>
													<asp:Label id="dgrdlblSubject" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"SUBJECT") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Description">
												<ItemTemplate>
													<asp:Label id="dgrdlblDesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Desc") %>'>
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
										<PagerStyle HorizontalAlign='Left' ForeColor='#000066' BackColor='White' Mode='NumericPages'></PagerStyle>
									</asp:DataGrid>
								</TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
    
    </form>
</body>
</html>
