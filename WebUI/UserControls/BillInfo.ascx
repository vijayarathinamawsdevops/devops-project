<%@ Control Language="c#" AutoEventWireup="True" CodeBehind="BillInfo.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.BillInfo" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<head>

    <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
    <style type="text/css">
        .Background {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .Popup {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 400px;
            height: 350px;
        }

        .lbl {
            font-size: 16px;
            font-style: italic;
            font-weight: bold;
        }

        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            width: 268435456px;
            height: 28px;
        }
        .auto-style3 {
            height: 28px;
        }
        .auto-style4 {
            height: 27px;
        }
    </style>
</head>
<link href="../Styles/style1.css" type="text/css" rel="stylesheet">
<table id="Table1" cellspacing="3" cellpadding="1" width="100%" border="0" class="pgborder">
    <tr class="formtitle">
        <td align="middle" colspan="4">
            <asp:Label ID="lblFormTitle" CssClass="formtitle" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSpace" CssClass="formtitle" runat="server">-</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblFormDetailedTitle" CssClass="formtitle" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblBillTypeEcsNonEcs" runat="server" CssClass="formtitle"> </asp:Label>-
        </td>
    </tr>
    <tr>
        <td width="15%">
            <asp:Label ID="lblTokenNo" CssClass="mandatory" runat="server">Token Number</asp:Label></td>
        <td width="32%">
            <asp:TextBox ID="txtTokenNo" CssClass="formlines" runat="server" AutoPostBack="True" Enabled="False"
                onblur="chkbadchar(this);" onkeypress="numeralsOnly(this)" TabIndex="1" OnTextChanged="txtTokenNo_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTokenNo" CssClass="validatemessage" runat="server" ErrorMessage="Data Required"
                ControlToValidate="txtTokenNo"></asp:RequiredFieldValidator>
        </td>
        <td colspan="2">
            <asp:DropDownList ID="cboBillSubCategory1" CssClass="drptxt" runat="server" AutoPostBack="True" Width="195px"
                TabIndex="-1" OnSelectedIndexChanged="cboBillSubCategory1_SelectedIndexChanged">
            </asp:DropDownList>&nbsp;&nbsp;
			<asp:DropDownList ID="cboBillSubCategory2" CssClass="drptxt" runat="server" Width="160px" TabIndex="-1"></asp:DropDownList></td>
    </tr>
    <tr>
        <td width="15%">
            <asp:Label ID="lblBillType" CssClass="mandatory" runat="server">Bill Type</asp:Label></td>
        <td colspan="3">
            <asp:TextBox ID="txtBillType" CssClass="formlines" onblur="chkbadchar(this);" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>&nbsp;<asp:Label ID="lblBillTypeDesc" runat="server" Font-Size="XX-Small" Width="349px"></asp:Label>
            <asp:Label ID="lblCpsError" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
            <asp:Label ID="lblecsdata" runat="server" ForeColor="#006600" style="font-weight: 700" Text="Ecs_Data: " Visible="False"></asp:Label>
            <asp:Label ID="lblecs_At" runat="server" ForeColor="Red" style="font-weight: 700" Visible="False"></asp:Label>
            <asp:Label ID="lblP3" runat="server" ForeColor="#006600" style="font-weight: 700" Text="P3:" Visible="False"></asp:Label>
            <asp:Label ID="lblp3_amt" runat="server" ForeColor="Red" style="font-weight: 700" Visible="False"></asp:Label>
        </td>

    </tr>
    <tr>
        <td width="15%">
            <asp:Label ID="lblDrawingOfficer" CssClass="mandatory" runat="server">Drawing Officer</asp:Label></td>
        <td colspan="3">
            <asp:TextBox ID="txtDrawingOfficer" CssClass="formlines" runat="server" onblur="chkbadchar(this);" Enabled="False" ReadOnly="True"></asp:TextBox>&nbsp;<input class="formbuttons" style="width: 121px; height: 21px" onclick="ShowDOSignature()"
                type="button" value="View Signature" tabindex="-1"><asp:Label ID="lblDODesc" runat="server" Width="349px" Font-Size="XX-Small"></asp:Label>
            <asp:Label ID="lblBillObjection" ForeColor="#003300" Style="font-weight: 700" runat="server" Visible="False"></asp:Label>
        &nbsp;
            </td>
    </tr>
    <tr>
        <td width="15%" class="auto-style4">
            <asp:Label ID="lblDPCode" CssClass="mandatory" runat="server">DP Code</asp:Label></td>
        <td colspan="3" class="auto-style4">
            <asp:TextBox ID="txtDPCode" CssClass="formlines" onblur="chkbadchar(this);" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>&nbsp;<asp:Label ID="lblDPDesc" runat="server" Width="70%" Font-Size="XX-Small"></asp:Label>&nbsp;</td>
    </tr>
    <tr>
        <td width="15%" class="auto-style3">
            <asp:Label ID="lblBillAmount" CssClass="mandatory" runat="server">Net Amount</asp:Label></td>
        <td colspan="2" class="auto-style3">
            <asp:TextBox ID="txtBillAmount" CssClass="formlines" runat="server" Enabled="False" ReadOnly="True"
                onblur="chkbadchar(this);" ForeColor="Black"></asp:TextBox>&nbsp;<asp:Label ID="lblMessage" runat="server" Font-Size="XX-Small"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:HyperLink ID="lnkEmployee" runat="server" CssClass="mandatory"
                Font-Underline="True" ForeColor="#0066CC"
                NavigateUrl="~/WebUI/audit/EmployeeDetailsDisplay.aspx" Target="_blank"
                Visible="False">View Employees Details</asp:HyperLink>
            &nbsp;&nbsp;
            <asp:Label ID="lblmth" runat="server" Text="Month:" ForeColor="#003300" Style="font-weight: 700" Visible="False"></asp:Label>
            <asp:Label ID="lblmonth" runat="server" Text="Month" ForeColor="Maroon" Style="font-weight: 700" Visible="False"></asp:Label>
            <asp:Label ID="lblyr" runat="server" Text="Year:" ForeColor="#003300" Style="font-weight: 700" Visible="False"></asp:Label>
            &nbsp;<asp:Label ID="lblyear" runat="server" Text="Year" ForeColor="#990000" Style="font-weight: 700" Visible="False"></asp:Label>
            &nbsp;<asp:Button ID="btncps" runat="server" Text="CPSDATA" OnClick="btncps_Click" Visible="False" ValidationGroup="none" CssClass="formbuttons" CausesValidation="False" />
            &nbsp;
          
           

            <asp:Label ID="lblselect" runat="server" Visible="False"></asp:Label>
          
           

        </td>
    </tr>
