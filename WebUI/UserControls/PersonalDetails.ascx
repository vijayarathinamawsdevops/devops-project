<%@ Control Language="c#" AutoEventWireup="True" Codebehind="PersonalDetails.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.PersonalDetails" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<script src="../Scripts/date-picker.js" type="text/javascript"></script>
 <script src="../Scripts/ekvm.js" type="text/javascript"></script>
<script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
<link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
 <%--<Ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></Ajax:ToolkitScriptManager>--%>
 <head runat="server"> 
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</head>
<TABLE class="pgborder" id="Table1" cellSpacing="1" cellPadding="1" width="98%" align="center"
	border="0">
	<TR class="formtitle">
		<TD align="center" colSpan="8">Personal Details</TD>
	</TR>
	<TR>
		<TD width="7%"><asp:label id="lblEMPIDNo" runat="server" CssClass="mandatory">EMP ID No<br>(GPF No)</asp:label></TD>
		<TD><asp:textbox id="txtEMPIDNo" tabIndex="1" runat="server" CssClass="formlines" onblur="chkbadchar(this);" ontextchanged="txtEMPIDNo_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="rfvTokenNo" runat="server" CssClass="validatemessage" ControlToValidate="txtEMPIDNo"
				ErrorMessage="Enter EmpIdNo"><img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator></TD>
		<td width="8%"><asp:label id="lblSuffix" runat="server" CssClass="mandatory">Suffix</asp:label></td>
		<td>
			<asp:DropDownList id="drpEMPSuffix" tabIndex="-1" CssClass="drptxt" 
                runat="server" Width="152px"  AutoPostBack="true" 
                onselectedindexchanged="drpEMPSuffix_SelectedIndexChanged"></asp:DropDownList>
			<asp:requiredfieldvalidator id="RfdSuffix2" CssClass="validatemessage" runat="server" ErrorMessage="Enter EmpIdSuffix"
				ControlToValidate="drpEMPSuffix">
				<img src="../Images/alert.gif" height="20" width="15" border="0"></asp:requiredfieldvalidator>
		</td>
		<td style="WIDTH: 56px"><asp:label id="lblName" runat="server" CssClass="mandatory">Name</asp:label></td>
		<td><asp:textbox id="txtEMPName" runat="server" CssClass="formlines" EnableViewState="False" onblur="chkbadchar(this);"></asp:textbox>&nbsp;
			<asp:RegularExpressionValidator id="NameValidator" runat="server" ErrorMessage="Enter only Name Format" ControlToValidate="txtEMPName"
				ValidationExpression="^[a-zA-Z].[a-zA-Z]*$"></asp:RegularExpressionValidator></td>
		<td><asp:label id="lblPayScale" runat="server" CssClass="mandatory">PayScale</asp:label></td>
		<td><asp:dropdownlist id="cboPayScale" tabIndex="-1" runat="server" 
                CssClass="drptxt" Width="156px"></asp:dropdownlist></td>
	</TR>
	<tr>
		<td><asp:label id="lblDPCode" runat="server" CssClass="mandatory">DPCode</asp:label></td>
		<td><asp:dropdownlist id="ddlDpCode" tabIndex="-1" runat="server" CssClass="drptxt" Width="160px">
				<asp:ListItem Value="Select">Select</asp:ListItem>
			</asp:dropdownlist></td>
		<td><asp:label id="lblDesignation" runat="server" CssClass="mandatory">Designation</asp:label></td>
		<td>
			<asp:DropDownList id="cbodesig" runat="server" Height="16px" Width="160px" tabIndex="-1" CssClass="drptxt"></asp:DropDownList></td>
		<td colSpan="2"><asp:radiobuttonlist id="radType" CssClass="mandatory" AutoPostBack="True" RepeatDirection="Horizontal"
				Runat="server" onselectedindexchanged="radType_SelectedIndexChanged">
				<asp:ListItem Value="0">Permanent</asp:ListItem>
				<asp:ListItem Value="1">Temporary</asp:ListItem>
			</asp:radiobuttonlist></td>
		<td><asp:label id="lblUpto" runat="server" CssClass="mandatory" Visible="False">Upto Date<br>(dd/mm/yyyy)</asp:label></td>
		<td><asp:textbox id="txtUPTo" runat="server" CssClass="formlines" Visible="False" onblur="chkbadchar(this);"></asp:textbox>
        <%--<asp:Image ID="ImgUPto" runat="server" ImageUrl="../Images/show-calendar.gif" />
        <Ajax:CalendarExtender ID="CalendarExtender5" TargetControlID="txtUPTo" Format="dd/MM/yyyy" runat="server" PopupButtonID="ImgUPto">
            </Ajax:CalendarExtender>--%>
        <%--<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
