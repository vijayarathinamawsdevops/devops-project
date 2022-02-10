<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refp4.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.Refp4" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style5
        {
            width: 46%;
        }
    </style>
</head>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>

<script type="text/javascript" language="javascript">
    function valsave() {

        var vddlType = document.getElementById('<%=txtCODE.ClientID %>');
        var vddltype1 = document.getElementById('<%=txtDPCODE.ClientID %>');
        var vddlname = document.getElementById('<%=txtSubject.ClientID %>');
        var vddlname1 = document.getElementById('<%=txtDesc.ClientID %>');
        var vddltype2 = document.getElementById('<%=txtOrder.ClientID %>');
        if (vddlType.value == '') {
            alert("CODE Cannot Be Blank");
            vddlType.focus();
            return false;
        }
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
        if (vddltype2.value == '') {
            alert("Order Cannot Be Blank");
            vddltype2.focus();
            return false;
        }
        return true;
          
    }
</script>
<%--<script type="text/javascript" language="javascript">
    function valsearch() {
        var vddltype1 = document.getElementById('<%=txtDPCODE.ClientID %>');
        var vddlname = document.getElementById('<%=txtDesc.ClientID %>');
        if (vddltype1.value == '') {
            alert("Enter DPCODE or DESC");
            vddltype1.focus();
            return false;
        }
        return true;
    }
</script>--%>

