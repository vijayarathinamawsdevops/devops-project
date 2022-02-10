<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DCRGFinalSettlement.aspx.cs" Inherits="eKaruvoolam.WebUI.PreAudit.DCRAFinalSettlement" %>

<%@ Register src="../UserControls/TopHeader.ascx" tagname="TopHeader" tagprefix="uc1" %>
<%@ Register src="../UserControls/volume.ascx" tagname="volume" tagprefix="uc2" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc3" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc4" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="../Scripts/PreAudit.js" type="text/javascript"></script>
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/Style1.css" type="text/css" rel="stylesheet">
    <style type="text/css">
        #I1
        {
            height: 275px;
        }
    </style>
     <script type="text/javascript">
         function validate() {
             var TapalNo = document.getElementById('txtTapalNo').value;
             if (document.getElementById('txtTapalNo').value == "" || document.getElementById('txtTapalNo').value == null) {
                 alert("Enter Tapal No.");
                 return false;
             }
         }
    </script>

    </head>
    <script type="text/javascript" language="javascript">
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
     </script>
<%--    <script type="text/javascript" language="javascript">
        function valsave() {
            var txtTapalNo = document.getElementById('<%=txtTapalNo.ClientID %>');
            var txtTapalDate = document.getElementById('<%=txtTapalDate.ClientID %>');
            var txtAuthNo = document.getElementById('<%=txtAuthNo.ClientID %>');
            var txtAuthDate = document.getElementById('<%=txtAuthDate.ClientID %>');
            var txtNameDesignation = document.getElementById('<%=txtNameDesignation.ClientID %>');
            var Drpdesignaion = document.getElementById('<%=Drpdesignaion.ClientID %>');
            var txtPPONo = document.getElementById('<%=txtPPONo.ClientID %>');
            var txtDOR = document.getElementById('<%=txtDOR.ClientID %>');
            var txtAmount = document.getElementById('<%=txtAmount.ClientID %>');
            var drpDDO = document.getElementById('<%=drpDDO.ClientID %>');

            if (txtTapalNo.value == '') {
                alert("Enter Tapal No");
                txtTapalNo.focus();
                return false;
            }
            if (txtTapalDate.value == '') {
                alert("Enter Tapal Date");
                txtTapalDate.focus();
                return false;
            }
            if (txtAuthNo.value == '') {
                alert("Enter Authorization No");
                txtAuthNo.focus();
                return false;
            }
            if (txtAuthDate.value == '') {
                alert("Enter Authorization Date");
                txtAuthDate.focus();
                return false;
            }
            if (txtNameDesignation.value == '') {
                alert("Enter Name");
                txtNameDesignation.focus();
                return false;
            }
//            if (Drpdesignaion.value == '--Select--') {
//                alert("Select Designation");
//                Drpdesignaion.focus();
//                return false;
//            }
            if (txtPPONo.value == '') {
                alert("Enter txtPPO No");
                txtPPONo.focus();
                return false;
            }

            if (txtDOR.value == '') {
                alert("Enter Date of Retirement");
                txtDOR.focus();
                return false;
            }
            if (txtAmount.value == '') {
                alert("Enter Amount");
                txtAmount.focus();
                return false;
            }
//            if (drpDDO.value == '-1') {
//                alert("Select DDO Code");
//                drpDDO.focus();
//                return false;
//            }
            return true;
        }
