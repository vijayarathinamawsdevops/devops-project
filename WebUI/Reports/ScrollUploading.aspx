<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScrollUploading.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.ScrollUploading" %>

<%@ Register src="../UserControls/BankStripHeader.ascx" tagname="BankStripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/BillInfo.ascx" tagname="billinfo" tagprefix="uc1" %>
<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc2" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc3" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ScrollUploading</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		
        <script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
        <script language="javascript">

            function ShowScrollPopup(srcScreen, KeyField, OperMode, sTitle, Width, Height) {
                alert('hi');
            }
            function valAdd() 
            {

                var txtFromDate = document.getElementById('txtFromDate');
                if (txtFromDate.value == '') 
                {
                    alert("From Date Cannot Be Blank");
                    txtFromDate.focus();
                    return false;
                }
                var txtToDate = document.getElementById('txtToDate');
                if (txtToDate.value == '') {
                    alert("To Date Cannot Be Blank");
                    txtToDate.focus();
                    return false;
                }
            }
		</script>
    <style type="text/css">
        #iframe1
        {
            width: 1414px;
            height: 369px;
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
    <TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<tr>
					<td>
                        <uc2:StripHeader ID="StripHeader1" runat="server" />
                        </td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="100%">
						<table class="brdr" width="100%">
                            <tr>
                                <td align="center" class="formtitle" colspan="5">
                                    Scroll Uploading</td>
                            </tr>
                            <tr>
                                <td align="left" width="20%">
                                    <asp:label id="lblFromDate" runat="server" 
                                        CssClass="mandatory">From Date : </asp:label>
                                </td>
                                <td align="left" width="30%">
                                    <asp:textbox id="txtFromDate" runat="server" 
                                        CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);"
										Width="125px"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('txtFromDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT>									<%--<asp:requiredfieldvalidator id="rfvTranDate" runat="server" CssClass="validatemessage" ControlToValidate="txtFromDate"
										ErrorMessage="Date Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="revTranDate" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtFromDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator><FONT 
            face="Courier New" color=#6600ff><STRONG></STRONG></FONT>--%>
                                </td>
                                <td align="left" width="20%">
                                    <asp:label id="lblToDate" runat="server" 
                                        CssClass="mandatory">To Date : </asp:label>
                                </td>
                                <td align="left" width="30%" colspan="2">
                                    <asp:textbox id="txtToDate" runat="server" 
                                        CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);"
										Width="125px"></asp:textbox><A onmouseover="window.status='Date Picker';return true;" onmouseout="window.status='';return true;"

										href="javascript:show_calendar('txtToDate')"><IMG src="../Images/show-calendar.gif" border="0" align="absMiddle"></A><FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT>									<%--<asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" CssClass="validatemessage" ControlToValidate="txtToDate"
										ErrorMessage="Date Required"></asp:requiredfieldvalidator>
									<asp:regularexpressionvalidator id="Regularexpressionvalidator1" runat="server" CssClass="validatemessage" ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"
										ControlToValidate="txtToDate" ErrorMessage="Invalid Date"></asp:regularexpressionvalidator><FONT 
            face="Courier New" color=#6600ff><STRONG></STRONG></FONT>--%>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:label id="lblUploadfile" runat="server" 
                                        CssClass="mandatory">Upload File : </asp:label>
                                </td>
                                <td align="left">
                                    <asp:FileUpload ID="File1" runat="server" />
									</td>
                                <td>
                                    <asp:label id="lblBank" runat="server" 
                                        CssClass="mandatory">Bank Name : </asp:label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formlines" 
                                        Width="130px">
                                    </asp:DropDownList>
                                </td>
                                <td align="left">
                                    <asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" Width="100px" onclick="btnSave_Click"></asp:button><asp:button id="btnAvailability" runat="server" 
                                        CssClass="formbuttons" Text="Check Availability" Width="100px" 
                                        onclick="btnAvailability_Click" OnClientClick="return valAdd();"></asp:button>
                                </td>
                            </tr>
                        </table>
					    <br />
                       
					</td>
				</tr>
				</TABLE>
    <iframe id="iframe1" runat="server" src=""></iframe>
    <br />
    <uc3:ErrorLabel ID="ErrorLabel1" runat="server" />
    <uc4:Footer ID="Footer1" runat="server" />
    <br />
    </form>
</body>
</html>