</table>

<div>
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>

    <%--     <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" BehaviorID="Modelbehavior" DropShadow="true" TargetControlID="btncps" OkControlID="btncps"
    CancelControlID="btnclose" BackgroundCssClass="Background">
</cc1:ModalPopupExtender>--%>
    
    <asp:Panel ID="Panl1" runat="server"  >


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblCid" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <asp:Label runat="server" Text="CPS DATA" CssClass="formtitle"></asp:Label>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="">Amount =</asp:Label>
        &nbsp;<asp:Label ID="lblamt" runat="server"></asp:Label>
        &nbsp;

        <table id="Table2" border="0" class="pgborder" style="margin-left: 350px">
            <tr>
                <td>
                    <asp:Label ID="lbltoken" runat="server" Text="Token Number" CssClass="mandatory"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttoken" runat="server" CssClass="formlines" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttoken" ErrorMessage="Data Required" ValidationGroup="save" CssClass="validatemessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblcpsno" runat="server" Text="CPS Number" CssClass="mandatory"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpsno" runat="server" CssClass="formlines"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcpsno" ErrorMessage="Data Required" ValidationGroup="save" CssClass="validatemessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblsuffix" runat="server" Text="Suffix" CssClass="mandatory"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlsuffix" runat="server" OnSelectedIndexChanged="ddlsuffix_SelectedIndexChanged" CssClass="drptxt" Width="110px" TabIndex="-1">
                    </asp:DropDownList>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlsuffix" ErrorMessage="Data Required" ValidationGroup="save" CssClass="validatemessage"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblbillmonth" runat="server" Text="Month" CssClass="mandatory"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtmonth" runat="server" CssClass="formlines"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="txtmonth_FilteredTextBoxExtender" runat="server"
                        TargetControlID="txtmonth"
                        FilterType="numbers">
                    </cc1:FilteredTextBoxExtender>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmonth" ErrorMessage="Data Required" ValidationGroup="save" CssClass="validatemessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblbillyear" runat="server" Text="Year" CssClass="mandatory"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtyear" runat="server" CssClass="formlines"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="txtyear_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtyear"></cc1:FilteredTextBoxExtender>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtyear" ErrorMessage="Data Required" ValidationGroup="save" CssClass="validatemessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblcpsmonth" runat="server" Text="BillMonth" CssClass="mandatory"></asp:Label>
                </td>
                <td>
                    <asp:Label runat="server" Text="Cpsmonth" ID="lblcpsbillmonth"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblcpsYear" runat="server" Text="Billyear" CssClass="mandatory"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblcpsbillyear" runat="server" Text="Cpsyear"></asp:Label>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblamount" runat="server" CssClass="mandatory" Text="Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtamount" runat="server" CssClass="formlines"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="txtamount_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtamount">
                    </cc1:FilteredTextBoxExtender>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtamount" CssClass="validatemessage" ErrorMessage="Data Required" ValidationGroup="save"></asp:RequiredFieldValidator>
                </td>
            </tr>


            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="CmdAdd" runat="server" OnClick="CmdAdd_Click" Text="Add" CssClass="formbuttons"  ValidationGroup="save"/>
                    &nbsp;<asp:Button ID="Btnclose" runat="server" CssClass="formbuttons" Text="Clear" OnClick="Btnclose_Click" CausesValidation="false" Width="90px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblcpsdata" runat="server" Font-Size="XX-Small"></asp:Label>
                </td>
            </tr>
        </table>
        <table id="Table11" cellspacing="1" cellpadding="1" width="100%" border="0">
            <tr>
                <td align="center">
                    <asp:DataGrid ID="DataGrid1" runat="server" CssClass="formlines" Width="100%" ShowFooter="True"
                        BorderWidth="1" AutoGenerateColumns="False" OnItemCommand="DataGrid1_ItemCommand">
                        <Columns>
                            <%--<asp:BoundColumn DataField="TokenNo" ReadOnly="True" HeaderText="TokenNo" HeaderStyle-CssClass="mandatory"></asp:BoundColumn>--%>
                           

                             <asp:TemplateColumn  HeaderStyle-CssClass="mandatory">
                                     <ItemTemplate>
                                                         
                                   <asp:Label ID="lblCid" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem,"Cid") %>'>
                                       </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                             <asp:TemplateColumn HeaderText="Tokenno" HeaderStyle-CssClass="mandatory">
                                     <ItemTemplate>
                                    <asp:Label ID="lblTokenno" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"tokenno") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="CpsNo" HeaderStyle-CssClass="mandatory">
                                     <ItemTemplate>
                                    <asp:Label ID="lblCpsNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CpsNo") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Suffix" HeaderStyle-CssClass="mandatory">
                                <ItemTemplate>
                                    <asp:Label ID="Label2Suffix" Text='<%# DataBinder.Eval(Container.DataItem, "Suffix")%>' runat="server">
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Mth" HeaderStyle-CssClass="mandatory">
                                <ItemTemplate>
                                    <asp:Label ID="lblMonth" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CMonth") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Yr" HeaderStyle-CssClass="mandatory">
                                <ItemTemplate>
                                    <asp:Label ID="lblYear" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CYear") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="BillMonth" HeaderStyle-CssClass="mandatory">
                                <ItemTemplate>
                                    <asp:Label ID="lblBillMonth" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillMonth") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="BillYear" HeaderStyle-CssClass="mandatory">
                                <ItemTemplate>
                                    <asp:Label ID="lblBillYear" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"BillYear") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Amount" HeaderStyle-CssClass="mandatory">
                                <ItemTemplate>
                                    <asp:Label ID="lblAmount" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Amount") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Actions" HeaderStyle-CssClass="mandatory">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>&nbsp;&nbsp;
											<asp:LinkButton ID="lnkDelete" Runat="server" CssClass="" CommandName="Delete" CausesValidation="False">Delete</asp:LinkButton>				
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>

                </td>
               
            </tr>
            <tr>
                <td>
                    &nbsp;<asp:Button ID="btnclosed" runat="server"  Text="Close"  CssClass="formbuttons" OnClick="btnclosed_Click" Visible="False" CausesValidation="false" />
                    &nbsp;<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
               </tr>
        </table>
    </asp:Panel>
       
</div>