<script language="javascript" type ="text/javascript" >
    function numeralsOnly(evt) {
        evt = (evt) ? evt : event;
        var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            alert("Enter only number in this field.");
            return false;
        }
        return true;
    } 
        </script>
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
								<TD align="center" colSpan="4">
                                    <asp:label id="lblFormTitle" runat="server" 
                                        Width="101%" CssClass="formtitle">CR-OR Codes(Ref P4)</asp:label></TD>
							</TR>
							<TR>
								<TD align="right" width='15%'>
                                    <asp:Label id="lblCODE" runat="server" 
                                        CssClass="mandatory">CODE</asp:Label></TD>
								<TD width='35%'>
                                    <asp:TextBox id="txtCODE" runat="server" CssClass="formlines"  MaxLength="2"
                                       onblur="chkbadchar(this);" ></asp:TextBox>
                                       
									</TD>
                                    </TR>
                                    <tr>
								<TD align="right" width='15%'><asp:Label id="lblDPCODE" runat="server" 
                                        CssClass="mandatory">DP CODE</asp:Label></TD>
								<TD width='35%'>
                                <asp:TextBox id="txtDPCODE" runat="server" CssClass="formlines" 
                                      onblur="chkbadchar(this);"  MaxLength="15" Width="152px"></asp:TextBox>
                                    <asp:DropDownList ID="drpDPCode" 
                                        runat="server" CssClass="formlines"
                                          AutoPostBack="true" Width="110px"></asp:DropDownList>
                                       
                                        <asp:DropDownList ID="drpDPCode1" runat="server" CssClass="formlines"
                                          AutoPostBack="true" Width="50px"></asp:DropDownList>
                                        <asp:DropDownList ID="drpnum" runat="server" CssClass="formlines"
                                          AutoPostBack="true" onselectedindexchanged="drpnum_SelectedIndexChanged">
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
                                    </asp:DropDownList>    
                                
                                
                                    
                                        
                                        
									</TD>
                                    </tr>
                                    <TD align="right" width='15%'>
                                        <asp:Label id="lblSubject" runat="server" 
                                        CssClass="mandatory">SUBJECT</asp:Label></TD>
								<TD class="style5">
                                    <asp:TextBox id="txtSubject" runat="server" CssClass="formlines" 
                                       onblur="chkbadchar(this);" ></asp:TextBox>
                                       
									</TD>
							</TR>
							<TR>
								<TD align="right" width='15%'>
                                    <asp:Label id="lblDesc" runat="server" 
                                        CssClass="mandatory">DESCRIPTION</asp:Label></TD>
								<TD width='35%'>
                                    <asp:TextBox id="txtDesc" runat="server" CssClass="formlines" 
                                       onblur="chkbadchar(this);" ></asp:TextBox>
                                 
                                        
									</TD>
                                    </TR>
                                    <TR>
								<TD align="right" width='15%'>
                                <asp:Label id="lblOrder" runat="server" 
                                        CssClass="mandatory">ORDER</asp:Label>
                                
                                    </TD>
								<TD width='35%'>
                                <asp:TextBox id="txtOrder" runat="server" CssClass="formlines" 
                                       onblur="chkbadchar(this);"></asp:TextBox></TR>
                                   <%-- <asp:TextBox ID="txtStag" runat="server" CssClass="formlines" 
                                        ></asp:TextBox>--%>
                                         <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" CssClass="validatemessage" ControlToValidate="txtCODE" ValidationGroup="Validate"
                                         ErrorMessage="Data Required">*</asp:RequiredFieldValidator>--%>
                                       

                                        </TD>
                                        <TD align="right" width='15%'>
                                            <%--<asp:Label id="lblDist" runat="server" 
                                        CssClass="mandatory">DIST</asp:Label>--%></TD>
								<TD class="style5">
                                    <%--<asp:TextBox id="txtDIST" runat="server" CssClass="formlines" 
                                       ></asp:TextBox>--%>
                                        
                                       
                                       </TD>
                               
							</TR>
                            <tr>
                            <TD align="right" width='15%'>
                            
                                    </TD>
								<TD width='35%'>
                                
                                       
                                       
                                 </TD>
                                     <TD align="right" width='15%'>
                                    <%--<asp:Label id="lblOrder7610" runat="server" 
                                        CssClass="mandatory">ORDER7610</asp:Label>--%></TD>
								<TD width='35%'>
                                    <%--<asp:TextBox id="txtOrder7610" runat="server" CssClass="formlines" 
                                        ></asp:TextBox>--%>
                                        
                                        
									</TD>
                                    <TD align="right" width='15%'>
                                    <%--<asp:Label id="lblORDER8005" runat="server" 
                                        CssClass="mandatory">ORDER8005</asp:Label>--%></TD>
								<TD class="style5">
                                    <%--<asp:TextBox id="txtORDER8005" runat="server" CssClass="formlines" 
                                        ></asp:TextBox>--%>
                                         
                                        
								</TD>

                            </tr>
							<TR>
								<TD colSpan='4'><asp:Label id='lblMessage1' runat='server' CssClass='validationmessage'></asp:Label></TD>
							</TR>
							<TR>
								<TD colspan="4" align="center">
                                    <asp:Button id='btnsave' runat='server' Text='Save' 
                                        CssClass='formbuttons' Width="100px" onclick="btnsave_Click" 
                                        ValidationGroup="Validate" OnClientClick="return valsave();"></asp:Button>&nbsp;&nbsp;
									<asp:Button id='btnCancel' runat='server' Text='Cancel' 
                                        CausesValidation='False' CssClass='formbuttons'
										Width="100px" onclick="btnCancel_Click"></asp:Button>&nbsp;&nbsp;
									<asp:Button id='btnsearch' runat='server' CssClass='formbuttons' Text='Search' 
                                        Width="100px" onclick="btnsearch_Click" ></asp:Button>
                                        <asp:Label ID="lblSearch" runat="server" CssClass="mandatory" 
                                        Text="Search DPCode or Desc"></asp:Label>
                                        </TD>
							</TR>
						</TABLE>
            </td>
       </tr>
       <br>
						<TABLE id="Table2" class="tableleftbgcolor" cellSpacing="1" cellPadding="1" width="98%"
							border="0">
							<TR>
								<TD colSpan='4'><asp:DataGrid id='dgItems' runat='server' 
                                        CssClass='tableleftbgcolor' width='100%' BorderColor='#CCCCCC'
										BorderStyle='None' BorderWidth='1px' BackColor='White' AutoGenerateColumns="False" CellPadding='3' PageSize='15'
										AllowPaging='True' ondeletecommand="dgItems_DeleteCommand" oneditcommand="dgItems_EditCommand1" 
                                        onpageindexchanged="dgItems_PageIndexChanged1" 
                                        onupdatecommand="dgItems_UpdateCommand" >
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
											<asp:TemplateColumn HeaderText="Code">
												<ItemTemplate>
													<asp:Label id="dgrdlblCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="DPCode">
												<ItemTemplate>
													<asp:Label id="dgrdlblDPCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DPCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Subject">
												<ItemTemplate>
													<asp:Label id="dgrdlblSubject" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Subject") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Desc">
												<ItemTemplate>
													<asp:Label id="dgrdlblDesc" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Desc") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Stag">
												<ItemTemplate>
													<asp:Label id="dgrdlblStag" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Stag") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                             <asp:TemplateColumn HeaderText="Dist">
												<ItemTemplate>
													<asp:Label id="dgrdlblDist" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Dist") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Order">
												<ItemTemplate>
													<asp:Label id="dgrdlblOrder" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Order") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                             <asp:TemplateColumn HeaderText="Order7610">
												<ItemTemplate>
													<asp:Label id="dgrdlblOrder7610" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Order7610") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                             <asp:TemplateColumn HeaderText="Order8005">
												<ItemTemplate>
													<asp:Label id="dgrdlblOrder8005" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Order8005") %>'>
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
									</asp:DataGrid></TD>
							</TR>
						</TABLE>
					</td>
       		</tr>

       
    </table>
    <table class="style1">
        <tr>
            <td>
            <uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel> 
           </td>
                  
        </tr>
        <tr>
        <td>
        <uc1:Footer id="Footer1" runat="server"></uc1:Footer>
        </td>
        </tr>
    </table>
    <div>
    
    </div>
    
    </form>
</body>
</html>
