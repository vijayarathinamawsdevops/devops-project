<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uploadtxt.aspx.cs" Inherits="eKaruvoolam.WebUI.Reports.Uploadtxt" %>

<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Text File</title>
    <meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" content="C#" charset="utf-8">
		<LINK rel="stylesheet" type="text/css" href="../Styles/style1.css">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
    <script language="JavaScript" src="../Scripts/jquery-1.3.2-vsdoc2.js" type="text/javascript"></script>
    <script language="JavaScript" src="../Scripts/jquery-1.3.2.js" type="text/javascript"></script>
    <script language="JavaScript" src="../Scripts/jquery.MultiFile.js" type="text/javascript"></script>
    
    
    <style type="text/css">
        .style2
        {
            width: 335px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
                   
    <div>
    <table align="center" width="100%">
				<TBODY>
					<tr>
						<td height="15%" ><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></td>
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
										
										<td align="left" class="lblb1" width="8%" align="center"><asp:label id="lbldist1" runat="server" Font-Name="tahoma" Font-Bold="True" Font-Size="10"></asp:label></td>
										<td width="5%" align="left"><asp:label id="Label1" runat="server" Font-Name="tahoma" Font-Bold="True" Font-Size="10">Treasury :</asp:label></td>
										<td class="lblb1" width="10%" align="left"><asp:label id="lbltreas" runat="server" Font-Name="tahoma" Font-Bold="True" Font-Size="10"></asp:label></td>
						</td>
					</tr>
				</TBODY>
			</table>
			 <table>
			<tr>
            <td align="left" ><label id="lblMonth" runat="server" class="mandatory">Month:</label></td>
            <td><asp:DropDownList ID="DDLMonth" runat="server" CssClass="formlines">
             
                        <asp:ListItem Value="1">January</asp:ListItem>
                        <asp:ListItem Value="2">Feb</asp:ListItem>
                        <asp:ListItem Value="3">March</asp:ListItem>
                        <asp:ListItem Value="4">April</asp:ListItem>
                        <asp:ListItem Value="5">May</asp:ListItem>
                        <asp:ListItem Value="6">June</asp:ListItem>
                        <asp:ListItem Value="7">July</asp:ListItem>
                        <asp:ListItem Value="8">August</asp:ListItem>
                        <asp:ListItem Value="9">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">Novamber</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
            </asp:DropDownList></td>
            <td><label id="lblyear" runat="server" class="mandatory">Year:</label></td>
            <td><asp:DropDownList ID="DDLYear" runat="server" CssClass="formlines">
             
            </asp:DropDownList></td>
            </tr>
            <tr><td colspan="4"></td></tr>
            <tr>
				<td colspan="4"   align="center"> 
                 
					<asp:FileUpload ID="fileup" runat="server"  class="multi"/>
					<asp:label id="lblmsg" runat="server"></asp:label> 
                    <br />
                    (You can upload more files at a time) 
					
				</td>
			</tr>
            <tr><td colspan="4"></td></tr>
			<tr>
				<td height="10%" vAlign="middle" align="center" class="style2">&nbsp;
                <asp:Button ID="btnupload" runat="server" Text="Upload All" CssClass="formbuttons" 
                        onclick="btnupload_Click" />
                
			</tr>
			<tr>
				<td height="5%" align="center" class="style2">Status Message:
					<asp:label style="Z-INDEX: 0" id="lblMessage" runat="server" Font-Bold="True" ForeColor="#00C000"
						Font-Names="Verdana"></asp:label></td>
			</tr>
            <tr><td></td></tr> <td></td><tr><td></td></tr>
            <tr><td align="center">
            <asp:GridView ID="Gvinfo" runat="server" AutoGenerateColumns="False" 
                    AllowPaging="True" onpageindexchanging="Gvinfo_PageIndexChanging" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />


                    <Columns>
                    <asp:TemplateField HeaderText="TOCode">
                    <ItemTemplate>
                    <asp:Label ID="lblUser" runat="server" Text='<%#Eval("Tocode")%>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date Batch">
                    <ItemTemplate>
                    <asp:Label ID="lblfile" runat="server" Text='<%#Eval("Datebatch")%>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Upload Time">
                    <ItemTemplate>
                    <asp:Label ID="lbltime" runat="server" Text='<%#Eval("curdate")%>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
  
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td></tr>
			<tr>
				<td class="style2">
					<div id="message" runat="server"></div>
				</td>
			</tr>
			<tr>
				<td class="style2">
					<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
			</tr>
			 
    </div>
    </form>
</body>
</html>
