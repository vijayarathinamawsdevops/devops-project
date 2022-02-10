<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RBIScrollUpload.aspx.cs" Inherits="eKaruvoolam.WebUI.ScrollUpload.RBIScrollUpload" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 16%;
        }
        #iframe1
        {
            height: 348px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <TABLE id="Table1"
				width="100%" border="0">
				<tr>
					<td>
                        
                        <uc1:StripHeader ID="StripHeader1" runat="server" />
                        
                        </td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="100%" width="80%">
						<table class="brdr" width="80%">
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
										Width="125px"></asp:textbox><IMG src="../Images/show-calendar.gif" 
                                        border="0" align="absMiddle" id="imgFromDate"></A><FONT color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT> <asp:CalendarExtender ID="CalendarExtender2" runat="server" 
                                        PopupButtonID="imgFromDate" TargetControlID="txtFromDate" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </td>
                                <td align="left" class="style2">
                                    <asp:label id="lblToDate" runat="server" 
                                        CssClass="mandatory">To Date : </asp:label>
                                </td>
                                <td align="left" width="30%" colspan="2">
                                    <asp:textbox id="txtToDate" runat="server" 
                                        CssClass="formlines" AutoPostBack="True" onblur="chkbadchar(this);"
										Width="125px"></asp:textbox><asp:CalendarExtender ID="CalendarExtender1" 
                                        runat="server" PopupButtonID="imgToDate" TargetControlID="txtToDate" 
                                        Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                    <IMG src="../Images/show-calendar.gif" border="0" align="absMiddle" 
                                        id="imgToDate"></A><FONT 
            color=#3300ff><STRONG>(<FONT 
            size=2>dd/mm/yyyy)</FONT></STRONG></FONT>									
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
                                <td class="style2">
                                    <asp:label id="lblBank" runat="server" 
                                        CssClass="mandatory">Bank Name : </asp:label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formlines" 
                                        Width="130px">
                                    </asp:DropDownList>
                                </td>
                                <td align="left">
                                    <asp:button id="btnSave" runat="server" CssClass="formbuttons" Text="Save" 
                                        Width="80px" onclick="btnSave_Click"></asp:button>
                                    <asp:button id="btnAvailability" runat="server" 
                                        CssClass="formbuttons" Text="Check Availability" Width="90px" 
                                        onclick="btnAvailability_Click" OnClientClick="return valAdd();"></asp:button>
                                </td>
                            </tr>
                        </table>
					    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="350px" 
                            Width="1022px">
                        </rsweb:ReportViewer>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
					</td>
                    
				</tr>
				</TABLE>
    </form>
</body>
</html>
