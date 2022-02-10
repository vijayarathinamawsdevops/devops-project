<%@ Page language="c#" Codebehind="budgetupload.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.WebForm1" smartNavigation="True"%>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Budget - Upload</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
         <script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
	    <style type="text/css">
            .style2
            {
                width: 1238px;
            }
            .style3
            {
                width: 106px;
            }
        </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" 
                style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px; width: 1196px;" cellSpacing="1"
				cellPadding="1" border="1"  class="tableleftbgcolor">
                <tr>
                <td class="style2" colSpan="3"><uc1:stripheader id="Stripheader2" runat="server"></uc1:stripheader></td>
                </tr>
				<TR>
					<TD align="center" colSpan="3"><asp:label id="lblFormTitle" runat="server" Width="100%" CssClass="formtitle">Budget Upload</asp:label></TD>
				</TR>
				<TR>
					<TD class="style2">
						<asp:label id="lblUpload" runat="server" CssClass="mandatory" Width="126px">Select File for Upload</asp:label></TD>
					<TD><INPUT id="File1" type="file" name="File1" runat="server"></TD>
					<TD class="style3">
						<asp:button id="btnUploadFile" runat="server" Text="Upload" onclick="btnUploadFile_Click"></asp:button></TD>
				</TR>
				<TR>
					<TD colSpan="3">
						<asp:label id="lblMessage" runat="server" Font-Size="Medium" CssClass="validatemessage"></asp:label></TD>
					 
				</TR>
                <tr>
					<td colSpan="3"><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<TR>
					<TD colSpan="3"><uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
