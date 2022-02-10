<%@ Page language="c#" Codebehind="misc1.aspx.cs" AutoEventWireup="True" Inherits="WebUI.audit.misc1" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register src="../UserControls/LoginFooter.ascx" tagname="LoginFooter" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
  <HEAD>
		<title>e- Karuvoolam Miscellaneous(Fuel Reimbursement, Maintenance, Insurance)</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
  </HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Misc1" method="post" runat="server">
        

        
  
			<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" >
				<TR>
					<TD colSpan="4"><uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>					
				</TR>
				<TR>
					<TD colSpan="4"><uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
					
				</TR>
				<TR>
					<TD colSpan="4"><uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber></TD>
					
				</TR>
				<TR>
					<TD style="HEIGHT: 38px" width="15%">
<asp:label id=Label1 runat="server" CssClass="mandatory" >From Date       </asp:label>
</TD>
					<TD style="HEIGHT: 38px" width="35%">
<asp:textbox id=txtFromDate runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);" Width="72px"></asp:textbox><A 
      onmouseover="window.status='Date Picker';return true;" 
      onmouseout="window.status='';return true;" 
      href="javascript:show_calendar('Misc1.txtFromDate');"><IMG 
      src="../Images/show-calendar.gif" border=0></A><asp:regularexpressionvalidator id="Regularexpressionvalidator2" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtFromDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
					<TD style="HEIGHT: 38px" width="15%">
<asp:label id=lblTo runat="server" CssClass="mandatory" Width="55px">To Date</asp:label>
                    </TD>
					<TD style="HEIGHT: 38px">
<asp:textbox id=txtToDate runat="server" CssClass="formlines" MaxLength="10" Width="72px" onblur="chkbadchar(this);"></asp:textbox><A 
      onmouseover="window.status='Date Picker';return true;" 
      onmouseout="window.status='';return true;" 
      href="javascript:show_calendar('Misc1.txtToDate');"><IMG 
      src="../Images/show-calendar.gif" border=0></A><asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtToDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 34px">
&nbsp;<asp:Label id=lblName runat="server" CssClass="mandatory" Width="56px">Name</asp:Label>
                    </TD>
					<TD style="HEIGHT: 34px">
<asp:TextBox ID=txtName runat="server" CssClass="formlines" Width="296px" onblur="chkbadchar(this);"></asp:TextBox></TD>
					<TD style="HEIGHT: 34px">
                        <asp:label id="Label3" runat="server" CssClass="mandatory">Is this Article 99 Advance</asp:label></TD>
					<TD style="HEIGHT: 34px">
                       <asp:DropDownList ID="drpArticle" runat="server" CssClass="drptxt">
                                            <asp:ListItem Selected="True" Value="N">No</asp:ListItem>
                                            <asp:ListItem Value="Y">Yes</asp:ListItem>
                                        </asp:DropDownList>
                                   </TD>
				</TR>
				<TR>
					<TD>
<asp:button id=btnSave tabIndex=6 runat="server" CssClass="formbuttons" Width="100px" Text="Save" onclick="btnSave_Click"></asp:button></TD>
					<TD>
                        &nbsp;</TD>
					<TD>
                        &nbsp;</TD>
					<TD>
                        &nbsp;</TD>
				</TR>
				<TR>
					<TD>
						<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label>
						<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
					<TD>
						&nbsp;</TD>
					<TD>
						&nbsp;</TD>
					<TD>
						&nbsp;</TD>
				</TR>
				<TR>
					<TD colSpan="4">
						<uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></TD>
					
				</TR>
				<TR>
					<TD colSpan="4">
						<uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></TD>
					
				</TR>
				<TR>
					<TD colSpan="4">
                        <uc1:Footer ID="Footer1" runat="server" />
                    </TD>
					
				</TR>
			</TABLE>
   
		</form>
	</body>
</HTML>
