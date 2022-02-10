<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EcsSettDateChange.aspx.cs" Inherits="eKaruvoolam.WebUI.Masters.EcsSettDateChange" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="YesNo" Src="../UserControls/YesNo.ascx" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD runat="server">
		<title>eKaruvoolam - Ecs Settlement Date Change</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>   
	</HEAD>
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

        function valsave() {
            var vtxtSalEcsDate = document.getElementById('<%=txtSalEcsDate.ClientID %>');
            var vtxtbatch = document.getElementById('<%=txtbatch.ClientID %>');
            var vtxtTotalRecord = document.getElementById('<%=txtTotalRecord.ClientID %>');
            var vtxtTotalAmount = document.getElementById('<%=txtTotalAmount.ClientID %>');

            if (vtxtSalEcsDate.value == '') {
                alert("ECS Settlement Date Cannot Be Blank");
                vtxtSalEcsDate.focus();
                return false;
            }
            if (vtxtbatch.value == '') {
                alert("ECS Batch Cannot Be Blank");
                vtxtbatch.focus();
                return false;
            }
            if (vtxtTotalRecord.value == '') {
                alert("Total Records Cannot Be Blank");
                vtxtTotalRecord.focus();
                return false;
            }
            if (vtxtTotalAmount.value == '') {
                alert("Total Amount Cannot Be Blank");
                vtxtTotalAmount.focus();
                return false;
            }
            return true;

        }

        function valsave1() {
            var vtxtNewSettDate = document.getElementById('<%=txtNewSettDate.ClientID %>');
            var vtxtNewSettDate0 = document.getElementById('<%=txtNewSettDate0.ClientID %>');

            if (vtxtNewSettDate.value == '') {
                alert("New ECS Settlement Date Cannot Be Blank");
                vtxtSalEcsDate.focus();
                return false;
            }
            if (vtxtNewSettDate0.value == '') {
                alert("ECS Batch Cannot Be Blank");
                vtxtNewSettDate0.focus();
                return false;
            }
            return true;

        }
    </script>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="ControlMas" method="post" runat="server">
         


			<TABLE class="tableleftbgcolor" id="hdTable" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<TR>
					<TD><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td align="center" height="100%" valign="top">

                        <asp:Panel ID="PnlValidation" runat="server">

                        <TABLE id="Table1" class="parabr" cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="2" width="50%"><asp:label id="lblFormTitle" runat="server" CssClass="formtitle" Width="100%">Settlement 
                                    Date Validation</asp:label></TD>
							</TR>
							<TR>
								<TD width="50%">
									&nbsp;</TD>
								<TD width="35%">
									&nbsp;</TD>
							</TR>
							<TR>
								<TD width="50%">
									<asp:Label id="lblECSSal" runat="server" CssClass="mandatory">Old ECS Salary
                                    Settlement Date(dd/mm/yyyy) : </asp:Label>
                                    <asp:Label ID="Label6" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
                                </TD>
								<TD width="35%">
									<asp:TextBox id="txtSalEcsDate" runat="server" CssClass="formlines" MaxLength="10" onblur="chkbadchar(this);"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtSalEcsDate_CalendarExtender" runat="server" 
                                        Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtSalEcsDate"></asp:CalendarExtender>
                                </TD>
							</TR>
							<TR>
								<TD width="50%">
									<asp:Label id="Label1" runat="server" CssClass="mandatory">ECS Batch : </asp:Label>
									<asp:Label ID="Label7" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
									</TD>
								<TD width="35%">
									<asp:TextBox id="txtbatch" runat="server" CssClass="formlines" MaxLength="11"
                                        onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width="50%">
									<asp:Label id="Label2" runat="server" CssClass="mandatory">Total Records : </asp:Label>
									<asp:Label ID="Label8" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
									</TD>
								<TD width="35%">
									<asp:TextBox id="txtTotalRecord" runat="server" CssClass="formlines" onkeypress="return checknosExperience();"
                                        onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD width="50%">
									<asp:Label id="Label3" runat="server" CssClass="mandatory">Total Amount : </asp:Label>
									<asp:Label ID="Label9" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
									</TD>
								<TD width="35%">
									<asp:TextBox id="txtTotalAmount" runat="server" CssClass="formlines" onkeypress="return checknosExperience();"
                                        onblur="chkbadchar(this);"></asp:TextBox></TD>
							</TR>
							<tr>
								<td colspan="2" width="50%">&nbsp;</td>
							</tr>
						    <tr>
                                <td colspan="2" width="50%" align="center">
                                    <asp:Button ID="btnValidate" runat="server" CssClass="formbuttons" 
                                        Text="Validate" OnClientClick="return valsave();"
                                        Width="110px" onclick="btnValidate_Click" />
                                    <asp:Label ID="lblMessage" runat="server" CssClass="validatemessage"></asp:Label>
                                    <asp:Label ID="lblMessage1" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
                            </tr>
						</TABLE>

                        </asp:Panel>
                        <asp:Panel ID="PnlUpdation" runat="server">

                        <TABLE id="Table2" class="parabr" cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD align="center" colspan="2" width="50%"><asp:label id="Label4" runat="server" CssClass="formtitle" Width="100%">Update 
                                    Settlement Date</asp:label></TD>
							</TR>
							<TR>
								<TD width="50%">
									&nbsp;</TD>
								<TD width="35%">
									&nbsp;</TD>
							</TR>
							<TR>
								<TD width="50%">
									<asp:Label id="Label5" runat="server" CssClass="mandatory">New ECS Salary 
                                    Settlement Date(dd/mm/yyyy) : </asp:Label>
                                    <asp:Label ID="Label10" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
                                </TD>
								<TD width="35%">
									<asp:TextBox id="txtNewSettDate" runat="server" CssClass="formlines" 
                                         onblur="chkbadchar(this);"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtNewSettDate_CalendarExtender" runat="server" 
                                        Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtNewSettDate"></asp:CalendarExtender>
                                </TD>
							</TR>
							<tr>
                                <td width="50%">
                                    <asp:Label ID="lblReason" runat="server" CssClass="mandatory" 
                                        Text="Enter Reason for Settlement Date Change : "></asp:Label>
                                    <asp:Label ID="Label11" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
                                </td>
                                <td width="35%">
                                    <asp:TextBox ID="txtNewSettDate0" runat="server" CssClass="formlines" 
                                        MaxLength="10" onblur="chkbadchar(this);" TextMode="MultiLine" Width="50%"></asp:TextBox>
                                </td>
                            </tr>
							<tr>
								<td colspan="2" width="50%">&nbsp;</td>
							</tr>
						    <tr>
                                <td colspan="2" width="50%" align="center">
                                    <asp:Button ID="btnUpdate" runat="server" CssClass="formbuttons" Text="Update" 
                                        Width="110px" OnClientClick="return valsave();" 
                                        onclick="btnUpdate_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                                        CssClass="formbuttons" Text="Cancel" Width="110px" 
                                        onclick="btnCancel_Click" />
                                    <asp:Label ID="lblMessage2" runat="server" CssClass="validatemessage"></asp:Label>
                                    <asp:Label ID="lblMessage3" runat="server" CssClass="validatemessage1"></asp:Label>
                                </td>
                            </tr>
						</TABLE>

                        </asp:Panel>

						
						<br>
						<br>
						
					</td>
				</tr>
				<tr>
					<td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
            

		</form>
	</body>
</HTML>
