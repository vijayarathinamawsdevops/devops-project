<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExportData.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.ExportData" %>

<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Export Data</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="../Styles/style1.css">
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
	</HEAD>
	<body leftMargin="0" rightMargin="0" topMargin="0">
		<form id="frmAGReportMenus" method="post" runat="server">
			<TABLE id="Table1" class="tableleftbgcolor" border="0" cellSpacing="0" cellPadding="0"
				width="100%" height="100%">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>
				<tr>
					<td style="PADDING-LEFT: 20px" class="rptHead" colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td width="7%">&nbsp;</td>
					<td height="100%" vAlign="top" align="center">
						<table border="0" cellSpacing="4" cellPadding="0" width="95%">
							<tr>
								<td class="rptSubHead" width="50%">Export Salary Data</td>
							</tr>
							<tr>
								<td align="left">
									<table border="0" cellSpacing="2" cellPadding="0" width="100%" class="menutree">
										
										<tr>
											<td>
												<asp:Label ID="Label1" runat="server" CssClass="mandatory" Text="Month"></asp:Label>
                                            </td>
											<TD style="HEIGHT: 17px">
                <asp:DropDownList ID="drpMonth" runat="server" CssClass="drptxt" 
                    Width="143px">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="01">JAN</asp:ListItem>
                    <asp:ListItem Value="02">FEB</asp:ListItem>
                    <asp:ListItem Value="03">MARCH</asp:ListItem>
                    <asp:ListItem Value="04">APRIL</asp:ListItem>
                    <asp:ListItem Value="05">MAY</asp:ListItem>
                    <asp:ListItem Value="06">JUNE</asp:ListItem>
                    <asp:ListItem Value="07">JULY</asp:ListItem>
                    <asp:ListItem Value="08">AUG</asp:ListItem>
                    <asp:ListItem Value="09">SEPT</asp:ListItem>
                    <asp:ListItem Value="10">OCT</asp:ListItem>
                    <asp:ListItem Value="11">NOV</asp:ListItem>
                    <asp:ListItem Value="12">DEC</asp:ListItem>
                </asp:DropDownList>
														
                                            </TD>
											<td style="HEIGHT: 17px">
                                                <asp:Label ID="Label2" runat="server" CssClass="mandatory" Text="Year"></asp:Label>
                                            </td>
											<TD style="HEIGHT: 17px">
                                              


     
                <asp:DropDownList ID="drpYear" runat="server" CssClass="drptxt" 
                    Width="120px">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>                    
                    <asp:ListItem Value="2012">2012</asp:ListItem>
                    <asp:ListItem Value="2013">2013</asp:ListItem>
                    <asp:ListItem Value="2014">2014</asp:ListItem>
                </asp:DropDownList>
                                             
                                            </TD>
										</tr>
										
										<tr>
											<td style="WIDTH: 440px; ">
												&nbsp;</td>
											<TD style="HEIGHT: 17px">
                                               	&nbsp;</TD>
											<td style="HEIGHT: 17px">
                                                &nbsp;</td>
											<TD style="HEIGHT: 17px">
                                                &nbsp;</TD>
										</tr>
										
										<tr>
											<td  align="center" colspan="4">
												<asp:Button ID="btnExport" runat="server" CssClass="formbuttons" 
                                                    onclick="btnExport_Click" Text="  Export  " />
                                            </td>
										</tr>
										
										<tr>
											<td  align="center" colspan="4">
												&nbsp;</td>
										</tr>
										
										<tr>
											<td  align="center" colspan="4">
												&nbsp;</td>
										</tr>
										
										<tr>
											<td  align="center" colspan="4">
												<asp:Panel ID="pnlDetails" runat="server" Visible="False">
                                                    <table style="width:100%;">
                                                        <tr>
                                                            <td align="right">
                                                                &nbsp;</td>
                                                            <td align="left" width="100px">
                                                                <asp:Label ID="Label3" runat="server" CssClass="mandatory" 
                                                                    Text="Total Records :"></asp:Label>
                                                            </td>
                                                            <td width="20px">
                                                                &nbsp;</td>
                                                            <td align="left">
                                                                <asp:Label ID="lblTotalRecords" runat="server" CssClass="mandatory"></asp:Label>
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                &nbsp;</td>
                                                            <td align="left" width="100px">
                                                                <asp:Label ID="Label4" runat="server" CssClass="mandatory" 
                                                                    Text="Total Ecs Net        :"></asp:Label>
                                                            </td>
                                                            <td width="20px">
                                                                &nbsp;</td>
                                                            <td align="left">
                                                                <asp:Label ID="lblTotalEcsNet" runat="server" CssClass="mandatory"></asp:Label>
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                &nbsp;</td>
                                                            <td align="left" width="100px">
                                                                <asp:Label ID="Label5" runat="server" CssClass="mandatory" 
                                                                    Text="Total Gross :   "></asp:Label>
                                                            </td>
                                                            <td width="20px">
                                                                &nbsp;</td>
                                                            <td align="left">
                                                                <asp:Label ID="lblTotalGross" runat="server" CssClass="mandatory"></asp:Label>
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
										</tr>
										
										<tr>
											<td  align="left" colspan="4">
												&nbsp;</td>
										</tr>
										
										<tr>
											<td  align="left" colspan="4">
												<asp:Label ID="lblError" runat="server" ForeColor="#CC3300"></asp:Label>
                                                <asp:HyperLink ID="lnkSucess" runat="server" ForeColor="#00CC00" 
                                                    Target="_blank" Visible="False">[lnkSucess]</asp:HyperLink>
                                            </td>
										</tr>
									</table>
									</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
