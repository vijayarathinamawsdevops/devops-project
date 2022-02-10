<%@ Control Language="c#" AutoEventWireup="True" Codebehind="GPFNumber.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.GPFNumber" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
<script type="text/javascript" language="javascript">
    function checknosExperience() {
        if ((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode == 46)) {
            event.returnValue = true;
        }
        else {
            alert("Enter Numeric Only");
            event.returnValue = false;
        }
    }
    </script>
<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="100%" border="0">
	<TR>
		<TD width="15%">
			<asp:label id="lblGpfNumber" runat="server" CssClass="mandatory">GPF Number</asp:label></TD>
		<TD width="35%">
			<asp:TextBox id="txtGPFNo" runat="server" CssClass="formlines" 
                onblur="chkbadchar(this);" MaxLength="10" TabIndex="1" AutoPostBack="true" onkeypress="return checknosExperience();"
                ontextchanged="txtGPFNo_TextChanged"></asp:TextBox>
			<asp:RequiredFieldValidator id="rfvGPFNumber" runat="server" ControlToValidate="txtGPFNo" Display="Dynamic" ErrorMessage="Data Required" CssClass="validatemessage"></asp:RequiredFieldValidator>
			<asp:RangeValidator id="rvGPFNumber" CssClass="validatemessage" runat="server" ErrorMessage="Invalid data" ControlToValidate="txtGPFNo" MinimumValue="1" MaximumValue="9999999999"></asp:RangeValidator></TD>
		<TD width="15%">
			<asp:Label ID="lblGpfSuffix" Runat="server" CssClass="mandatory">GPF Suffix</asp:Label>
		</TD>
		<TD width='35%'>
			<asp:DropDownList id="cboGpfSuffix" runat="server" CssClass="drptxt" 
                Width="160px" TabIndex="2" AutoPostBack="True" 
                ontextchanged="txtGPFNo_TextChanged"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="cboGpfSuffix" CssClass="validatemessage" 
                                        ErrorMessage="Date Required" InitialValue="-1"></asp:RequiredFieldValidator></TD>
	</TR>
</TABLE>