href="javascript:show_calendar('txtUPTo');"><IMG src="../Images/show-calendar.gif" border="0"></A>--%>
        
        &nbsp;
			<asp:RegularExpressionValidator id="uptodatevalidator" runat="server" ErrorMessage="Enter only Date Fromat(dd/mm/yyyy)"
				ControlToValidate="txtUPTo" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
				href="javascript:show_calendar('PersonalDetails.txtUPTo');"></A></td>
	</tr>
	<tr>
		<td><asp:label id="lblDOB" runat="server" CssClass="mandatory">Date Of Birth<br>(dd/mm/yyyy)</asp:label></td>
		<td><asp:textbox id="txtDOB" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>

       <%-- <A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
		href="javascript:show_calendar('txtDOB');">--%> <asp:Image ID="imgDOB" runat="server" ImageUrl="../Images/show-calendar.gif" />
        <Ajax:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDOB" Format="dd/MM/yyyy" runat="server" PopupButtonID="imgDOB">
            </Ajax:CalendarExtender>
        &nbsp; 
			<asp:RegularExpressionValidator id="dobvalidator" runat="server" ErrorMessage="Enter only Date Fromat(dd/mm/yyyy)"
				ControlToValidate="txtDOB" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator> 
				 </td>
		<td><asp:label id="lbldept" runat="server" CssClass="mandatory">Department</asp:label></td>
		<td>
			<asp:DropDownList id="cbodept" CssClass="drptxt" runat="server" Width="160px"></asp:DropDownList></td>
		<td style="WIDTH: 56px"><asp:label id="lblHomeTown" CssClass="mandatory" Runat="server">HomeTown</asp:label></td>
		<td><asp:textbox id="txtHomeTown" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox></td>
		<td><asp:label id="lblService" CssClass="mandatory" Runat="server">Service Type</asp:label></td>
		<td><asp:radiobuttonlist id="radService" CssClass="mandatory" AutoPostBack="True" RepeatDirection="Horizontal"
				Runat="server" onselectedindexchanged="radService_SelectedIndexChanged">
				<asp:ListItem Value="0">All India Service</asp:ListItem>
				<asp:ListItem Value="1">State Service</asp:ListItem>
			</asp:radiobuttonlist></td>
	</tr>
	<tr>
		<td><asp:label id="lblDOS" runat="server" CssClass="mandatory">Date Of Commencement Of Service<br>(dd/mm/yyyy)</asp:label></td>
		<td><asp:textbox id="txtDOS" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
        <asp:Image ID="ImgDOS" runat="server" ImageUrl="../Images/show-calendar.gif" />
        <Ajax:CalendarExtender ID="CalendarExtender2" TargetControlID="txtDOS" Format="dd/MM/yyyy" runat="server" PopupButtonID="ImgDOS">
            </Ajax:CalendarExtender>
        <%--<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
		href="javascript:show_calendar('txtDOS');"><IMG src="../Images/show-calendar.gif" border="0"></A>--%>
        &nbsp;
			<asp:RegularExpressionValidator id="docvalidator" runat="server" ErrorMessage="Enter only Date Fromat(dd/mm/yyyy)"
				ControlToValidate="txtDOS" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator> 
				 </td>
		<td><asp:label id="lblDOR" runat="server" CssClass="mandatory">Date Of Retirement<br>(dd/mm/yyyy)</asp:label></td>
		<td><asp:textbox id="txtDOR" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
        <asp:Image ID="ImgDOR" runat="server" ImageUrl="../Images/show-calendar.gif" />
        <Ajax:CalendarExtender ID="CalendarExtender3" TargetControlID="txtDOR" Format="dd/MM/yyyy" runat="server" PopupButtonID="ImgDOR">
            </Ajax:CalendarExtender>
       <%--<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
										href="javascript:show_calendar('txtDOR')"><IMG src="../Images/show-calendar.gif" align="absMiddle" border="0"></A>--%>
        &nbsp;
			<asp:RegularExpressionValidator id="dorvalidator" runat="server" ErrorMessage="Enter only Date Fromat(dd/mm/yyyy)"
				ControlToValidate="txtDOR" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator> 
				 </td>
		<td style="WIDTH: 56px"><asp:label id="lblDOI" runat="server" CssClass="mandatory">Date Of Increment<br>(dd/mm/yyyy)</asp:label></td>
		<td><asp:textbox id="txtDOI" runat="server" CssClass="formlines" onblur="chkbadchar(this);"></asp:textbox>
        <asp:Image ID="ImgDOI" runat="server" ImageUrl="../Images/show-calendar.gif" />
        <Ajax:CalendarExtender ID="CalendarExtender4" TargetControlID="txtDOI" Format="dd/MM/yyyy" runat="server" PopupButtonID="ImgDOI">
            </Ajax:CalendarExtender>
        <%--<A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"
