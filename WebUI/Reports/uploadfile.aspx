<%@ Page language="c#" Codebehind="uploadfile.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Admin.uploadfile.uploadfile" smartNavigation="True"%>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Upload files to CTA</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" content="C#" charset="utf-8">
		<LINK rel="stylesheet" type="text/css" href="../Styles/style1.css">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body leftMargin="0" rightMargin="0" topMargin="0">
		<form id="UploadEcs" encType="multipart/form-data" method="post" runat="server">
			<table align="center">
				<TBODY>
					<tr>
						<td height="15%"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></td>
					</tr>
					<tr>
						<td class="header1" height="10" align="center"><STRONG><FONT color="#000099">Upload&nbsp;Accounts 
									Data to CTA</FONT></STRONG></td>
					</tr>
					<tr>
						<td class="header1" height="5" align="center"><STRONG><FONT color="#000099">Select Files</FONT></STRONG></td>
					</tr>
					<tr vAlign="top">
						<td align="center"><br>
							<table class="brdr" border="0" cellSpacing="2" cellPadding="0" width="100%">
								<TBODY>
									<tr>
										<td width="10%" align="right"><asp:label id="lblDistrict" runat="server" Font-Name="tahoma" Font-Bold="True" Font-Size="10">District :</asp:label></td>
										<td width="2%"></td>
										<td class="lblb1" width="8%" align="center"><asp:label id="lbldist1" runat="server" Font-Name="tahoma" Font-Bold="True" Font-Size="10"></asp:label></td>
										<td width="5%" align="left"><asp:label id="Label1" runat="server" Font-Name="tahoma" Font-Bold="True" Font-Size="10">Treasury :</asp:label></td>
										<td class="lblb1" width="10%" align="left"><asp:label id="lbltreas" runat="server" Font-Name="tahoma" Font-Bold="True" Font-Size="10"></asp:label></td>
						</td>
					</tr>
				</TBODY>
			</table>
			</TD></TR>
			<tr>
				<td style="HEIGHT: 91px" height="91" vAlign="middle" align="center"><br>
					<input style="WIDTH: 602px; HEIGHT: 22px" id="file" size="81" type="file" runat="server"><br>
					<asp:label id="lblmsg" runat="server" Width="307px"></asp:label><br>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="10%" vAlign="middle" align="center"><INPUT style="WIDTH: 81px; HEIGHT: 24px" class="but1" value="Upload" type="submit">
					<asp:button id="btnclear" runat="server" Width="80px" CssClass="but1" Text="Clear" onclick="btnclear_Click"></asp:button></td>
			</tr>
			<tr>
				<td height="5%" align="center">Status Message:
					<asp:label style="Z-INDEX: 0" id="lblMessage" runat="server" Font-Bold="True" ForeColor="#00C000"
						Font-Names="Verdana"></asp:label></td>
			</tr>
			<tr>
				<td>
					<div id="message" runat="server"></div>
				</td>
			</tr>
			<tr>
				<td>
					<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
			</tr>
			</TBODY></TABLE></form>
	</body>
</HTML>
