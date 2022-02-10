<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Page language="c#" Codebehind="Dcrg.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Dcrg" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Dcrg</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="javascript">	
		function checkServiceGratuity()
		{
			var radgrp;
			var radval;
			radgrp = document.getElementsByName("radService");			
			for(i=1;i<radgrp.length;i++)
			{
				if(radgrp[i].checked) radval = radgrp[i].value;				
			}	
			switch(radval)
			{
				case "0":			   
			        document.getElementById("lblDateOfRetirement").innerText = "Date Of Retirement"
			        break;
			    case "1":
					document.getElementById("lblDateOfRetirement").innerText = "Date Of Death"			        
			        break;			   			   
			}		
		}	
		
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0" onload="calculateGrossAmoount();" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="Dcrg1" name="Dcrg1" method="post" runat="server">
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<TABLE cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan="4" style="text-align:left"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
							<TR><td> 
								<asp:panel id="pnlControls" Runat="server">
                                <table class="parabr"> <tr> 
									<TD class="mandatory">Category</TD>
									<TD><asp:radiobuttonlist id="radService" Runat="server" CssClass="mandatory" RepeatLayout="Table" RepeatDirection="Horizontal">
											<asp:ListItem Value="0" Selected="True">Service Gratuity</asp:ListItem>
											<asp:ListItem Value="1">Family Gratuity</asp:ListItem>
										</asp:radiobuttonlist></TD>
                                    <td>
                                        <asp:Label ID="lblDCRGType" runat="server" CssClass="mandatory">DCRG Type : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlDCRGType" runat="server" CssClass="formlines" 
                                            Width="100px">
                                            <asp:ListItem Value="1">DCRG Final</asp:ListItem>
                                            <asp:ListItem Value="2">DCRG Residual</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    </TR>
							<TR>
                            <TD width="15%">
                                    <asp:Label ID="lblTapalDate" runat="server" CssClass="mandatory">Tapal Date</asp:Label>
                                </TD>
								<TD width="35%">
                                    <asp:TextBox ID="txtTapalDate" Runat="server" CssClass="formlines" AutoPostBack="true" 
                                        MaxLength="15" onblur="chkbadchar(this);" ontextchanged="txtTapalNo_TextChanged"
                                        ></asp:TextBox>
                                    <a href="javascript:show_calendar('txtTapalDate');" 
                                        onmouseout="window.status='';return true;" 
                                        onmouseover="window.status='Date Picker';return true;">
                                        <img border="0" src="../Images/show-calendar.gif">
                                        </img>
                                    </a>
                                    <asp:RequiredFieldValidator ID="rfvDeductionDate" runat="server" 
                                        ControlToValidate="txtTapalDate" CssClass="validatemessage" 
                                        ErrorMessage="Date Required"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid format"  ControlToValidate="txtTapalDate"
                                  CssClass="validatemessage"  ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>

                                    &nbsp;
                                </TD>
								 
								 <TD class="mandatory">Tapal Number</TD>
								<TD>
                                    <asp:TextBox ID="txtTapalNo" Runat="server"  AutoPostBack="true"
                                        CssClass="formlines" MaxLength="15" onblur="chkbadchar(this);" 
                                        ontextchanged="txtTapalNo_TextChanged"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtTapalNo" CssClass="validatemessage" 
                                        ErrorMessage="Date Required"></asp:RequiredFieldValidator>
                                    <%--<asp:RegularExpressionValidator ControlToValidate="txttapalNo" runat="server" ErrorMessage="Data Required" CssClass="validatemessage"></asp:RegularExpressionValidator>--%>
                                </TD>
							</TR>
							        <tr>
                                        <td class="mandatory">
                                            PPO Number</td>
                                        <td>
                                            <asp:TextBox ID="txtPPONumber" Runat="server" CssClass="formlines" 
                                                MaxLength="15" onblur="chkbadchar(this);"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="reqpponumber" Runat="server" 
                                                ControlToValidate="txtPPONumber" CssClass="validatemessage" 
                                                ErrorMessage="Data Required"></asp:RequiredFieldValidator>--%>
                                        </td>
                                        <td width="15%">
                                            <asp:Label ID="lblName" runat="server" CssClass="mandatory">Name</asp:Label>
                                        </td>
                                        <td width="35%">
                                            <asp:TextBox ID="txtName" runat="server" CssClass="formlines" MaxLength="40"></asp:TextBox>
                                           <%-- <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                                ControlToValidate="txtName" CssClass="validatemessage" Display="Dynamic" 
                                                ErrorMessage="Data Required"></asp:RequiredFieldValidator>--%>
                                        </td>
                                    </tr>
							<TR>
								<TD width="15%"><asp:label id="lblSanctionOrderNo" runat="server" CssClass="mandatory">Sanction Order No</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtSanctionOrderNo" runat="server" onblur="chkbadchar(this);" CssClass="formlines" MaxLength="50"></asp:textbox><%--<asp:requiredfieldvalidator id="rfvSanctionOrder" runat="server" CssClass="validatemessage" ControlToValidate="txtSanctionOrderNo"
										ErrorMessage="Data Required" Display="Dynamic"></asp:requiredfieldvalidator>--%></TD>
								<TD width="15%"><asp:label id="lblSanctionDate" runat="server" CssClass="mandatory">Sanction Date</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtSanctionDate" runat="server" onblur="chkbadchar(this);" CssClass="formlines"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Dcrg1.txtSanctionDate');"><IMG src="../Images/show-calendar.gif" border="0">
										<asp:requiredfieldvalidator id="rfvSanctionDate" runat="server" CssClass="validatemessage" ControlToValidate="txtSanctionDate"
											ErrorMessage="Data Required" Display="Dynamic"></asp:requiredfieldvalidator></A><asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtSanctionDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
							</TR>
							<TR>
								<TD><asp:label id="lblDeduction" runat="server" CssClass="mandatory">Deductions</asp:label></TD>
								<TD><asp:textbox id="txtDeductions" runat="server" onblur="chkbadchar(this);" 
                                        CssClass="formlines" MaxLength="12">0</asp:textbox><asp:rangevalidator id="rngtxtdeductions" runat="server" CssClass="validatemessage" ControlToValidate="txtDeductions"
										ErrorMessage="Incorrect Data" Display="Dynamic" MinimumValue="0" MaximumValue="99999999" Type="Integer" ForeColor=" "></asp:rangevalidator></TD>
								<TD class="mandatory">Gross Amount</TD>
								<TD><asp:textbox id="txtGrossAmount" runat="server" onblur="chkbadchar(this);" 
                                        CssClass="formlines" MaxLength="12"></asp:textbox></TD>
							</TR>
							<TR>
								<TD width="15%"><asp:label id="lblDateOfRetirement" runat="server" CssClass="mandatory">Date Of Retirement</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDateOfRetirement" Enabled="false" runat="server" CssClass="formlines"></asp:textbox><%--<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('Dcrg1.txtDateOfRetirement');"><IMG src="../Images/show-calendar.gif" border="0"></A>--%>
									<%--<asp:requiredfieldvalidator id="Rdatevalidator" runat="server" CssClass="validatemessage" ControlToValidate="txtDateOfRetirement"
										ErrorMessage="Data Required" Display="Dynamic"></asp:requiredfieldvalidator>--%></A><asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtDateOfRetirement" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
								<TD width="15%"><asp:label id="lbldeathdate" runat="server" CssClass="mandatory" Visible="False">Date Of Death</asp:label></TD>
								<TD width="35%"><asp:textbox id="txtDateofDeath" onblur="chkbadchar(this);" runat="server" CssClass="formlines" Visible="False"></asp:textbox></TD>
							</TR>
							<TR>
								<TD colSpan="4"><asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
							</TR></table>
							</asp:panel>
							<TR>
								<TD><asp:button id="btnsave" runat="server" CssClass="formbuttons" Width="100px" Text="Save" onclick="btnsave_Click"></asp:button>&nbsp;
									<asp:imagebutton id="ImageButton1" runat="server" 
                                        ImageUrl="../Images/lookup.gif" onclick="ImageButton1_Click" Visible="False"></asp:imagebutton>&nbsp;&nbsp;</TD>
							</TR>
							<TR>
								<TD><asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
							</TR>
							<TR>
								<TD><asp:placeholder id="PlaceHolder1" runat="server"></asp:placeholder><asp:textbox id="todaydate" runat="server" Visible="False"></asp:textbox></TD>
							</TR>
							<TR>
								<TD style="text-align:left"><uc1:checklist id="CheckList1" runat="server"></uc1:checklist></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr>
					<td><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
    <script language="javascript" type="text/javascript">        function calculateGrossAmoount() {
//            var netamt;
//            var deductionamt;
//            netamt = document.getElementById("BillInfo1_txtBillAmount").value;
//            deductionamt = document.getElementById("txtDeductions").value;
//            if (deductionamt == "0") {
//                document.getElementById("txtBillAmount").value = netamt;
//            }
//            else {
//                document.getElementById("txtBillAmount").value = parseInt(netamt) + parseInt(deductionamt);
//            }
            document.getElementById("txtPPONumber").focus();
            checkServiceGratuity();
        }</script>
</HTML>