href="javascript:show_calendar('txtDOI');"><IMG src="../Images/show-calendar.gif" border="0"></A>--%>
        
        &nbsp;
			<asp:RegularExpressionValidator id="doivalidator" runat="server" ErrorMessage="Enter only Date Fromat(dd/mm/yyyy)"
				ControlToValidate="txtDOI" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator> 
				 </td>
		<td><asp:label id="lblEarnedLeave" CssClass="mandatory" Runat="server">Earned Leave</asp:label><asp:label id="lbldate" CssClass="mandatory" Runat="server"></asp:label></td>
		<td><asp:textbox id="txtEarnedLEave" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
			<asp:RegularExpressionValidator id="elvalidator" runat="server" ErrorMessage="Enter Only Numbers" ControlToValidate="txtEarnedLEave"
				ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
	</tr>
	<tr>
		<td><asp:label id="lblUnearnedPrivate" CssClass="mandatory" Runat="server">Unearned Private Leave</asp:label></td>
		<td><asp:textbox id="txtUnearnedPrivate" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
			<asp:RegularExpressionValidator id="uneapvalidator" runat="server" ErrorMessage="Enter Only Numbers" ControlToValidate="txtUnearnedPrivate"
				ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
		<td><asp:label id="lblUnearnedMedical" CssClass="mandatory" Runat="server">Unearned Medical Leave</asp:label></td>
		<td><asp:textbox id="txtUnearnedMedical" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
			<asp:RegularExpressionValidator id="unemvalidator" runat="server" ErrorMessage="Enter Only Numbers" ControlToValidate="txtUnearnedMedical"
				ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
		<td style="WIDTH: 56px"><asp:label id="lblExtraordinary" CssClass="mandatory" Runat="server">Extraordinary Leave</asp:label></td>
		<td><asp:textbox id="txtExtraordinary" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
			<asp:RegularExpressionValidator id="eolvalidator" runat="server" ErrorMessage="Enter Only Numbers" ControlToValidate="txtExtraordinary"
				ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
		<td><asp:label id="lblHalfPay" CssClass="mandatory" Runat="server">Half Pay Leave</asp:label></td>
		<td><asp:textbox id="txtHalfPay" CssClass="formlines" Runat="server" onblur="chkbadchar(this);"></asp:textbox>
			<asp:RegularExpressionValidator id="hplvalidator" runat="server" ErrorMessage="Enter Only Numbers" ControlToValidate="txtHalfPay"
				ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></td>
	</tr>
    <tr><td><asp:Label ID="lblMassage" runat="server" CssClass="validatemessage"></asp:Label></td></tr>
	<tr>
		<td colSpan="4"><asp:panel id="pnlCommand" Runat="server">
<asp:Button id="btnSave" CssClass="formbuttons" Width="100px" Runat="server" Text="Save" CausesValidation="False" onclick="btnSave_Click"></asp:Button>&nbsp;&nbsp; 
<asp:Button id="btnCancel" CssClass="formbuttons" Width="100px" Runat="server" Text="Cancel"
					CausesValidation="False" onclick="btnCancel_Click"></asp:Button>&nbsp;&nbsp; 
<asp:button id="btnAddLeave" CssClass="formbuttons" Runat="server" Text="Add 15 Days" CausesValidation="False" onclick="btnAddLeave_Click"></asp:button></asp:panel></td>
	</tr>
</TABLE>
