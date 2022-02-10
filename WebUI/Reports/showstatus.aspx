<%@ Page language="c#" Codebehind="showstatus.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Reports.showstatus" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>Show Status</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE style="Z-INDEX: 102; POSITION: absolute; TOP: 8px; LEFT: 16px" id="Table1" border="1"
				cellSpacing="1" cellPadding="1" width="95%">
				<TR>
					<TD colSpan="4">
						<uc1:StripHeader style="Z-INDEX: 0" id="StripHeader1" runat="server"></uc1:StripHeader></TD>
				</TR>
				<TR>
					<TD colSpan="4">
						<asp:Label style="Z-INDEX: 0" id="lblTitle" runat="server" Font-Size="Medium" Font-Bold="True"
							Height="24px" Width="280px">Monthly Updation Report</asp:Label></TD>
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label1" runat="server" Width="136px" Height="31px" CssClass="mandatory">Enter Year and Month</asp:Label></TD>
					<TD>
						<asp:DropDownList id="drpdownmnth" runat="server">
							<asp:ListItem Value="1">Jan</asp:ListItem>
							<asp:ListItem Value="2">Feb</asp:ListItem>
							<asp:ListItem Value="3">Mar</asp:ListItem>
							<asp:ListItem Value="4">Apr</asp:ListItem>
							<asp:ListItem Value="5">May</asp:ListItem>
							<asp:ListItem Value="6">June</asp:ListItem>
							<asp:ListItem Value="7">July</asp:ListItem>
							<asp:ListItem Value="8">Aug</asp:ListItem>
							<asp:ListItem Value="9">Sep</asp:ListItem>
							<asp:ListItem Value="10">Oct</asp:ListItem>
							<asp:ListItem Value="11">Nov</asp:ListItem>
							<asp:ListItem Value="12">Dec</asp:ListItem>
						</asp:DropDownList></TD>
					<TD>
						<asp:DropDownList id="drpdownyr" runat="server">
							<asp:ListItem Value="2010">2010</asp:ListItem>
							<asp:ListItem Value="2011">2011</asp:ListItem>
							<asp:ListItem Value="2012">2012</asp:ListItem>
							<asp:ListItem Value="2013">2013</asp:ListItem>
							<asp:ListItem Value="2014">2014</asp:ListItem>
							<asp:ListItem Value="2015">2015</asp:ListItem>
							<asp:ListItem Value="2016">2016</asp:ListItem>
							<asp:ListItem Value="2017">2017</asp:ListItem>
						</asp:DropDownList></TD>
					<TD>
						<asp:Button id="Button1" runat="server" Text="Generate Report" onclick="Button1_Click"></asp:Button></TD>
				</TR>
				<TR>
					<TD style="Z-INDEX: 0"></TD>
					<TD></TD>
					<TD></TD>
					<TD></TD>
				</TR>
				<TR>
					<TD style="Z-INDEX: 0" colSpan="4">
						<asp:datagrid style="Z-INDEX: 0" id="dgItems1" runat="server" CssClass="tableleftbgcolor" AllowPaging="True"
							CellPadding="3" AutoGenerateColumns="False" BackColor="White" BorderWidth="1px" BorderStyle="None"
							BorderColor="#CCCCCC" width="404px" HorizontalAlign="Center" PageSize="20">
							<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
							<ItemStyle ForeColor="#000066"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699"></HeaderStyle>
							<Columns>
								<asp:TemplateColumn HeaderText="District">
									<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemTemplate>
										<asp:Label id="dist" Runat="server" Font-Size = 12 Text='<%# DataBinder.Eval(Container.DataItem,"StoCode") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Treasury">
									<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemTemplate>
										<asp:Label id="tr" Runat="server" Font-Size = 12 Text='<%# DataBinder.Eval(Container.DataItem,"Stoname") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Number of files uploaded">
									<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemTemplate>
										<asp:Label id="lastdt" Runat="server" Font-Size = 12 Text='<%# DataBinder.Eval(Container.DataItem,"datebatch") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Last uploaded Date">
									<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemTemplate>
										<asp:Label id="Label2" Runat="server" Font-Size = 12 Text='<%# DataBinder.Eval(Container.DataItem,"curdate") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
				<TR>
					<TD style="Z-INDEX: 0" colSpan="4">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
