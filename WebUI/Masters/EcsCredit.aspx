<%@ Page language="c#" Codebehind="EcsCredit.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="WebUI.Masters.EcsCredit" %>
<%@ Register TagPrefix="uc1" TagName="ReportPage" Src="../UserControls/ReportPage.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register src="../UserControls/EcsMenus.ascx" tagname="EcsMenus" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Credit ECS</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>  
	</HEAD>
    <script language="javascript" type="text/javascript" >

        function checkcreditdate() {
            var creditdate = document.getElementById('txtInputDate').value;
            var checkdate = new Date();
            var d = checkdate.getDate();
            var today_date = (d < 10) ? '0' + d : d;
            var m = checkdate.getMonth() + 1;
            var today_month = (m < 10) ? '0' + m : m;
            var yy = checkdate.getYear();
            var today_year = (yy < 1000) ? yy + 1900 : yy;
            var nowdate = today_date + "/" + today_month + "/" + today_year;

            if (nowdate > creditdate) {
                //alert(nowdate);
                alert('Past Date not Valid');
                document.getElementById('txtInputDate').value = "";
                return false;
            }
        }
    </script>
    <script type="text/javascript" language="javascript">
    function confirmDelete()
{
    return confirm("Are you sure!  You want to Credit ECS???");
}
</script>

	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="BudDet" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="hdTable" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
                <tr>
                  <td>

                     

               
                      <uc2:EcsMenus ID="EcsMenus1" runat="server" />

                     

               
                  </td>
                </tr>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="1" cellPadding="1" width="98%"
							border="0">
							<TR>
								<TD width="15%">&nbsp;</TD>
								<TD width="35%">&nbsp;</TD>
								<TD width="15%">&nbsp;</TD>
								<TD width="35%" align="right"></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblSalOrNonSal" runat="server" Width="184px" CssClass="mandatory">Whether Salary or Non Salary</asp:label></TD>
								<TD width="35%"><asp:dropdownlist id="CboEcs" runat="server" CssClass="formlines" 
                                        AutoPostBack="True" onselectedindexchanged="CboEcs_SelectedIndexChanged" 
                                        Width="120px">
										<asp:ListItem Value="0">None</asp:ListItem>
										<asp:ListItem Value="3">Both</asp:ListItem>
									</asp:dropdownlist></TD>
								<TD width="15%"></TD>
								<TD width="35%"></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lbbatch" runat="server" CssClass="mandatory"> Batch Number</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtBatchNumber" runat="server" 
                                        CssClass="formlines" Enabled="False"
										ReadOnly="True" MaxLength="6" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"></TD>
								<TD width="35%"></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="Label1" runat="server" CssClass="mandatory">Enter Credit Date(dd/mm/yyyy)</asp:label>
                                    <asp:Label ID="Label4" runat="server" Font-Size="10pt" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width="35%"><asp:textbox id="txtInputDate" runat="server" onblur="return chkbadchar(this);" CssClass="formlines" MaxLength="10"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('txtInputDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ControlToValidate="txtInputDate"
										ErrorMessage="Date Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="revTranDate" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtInputDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								<TD width="15%"></TD>
								<TD width="35%">
                                    <%--<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Enter ECS Credit Date"
										Display="Dynamic" ControlToValidate="txtInputDate"></asp:RequiredFieldValidator>--%></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblECSNet" runat="server" CssClass="mandatory">ECS Net</asp:label>
                                    <asp:Label ID="Label5" runat="server" Font-Size="10pt" ForeColor="Red" Text="*"></asp:Label>
                                </TD>
								<TD width="35%"><asp:textbox id="txtECSNet" runat="server" CssClass="formlines" Enabled="False" ReadOnly="True"
										MaxLength="15" onblur="chkbadchar(this);"></asp:textbox></TD>
								<TD width="15%"></TD>
								<TD width="35%"></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="Label2" runat="server" Width="168px" CssClass="mandatory">Whether ECS Net Tallied</asp:label></TD>
								<TD width="35%"><asp:checkbox id="ChkEcsNet" runat="server" Width="52px" 
                                        Text="Yes"   AutoPostBack="True" oncheckedchanged="ChkEcsNet_CheckedChanged" 
                                        CausesValidation="True"></asp:checkbox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:label id="Label3" runat="server" CssClass="mandatory" Visible="False">Total No Of Records : </asp:label>
                                    <asp:label id="lblNoOfRecords" runat="server" CssClass="mandatory" 
                                        Visible="False"></asp:label></TD>
								<TD width="15%"></TD>
								<TD width="35%"></TD>
							</TR>
							<TR>
								<TD colSpan="2"><asp:label id="lblMessage" runat="server" CssClass="validationmessage" ForeColor="Green" Font-Bold="True"></asp:label></TD>
								<TD colSpan="2">&nbsp;</TD>
							</TR>
							<TR>
								<TD><asp:button id="btnShowBillAmount" runat="server" Width="100px" CssClass="formbuttons" Text="Show ECS Net" onclick="btnShowBillAmount_Click"></asp:button></TD>
								<TD><asp:button id="btnCreditECS" runat="server" Width="100px" 
                                        CssClass="formbuttons" Enabled="False"
										Text="Credit ECS" onclick="btnCreditECS_Click"  onclientclick="return confirmDelete();"></asp:button></TD>
								<TD colSpan="2">
									<asp:Button id="btnReport" runat="server" CssClass="formbuttons" Text="View Report" onclick="btnReport_Click"></asp:Button>
                                    <asp:button id="btnCancel" runat="server" Width="100px" CssClass="formbuttons" Text="Cancel"
										CausesValidation="False" onclick="btnCancel_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD colSpan="4">
									<uc1:ReportPage id="ReportPage1" runat="server"></uc1:ReportPage></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<TR>
					<TD>
						<uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></TD>
				</TR>
				<TR>
					<TD>
						<uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