</script>--%>
<body>
    <form id="form1" runat="server">
    
    <uc1:TopHeader ID="TopHeader1" runat="server" />
    <%--<table align="center" class="parabr">
        <tr>
            <td align="center">
    <uc2:volume ID="volume1" runat="server"/></td></tr></table>--%>
    
    <br />
    <table align="center" class="parabr">
        <tr>
            <td align="center" class="formtitle" colspan="4">
                DCRG Final Settlement</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTapalNo" runat="server" CssClass="mandatory" 
                    Text="Tapal Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTapalNo" runat="server" CssClass="formlines" Width="180px"></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="txtTapalNo" 
                    Display="Dynamic" ErrorMessage="Data Required" CssClass="validatemessage"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lblTapalDate" runat="server" CssClass="mandatory" 
                    Text="Tapal Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTapalDate" runat="server" CssClass="formlines" 
                    Width="180px"></asp:TextBox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('txtTapalDate')"><IMG src="../Images/show-calendar.gif" border="0"></A>
									<asp:requiredfieldvalidator id="rfvTranDate" runat="server" 
                    CssClass="validatemessage" ControlToValidate="txtTapalDate"
										ErrorMessage="Date Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="revTranDate" 
                    runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtTapalDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
                <%--<asp:CompareValidator ID="CompareValidator1" runat="server"
                        ControlToValidate="txtTapalDate" ErrorMessage="Date Cannot Be Greater Than Today Date"
                        Operator="LessThanEqual" Type="Date" CssClass="validatemessage"></asp:CompareValidator>--%>
                                                         </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAGAuthNo" runat="server" CssClass="mandatory" 
                    Text="AG Authorization No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAuthNo" runat="server" CssClass="formlines" Width="180px"></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txtAuthNo" 
                    Display="Dynamic" ErrorMessage="Data Required" CssClass="validatemessage"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lblAGAuthDate" runat="server" CssClass="mandatory" 
                    Text="AG Authorization Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAuthDate" runat="server" CssClass="formlines"></asp:TextBox>
                <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('txtAuthDate');"><IMG src="../Images/show-calendar.gif" border="0"></A></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txtAuthDate" 
                    Display="Dynamic" ErrorMessage="Data Required" CssClass="validatemessage"></asp:RequiredFieldValidator>
                <%--<asp:CompareValidator ID="CompareValidator2" runat="server"
                        ControlToValidate="txtAuthDate" ErrorMessage="Date Cannot Be Greater Than Today Date"
                        Operator="LessThanEqual" Type="Date" CssClass="validatemessage"></asp:CompareValidator>--%>                <%--<asp:CompareValidator ID="CompareValidator5" runat="server" 
                                                ControlToCompare="txtTapalDate" ControlToValidate="txtAuthDate" 
                                                CssClass="validatemessage" 
                    Operator="LessThanEqual" Type="Date" 
                                                ErrorMessage="less than equal to"></asp:CompareValidator>--%>
                                                         </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblNameDes" runat="server" CssClass="mandatory" 
                    Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNameDesignation" runat="server" CssClass="formlines" 
                    Width="180px" Height="16px"></asp:TextBox><asp:RequiredFieldValidator id="rfvtxtNameDesignation" runat="server" ControlToValidate="txtNameDesignation" 
                    Display="Dynamic" ErrorMessage="Data Required" CssClass="validatemessage"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td>
                <asp:Label ID="lblDept" runat="server" CssClass="mandatory" 
                    Text="Department"></asp:Label>
            </td>
            <td>
                <asp:ComboBox ID="Drpdept" runat="server" AutoCompleteMode="SuggestAppend" 
                    AutoPostBack="True" DropDownStyle="DropDownList" 
                    onselectedindexchanged="Drpdept_SelectedIndexChanged" Width="220px">
                </asp:ComboBox>
                <asp:RequiredFieldValidator ID="rfvDrpdesignaion0" runat="server" 
                                        ControlToValidate="Drpdept" CssClass="validatemessage" 
                                        ErrorMessage="Data Required" InitialValue='-1'></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDesignation" runat="server" CssClass="mandatory" 
                    Text="Designation"></asp:Label>
            </td>
            <td>
                <asp:ComboBox ID="Drpdesignaion" runat="server" 
                    AutoCompleteMode="SuggestAppend" DropDownStyle="DropDownList" Width="200px">
                </asp:ComboBox>
                <asp:RequiredFieldValidator ID="rfvDrpdesignaion" runat="server" 
                                        ControlToValidate="Drpdesignaion" CssClass="validatemessage" 
                                        ErrorMessage="Data Required" InitialValue='-1'></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lblPPONo" runat="server" CssClass="mandatory" Text="PPO Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPPONo" runat="server" CssClass="formlines" Width="180px"></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txtPPONo" 
                    Display="Dynamic" ErrorMessage="Data Required" CssClass="validatemessage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDOR" runat="server" CssClass="mandatory" Text="Date Of Retirement"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDOR" runat="server" CssClass="formlines" Width="180px"></asp:TextBox>
                <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
															href="javascript:show_calendar('txtDOR');"><IMG src="../Images/show-calendar.gif" border="0"></A>
                                                         <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txtDOR" 
                    Display="Dynamic" ErrorMessage="Data Required" CssClass="validatemessage"></asp:RequiredFieldValidator>
                <%--<asp:CompareValidator ID="CompareValidator3" runat="server"
                        ControlToValidate="txtDOR" ErrorMessage="Date Cannot Be Greater Than Today Date"
                        Operator="LessThanEqual" Type="Date" CssClass="validatemessage"></asp:CompareValidator>--%>
                        <%--<asp:CompareValidator ID="CompareValidator5" runat="server" 
                                                ControlToCompare="txtAuthDate" ControlToValidate="txtDOR" 
                                                CssClass="validatemessage" 
                    Operator="LessThan" Type="Date"></asp:CompareValidator>--%></td>
            <td>
                <asp:Label ID="lblAmount" runat="server" CssClass="mandatory" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server" CssClass="formlines" Width="180px"></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txtAmount" 
                    Display="Dynamic" ErrorMessage="Data Required" CssClass="validatemessage" onkeypress="return checknosExperience();"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txtAmount" Type="Integer"
   Operator="DataTypeCheck" ErrorMessage="Enter integer!" CssClass="validatemessage" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDDOCode" runat="server" CssClass="mandatory" Text="DDO Code"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drpDDO" runat="server" CssClass="formlines" Width="180px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="drpDDO" CssClass="validatemessage" 
                                        ErrorMessage="Data Required" InitialValue='-1'></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lblTokenno" runat="server" CssClass="mandatory" 
                    Text="Token Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTokenNo" runat="server" CssClass="formlines" Width="180px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            
        </tr>
        <%--<tr><td><asp:HiddenField ID="hidval" runat="server" /></td></tr>--%>
        <tr>
            <td>
                <asp:Label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
            <td>
                                    <asp:Label id='lblMessage' runat='server' CssClass='validatemessage'></asp:Label>
                                    
									</td>
            <td align="left" colspan="2">
                <asp:Button ID="btnSave" runat="server" CssClass="formbuttons" Text="Save" 
                    Width="90px" onclick="btnSave_Click" />
                <asp:Button ID="btnclear" runat="server" CssClass="formbuttons" Text="Clear" 
                    Width="90px" onclick="btnclear_Click" CausesValidation="false" />
                    <asp:Button ID="btnSearch" runat="server" CssClass="formbuttons" Text="Search" 
                    Width="90px" onclick="btnSearch_Click" CausesValidation="false" OnClientClick="return validate();" />
                <asp:Button ID="btnDelete" runat="server" CssClass="formbuttons" Text="Delete" 
                    Width="90px" onclick="btnDelete_Click" Visible="false" />
                <asp:Button ID="btnView" runat="server" CssClass="formbuttons" Text="View Report" 
                    Width="90px" onclick="btnView_Click" CausesValidation="False" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <iframe id="I1" runat="server" name="I1" src="" target="_blank" width="100%">
                </iframe>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                                </td>
        </tr>
    </table>
    
                                <asp:DataGrid AutoGenerateColumns="False" id='dgItems' runat='server' CssClass='tableleftbgcolor'
										width='100%' BorderColor='#CCCCCC' BorderStyle='None' BorderWidth='1px' BackColor='#F0F8FF' CellPadding='3'
										PageSize='10' AllowPaging='True'>
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<Columns>
                                        <asp:TemplateColumn HeaderText="Token No">
												<ItemTemplate>
													<asp:Label id="TokenNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TokenNo") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="DO Code">
												<ItemTemplate>
													<asp:Label id="DDOCode" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DDOCode") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Tapal No">
												<ItemTemplate>
													<asp:Label id="TapalNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TapalNo") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Tapal Date">
												<ItemTemplate>
													<asp:Label id="TapalDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"TapalDate") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="AG Authorization No">
												<ItemTemplate>
													<asp:Label id="AGAuthNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AGAuthNo") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="AG Authorization Date">
												<ItemTemplate>
													<asp:Label id="AGAuthDate" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"AGAuthDate") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Name">
												<ItemTemplate>
													<asp:Label id="Name" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Name") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                             <asp:TemplateColumn HeaderText="Des" Visible="false">
												<ItemTemplate>
													<asp:Label id="Designation" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"des") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Department">
												<ItemTemplate>
													<asp:Label id="Department" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DepartmentName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                             <asp:TemplateColumn HeaderText="Designation">
												<ItemTemplate>
													<asp:Label id="DesignationText" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Designation") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="PPO No">
												<ItemTemplate>
													<asp:Label id="PPOGPFNo" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"PPOGPFNo") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="DOR">
												<ItemTemplate>
													<asp:Label id="DOR" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"DOR") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Amount">
												<ItemTemplate>
													<asp:Label id="Amount" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>	
                                            
                                            									
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<asp:LinkButton ID="lnkEdit" Runat="server" CssClass="" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>
													<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False" Visible="false">Delete</asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Center" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:DataGrid>
    
    <uc3:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc4:Footer ID="Footer1" runat="server" />
    
    </form>
</body>
</html>
