<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Page language="c#" Codebehind="GpfAispf.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.GpfAispf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - GpfAispf</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<script>
		function BalanceAmtCalculation()
		{
			var AgAmt = 0;
			var Subs = 0;
			var Refund = 0;
			var Ida = 0;
			var wDrawal = 0;
			var Balance = 0;

			if(document.getElementById("txtAGamt").value != "")
				AgAmt = document.getElementById("txtAGamt").value;
			if(document.getElementById("txtSubs").value != "")
				Subs = document.getElementById("txtSubs").value;
			if(document.getElementById("txtRefund").value != "")
				Refund = document.getElementById("txtRefund").value;
			if(document.getElementById("txtIDA").value != "")
				Ida = document.getElementById("txtIDA").value;
			if(document.getElementById("txtWdl").value != "")
				wDrawal = document.getElementById("txtWdl").value;			
			Balance = Number(AgAmt) + Number(Subs) + Number(Refund) + Number(Ida) - Number(wDrawal);
			txtBalance.Text = Balance;
}
function Image_OnError(image) {
    image.onerror = "";
    image.style.visibility = "hidden";
    return true;
}
		</script>
	    <style type="text/css">
            #I1
            {
                height: 275px;
            }
        </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="GpfAispf" method="post" runat="server">
        
     
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<TR>
					<TD width="100%"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td align="middle" height="100%" valign="top">
                    
                  
                    <asp:Panel ID="pnlControls" Runat="server">
						<table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD width="100%" colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
							</table>
                            <table border="0" cellpadding="1" cellspacing="2" width="98%">
							<TR>
								<TD width="100%" colSpan="4" style="text-align:left"><uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
							</TR>
							</table>
                            <table class="parabr"> 
                                <TR> 
                                    <asp:Panel ID="Panel11" Runat="server">

                                    <td >
                                        <asp:Label ID="lblTapalDate" runat="server" CssClass="mandatory" Width="60px">TapalDate</asp:Label>
                                    </td>
                                    <td >
                                        <asp:TextBox ID="txtTapalDate" runat="server" CssClass="formlines" 
                                            MaxLength="30" onblur="chkbadchar(this);" ontextchanged="txtTapalNo_TextChanged" AutoPostBack="true" TabIndex="1"></asp:TextBox>
                                        <a href="javascript:show_calendar('txtTapalDate');" 
                                            onmouseout="window.status='';return true;" 
                                            onmouseover="window.status='Date Picker';return true;">
                                            <img id=img11 border="0" src="../Images/show-calendar.gif" />
                                        </a>
                                        <asp:RequiredFieldValidator ID="rfvtxtTapalDate" runat="server" 
                                            ControlToValidate="txtTapalDate" CssClass="validatemessage"  
                                            ErrorMessage="Data Required"></asp:RequiredFieldValidator>                                       
                                    </td>

                                    <TD>
                                        <asp:Label ID="lblTapalNo" runat="server" CssClass="mandatory">Tapal Number</asp:Label>
                                    </TD>
								    <td >
                                        <asp:TextBox ID="txtTapalNo" runat="server" CssClass="formlines" MaxLength="30" onblur="chkbadchar(this);" 
                                            ontextchanged="txtTapalNo_TextChanged" TabIndex="1" AutoPostBack="True"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtTapalNo" CssClass="validatemessage" 
                                            ErrorMessage="Data Required"></asp:RequiredFieldValidator>
                                    </td>
                                    </asp:Panel>
								</TR>
								<TR>
									<TD style="HEIGHT: 22px" width="15%"><asp:label id="Label1" runat="server" CssClass="mandatory">Name</asp:label></TD>
									<TD style="HEIGHT: 22px" width="35%"><asp:textbox id="txtName" runat="server" CssClass="formlines" onblur="chkbadchar(this);" MaxLength="30" TabIndex="1"></asp:textbox><asp:requiredfieldvalidator id="rvdName" runat="server" CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtName"
											ErrorMessage="Data Required"></asp:requiredfieldvalidator></TD>
									<TD style="HEIGHT: 22px" width="15%">
										<asp:label id="Label2" runat="server" CssClass="mandatory">Date of Birth</asp:label>
										<asp:label id="lblDOBformat" runat="server" Font-Size="XX-Small" ForeColor="Red">(dd/mm/yyyy)</asp:label></TD>
									<TD style="HEIGHT: 22px" width="35%">
										<asp:textbox id="txtDOB" tabIndex="2" runat="server" MaxLength="10" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox>
                                        <a href="javascript:show_calendar('GpfAispf.txtDOB')" 
                                            onmouseout="window.status='';return true;" 
                                            onmouseover="window.status='Date Picker';return true;">
                                            <img border="0" src="../Images/show-calendar.gif">
                                            </img>
                                        </a>
										<asp:requiredfieldvalidator id="rfvDateofBirth" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											ControlToValidate="txtDOB" Display="Dynamic"></asp:requiredfieldvalidator>
										<asp:regularexpressionvalidator id="Regularexpressionvalidator3" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDOB" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 31px" width="15%">
										<asp:label id="Label3" runat="server" CssClass="mandatory">Date of Retirement</asp:label>
										<asp:label id="Label17" runat="server" ForeColor="Red" Font-Size="XX-Small">(dd/mm/yyyy)</asp:label></TD>
									<TD style="HEIGHT: 31px" width="35%">
										<asp:textbox id="txtDOR" runat="server" CssClass="formlines" TabIndex="3" MaxLength="10" onblur="chkbadchar(this);"></asp:textbox><%--<a href="javascript:show_calendar('GpfAispf.txtDOR')" 
                                            onmouseout="window.status='';return true;" 
                                            onmouseover="window.status='Date Picker';return true;">
                                            <img border="0" src="../Images/show-calendar.gif">
                                            </img>--%>
                                        </a>
										<a href="javascript:show_calendar('GpfAispf.txtDOR')" 
                                            onmouseout="window.status='';return true;" 
                                            onmouseover="window.status='Date Picker';return true;">
                                        <img border="0" src="../Images/show-calendar.gif"></img></a><asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											ControlToValidate="txtDOR" Display="Dynamic"></asp:requiredfieldvalidator>
                                            
                                            <asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDOR" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
                                            
                                            </TD>
									<TD style="HEIGHT: 31px" width="15%">
										<asp:label id="Label12" runat="server" CssClass="mandatory" Visible="False">Gpf Commencement Date</asp:label>
										<asp:label id="Label16" runat="server" Font-Size="XX-Small" ForeColor="Red" Visible="False">(dd/mm/yyyy)</asp:label></TD>
									<TD style="HEIGHT: 31px" width="35%">
										<asp:textbox id="txtCommencmentDt" runat="server" Visible="False" MaxLength="10" onblur="chkbadchar(this);" CssClass="formlines" TabIndex="4"></asp:textbox>
                                        <%--<a href="javascript:show_calendar('GpfAispf.txtCommencmentDt')" 
                                            onmouseout="window.status='';return true;" 
                                            onmouseover="window.status='Date Picker';return true;">
                                            <img border="0" src="../Images/show-calendar.gif">
                                            </img>
                                        </a>--%></TD>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="Label11" runat="server" CssClass="mandatory">Nature of Loan</asp:label></TD>
									<TD width="35%">
										<asp:dropdownlist id="cboPFloanNature" runat="server" Width="140px" AutoPostBack="True" TabIndex="5"
											CssClass="drptxt" onselectedindexchanged="cboPFloanNature_SelectedIndexChanged"></asp:dropdownlist></TD>
									<TD width="15%">
										<asp:label id="Label4" runat="server" CssClass="mandatory">Pay (Basic + PP)</asp:label></TD>
									<TD width="35%">
										<asp:textbox id="txtPay" runat="server" CssClass="formlines" MaxLength="10" TabIndex="6" onblur="chkbadchar(this);"></asp:textbox>
										<asp:requiredfieldvalidator id="rfvBasic" runat="server" CssClass="validatemessage" ErrorMessage="Data Required"
											ControlToValidate="txtPay" Display="Dynamic"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
								    <td style="HEIGHT: 31px" width="15%">
                                        <asp:Label ID="Label13" runat="server" CssClass="mandatory">Admissible (%)</asp:Label>
                                    </td>
                                    <td style="HEIGHT: 31px" width="35%">
                                        <asp:DropDownList ID="cboPFcategory" runat="server" CssClass="drptxt" 
                                            tabIndex="-1" Width="140px">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="HEIGHT: 31px" width="15%">
                                        <asp:Label ID="Label14" runat="server" CssClass="mandatory">Purpose</asp:Label>
                                    </td>
                                    <td style="HEIGHT: 31px" width="35%">
                                        <asp:DropDownList ID="cboPFloanPurpose" runat="server" CssClass="drptxt" 
                                            TabIndex="7">
                                        </asp:DropDownList>
                                    </td>
								</TR>
								<TR>
									<TD width="15%">
										<asp:label id="lblSanctionOrder" runat="server" CssClass="mandatory">Sanction 
                                        Order</asp:label></TD>
									<TD width="35%">
										<asp:TextBox ID="txtSanctionOrder" runat="server" CssClass="formlines" 
                                         onblur="chkbadchar(this);"   MaxLength="50" TabIndex="8"></asp:TextBox>
                                    </TD>
									<TD width="15%">
										<asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction 
                                        Date</asp:label></TD>
									<TD width="35%">
										<asp:TextBox ID="txtSanctionDate" runat="server" CssClass="formlines" 
                                            MaxLength="10" TabIndex="9" onblur="chkbadchar(this);"></asp:TextBox>
                                        <a href="javascript:show_calendar('GpfAispf.txtSanctionDate')" 
                                            onmouseout="window.status='';return true;" 
                                            onmouseover="window.status='Date Picker';return true;">
                                            <img border="0" src="../Images/show-calendar.gif">
                                            </img>
                                        </a>
                                        <asp:RequiredFieldValidator ID="rfvtxtSancDate" runat="server" 
                                            ControlToValidate="txtSanctionDate" CssClass="validatemessage" 
                                            Display="Dynamic" ErrorMessage="Data  Required"></asp:RequiredFieldValidator>
                                        <asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator>
                                    </TD>
								</TR>
								<TR>
									<TD width="15%" style="HEIGHT: 16px">
										<asp:label id="Label21" runat="server" CssClass="mandatory" Font-Bold="True" 
                                            Font-Size="XX-Small" Font-Underline="True" ForeColor="Fuchsia">ADD :</asp:label></TD>
									<TD width="35%" style="HEIGHT: 16px"></TD>
									<TD width="15%" style="HEIGHT: 16px">
										</TD>
									<TD width="35%" style="HEIGHT: 16px"></TD>
								</TR>
								<TR>
									<TD width="15%"><asp:label id="Label5" runat="server" CssClass="mandatory">AG&#39;s Slip 
                                        Figure</asp:label></TD>
									<TD width="35%">
                                        <asp:TextBox ID="txtAGamt" runat="server" AutoPostBack="True" onblur="chkbadchar(this);"
                                            CssClass="formlines" MaxLength="12" ontextchanged="txtBalAmtCalc_TextChanged" 
                                            TabIndex="10">0</asp:TextBox>
                                        <asp:RangeValidator ID="rvdAgAmt" runat="server" ControlToValidate="txtAGamt" 
                                            CssClass="validatemessage" Display="Dynamic" ErrorMessage="Incorrect Data" 
                                            MaximumValue="9999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                    </TD>
									<TD width="15%">
                                        <asp:Label ID="Label6" runat="server" CssClass="mandatory">Subscription</asp:Label>
                                    </TD>
									<TD width="35%">
                                        <asp:TextBox ID="txtSubs" runat="server" AutoPostBack="True" onblur="chkbadchar(this);"
                                            CssClass="formlines" MaxLength="12" ontextchanged="txtBalAmtCalc_TextChanged" 
                                            TabIndex="11">0</asp:TextBox>
                                        <asp:RangeValidator ID="rvdSubs" runat="server" ControlToValidate="txtSubs" 
                                            CssClass="validatemessage" Display="Dynamic" ErrorMessage="Incorrect Data" 
                                            MaximumValue="9999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                    </TD>
								</TR>
								<TR>
									<TD width="15%"><asp:label id="Label7" runat="server" CssClass="mandatory">Refund</asp:label></TD>
									<TD width="15%">
                                        <asp:textbox id="txtRefund" runat="server" CssClass="formlines" 
                                            MaxLength="12" TabIndex="12" AutoPostBack="True" onblur="chkbadchar(this);"
                                            ontextchanged="txtBalAmtCalc_TextChanged">0</asp:textbox>
                                        <asp:rangevalidator id="rvdRefund" runat="server" CssClass="validatemessage" 
                                            Display="Dynamic" ControlToValidate="txtRefund"
											ErrorMessage="Incorrect Data" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
									<TD width="15%"><asp:label id="Label8" runat="server" CssClass="mandatory">I.D.A</asp:label></TD>
									<TD width="15%">
                                        <asp:textbox id="txtIDA" runat="server" CssClass="formlines" 
                                            MaxLength="12" TabIndex="13" AutoPostBack="True" onblur="chkbadchar(this);"
                                            ontextchanged="txtBalAmtCalc_TextChanged">0</asp:textbox>
                                        <asp:rangevalidator id="rvdIDA" runat="server" CssClass="validatemessage" 
                                            Display="Dynamic" ControlToValidate="txtIDA"
											ErrorMessage="Incorrect Data" MinimumValue="0" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
								</TR>
								<TR>
									<TD width="15%"><asp:label id="Label22" runat="server" CssClass="mandatory" 
                                            Font-Bold="True" Font-Size="XX-Small" Font-Underline="True" ForeColor="Magenta">LESS: </asp:label></TD>
									<TD width="35%"></TD>
									<TD width="15%"></TD>
									<TD width="35%"></TD>
								</TR>
								<TR>
									<TD width="15%"><asp:label id="Label9" runat="server" CssClass="mandatory">Withdrawl</asp:label></TD>
									<TD width="35%">
                                        <asp:TextBox ID="txtWdl" runat="server" AutoPostBack="True" 
                                            CssClass="formlines" MaxLength="12" ontextchanged="txtBalAmtCalc_TextChanged" 
                                            TabIndex="14" onblur="chkbadchar(this);">0</asp:TextBox>
                                        <asp:RangeValidator ID="rvdWdl" runat="server" ControlToValidate="txtWdl" 
                                            CssClass="validatemessage" Display="Dynamic" ErrorMessage="Incorrect Data" 
                                            MaximumValue="9999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                    </TD>
									<TD width="15%">
                                        <asp:Label ID="lblPrevloanamt" runat="server" CssClass="mandatory">Loan Amt. 
                                        Pending</asp:Label>
                                    </TD>
									<TD width="35%">
                                        <asp:TextBox ID="txtpendingloanamt" runat="server" AutoPostBack="True" 
                                            CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"
                                            ontextchanged="txtpendingloanamt_TextChanged" TabIndex="15"></asp:TextBox>
                                        <asp:RangeValidator ID="Rangevalidator1" runat="server" 
                                            ControlToValidate="txtpendingloanamt" CssClass="validatemessage" 
                                            Display="Dynamic" ErrorMessage="Incorrect Data" MaximumValue="9999999" 
                                            MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                    </TD>
								</TR>
								<TR>
									<TD width="15%"><asp:label id="Label23" runat="server" CssClass="mandatory" 
                                            Font-Bold="True" Font-Size="XX-Small" Font-Underline="True" ForeColor="Magenta">BALANCE 
                                        :</asp:label>
                                        <asp:Label ID="Label10" runat="server" CssClass="mandatory"> in Account</asp:Label>
                                    </TD>
									<TD width="35%"><asp:textbox id="txtBalance" runat="server" TabIndex="16" 
                                            CssClass="formlines" MaxLength="10" AutoPostBack="True" onblur="chkbadchar(this);"
                                            ontextchanged="txtBalance_TextChanged">0</asp:textbox>
                                        <asp:RequiredFieldValidator ID="rfvtxtbal" runat="server" 
                                            ControlToValidate="txtBalance" CssClass="validatemessage" Display="Dynamic" 
                                            ErrorMessage="Data  Required"></asp:RequiredFieldValidator>
                                        <asp:rangevalidator id="rvtxtBal" runat="server" CssClass="validatemessage" 
                                            Display="Dynamic" ControlToValidate="txtBalance"
											ErrorMessage="Incorrect Data" MinimumValue="1" MaximumValue="9999999" Type="Integer"></asp:rangevalidator></TD>
									<TD width="15%"><asp:label id="Label15" runat="server" CssClass="mandatory">Admissible 
                                        Amount</asp:label></TD>
									<TD width="35%"><asp:textbox id="txtAdmissibleAmt" runat="server" TabIndex="17" 
                                            CssClass="formlines" MaxLength="12" onblur="chkbadchar(this);" 
                                            Enabled="False">0</asp:textbox>
                                        <asp:rangevalidator id="rvdSanctionedAmt" runat="server" 
                                            CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtAdmissibleAmt" ErrorMessage="Incorrect Data" MinimumValue="0" MaximumValue="9999999" 
                                            Type="Integer"></asp:rangevalidator></TD>
								</TR>
								<TR>
									<TD width="15%"><asp:label id="lblConamt" runat="server" CssClass="mandatory">Consolidate 
                                        Amt.</asp:label></TD>
									<TD width="35%">
                                        <asp:textbox id="txtconamt" runat="server" TabIndex="18" 
                                            onblur="chkbadchar(this);" CssClass="formlines" MaxLength="12">0</asp:textbox>
                                        <asp:rangevalidator id="Rangevalidator2" runat="server" 
                                            CssClass="validatemessage" Display="Dynamic" ControlToValidate="txtconamt"
											ErrorMessage="Incorrect Data" MinimumValue="0" MaximumValue="99999999" Type="Integer"></asp:rangevalidator></TD>
									<TD width="15%"><asp:label id="Label19" runat="server" CssClass="mandatory">No. of 
                                        Installments</asp:label></TD>
									<TD width="35%">
                                        <asp:textbox id="txtnoinstall" runat="server" TabIndex="19" 
                                            CssClass="formlines" MaxLength="12" AutoPostBack="True" onblur="chkbadchar(this);" 
                                            ontextchanged="txtnoinstall_TextChanged">0</asp:textbox>
                                        <asp:rangevalidator id="Rangevalidator3" runat="server" 
                                            CssClass="validatemessage" Display="Dynamic"
											ControlToValidate="txtnoinstall" ErrorMessage="Incorrect Data" MinimumValue="0" MaximumValue="9999999" 
                                            Type="Integer"></asp:rangevalidator>&nbsp; </TD>
								</TR>
								<tr>
									<td>&nbsp;</td>
									<td>
                                        &nbsp;</td>
									<td align="left"><asp:Label ID="lblmonthlyrecovery" Runat="server" CssClass="mandatory" Visible="False"></asp:Label></td>
								    <td align="left">
                                        &nbsp;</td>
								</tr>
								<TR>
									<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage" Width="348px"></asp:label><asp:textbox id="todaydate" runat="server" Visible="False"></asp:textbox></TD>
								</TR>
							    <tr>
                                    <td colspan="4">
                                        <iframe ID="I1" runat="server" name="I1" src="" target="_blank" width="100%">
                                        </iframe>
                                    </td>
                                </tr>
                        </asp:Panel>
							<TR>
								<TD align="left" colSpan="4"><asp:button id="btnSave" TabIndex="20" runat="server" CssClass="formbuttons" Text="Save" Width="90px" onclick="btnSave_Click"></asp:button>
                                    <asp:button id="btnView" TabIndex="20" runat="server" CssClass="formbuttons" 
                                        Text="View Report" Width="90px" onclick="btnView_Click" 
                                        CausesValidation="False"></asp:button>&nbsp;
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1" Width="162px"></asp:label><asp:linkbutton id="lbtnLookUp" runat="server" CausesValidation="False" Font-Size="X-Small" Font-Bold="True" onclick="lbtnLookUp_Click">Previous Details</asp:linkbutton></TD>
							</TR></td></tr></table>
                            <table width="100%">
							<TR>
								<TD align="left" colSpan="4"><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder></TD>
							</TR>
							<TR>
								<TD align="left" colSpan="4"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</table>
                         
                        
					</td>
				</tr>
				<tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD align="left"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</table>
		</form>
	</body>
</HTML>
