<%@ Register TagPrefix="uc1" TagName="CheckList" Src="../UserControls/CheckList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Page language="c#" Codebehind="Comp_Misc_Adv.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.audit.Comp_Misc_Adv" %>
<%@ Register TagPrefix="uc1" TagName="TopHeader" Src="../UserControls/TopHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BillInfo" Src="../UserControls/BillInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="GPFNumber" Src="../UserControls/GPFNumber.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>eKaruvoolam - Computer Misc. Advance</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
        <script language="JavaScript" src="../Scripts/Sqlinjection.js"  type="text/javascript"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
	    <style type="text/css">


            #I1
            {
                height: 275px;
            }
        </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
     
		<form id="Comp_Misc_Adv" method="post" runat="server">
         
			<TABLE class="tableleftbgcolor" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" align="center">
				<TR>
					<TD class="tableleftbgcolor">
						<uc1:topheader id="TopHeader1" runat="server"></uc1:topheader></TD>
				</TR>
				<TR>
					<TD vAlign="top" align="center" height="100%">
                    
						<TABLE cellSpacing="2" cellPadding="1" width="98%" border="0">
							<TR>
								<TD colSpan="2" style="text-align:left">
									<uc1:billinfo id="BillInfo1" runat="server"></uc1:billinfo></TD>
							</TR>
							<tr>
								<td colspan="2" style="text-align:left">
									<asp:Panel ID="pnlControls" Runat="server">
										<TABLE cellSpacing="2" cellPadding="1" width="100%" border="0">
											<TR>
												<TD colSpan="4">
													<uc1:gpfnumber id="GPFNumber1" runat="server"></uc1:gpfnumber>
													<asp:TextBox id="todaydate" runat="server" Visible="False" 
                                                        onblur="chkbadchar(this);" CssClass="formlines" Width="155px"></asp:TextBox></TD>
											</TR>
											<TR>
												<TD width="15%">
													<asp:Label ID="lblFormSanctionOrder0" runat="server" CssClass="mandatory">Name</asp:Label>
                                                </TD>
												<TD width="35%">
													<asp:TextBox ID="txtName" runat="server" CssClass="formlines" MaxLength="50" 
                                                        onblur="chkbadchar(this);" onkeypress="numeralsOnly(this)" Width="155px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                        ControlToValidate="txtName" CssClass="validatemessage" 
                                        ErrorMessage="Data Required"></asp:RequiredFieldValidator>
                                                </TD>
												<TD width="15%">
													<asp:Label ID="lblFormSanctionOrder1" runat="server" CssClass="mandatory">Designation</asp:Label>
                                                </TD>
												<TD width="35%">
													<asp:DropDownList ID="drpDesignation" runat="server" CssClass="formlines" 
                                                        Width="160px">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="drpDesignation" CssClass="validatemessage" 
                                        ErrorMessage="Data Required" InitialValue="-1"></asp:RequiredFieldValidator>
                                                </TD>
											</TR>
											<tr>
                                                <td width="15%">
                                                    <asp:Label ID="lblFormSanctionOrder" runat="server" CssClass="mandatory"> 
                                                    Sanction Order</asp:Label>
                                                </td>
                                                <td width="35%">
                                                    <asp:TextBox ID="txtSanctionOrder" runat="server" CssClass="formlines" 
                                                        MaxLength="50" onblur="chkbadchar(this);" onkeypress="numeralsOnly(this)" 
                                                        Width="155px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvSanctionOrder" runat="server" 
                                                        ControlToValidate="txtSanctionOrder" CssClass="validatemessage" 
                                                        Display="Dynamic" ErrorMessage="Data required"></asp:RequiredFieldValidator>
                                                </td>
                                                <td width="15%">
                                                    <asp:Label ID="lblDate" runat="server" CssClass="mandatory">Sanction order Date</asp:Label>
                                                </td>
                                                <td width="35%">
                                                    <asp:TextBox ID="txtSanctionDate" runat="server" CssClass="formlines" 
                                                        MaxLength="10" onblur="chkbadchar(this);" Width="155px"></asp:TextBox>
                                                    <a href="javascript:show_calendar('Comp_Misc_Adv.txtSanctionDate');" 
                                                        onmouseout="window.status='';return true;" 
                                                        onmouseover="window.status='Date Picker';return true;">
                                                        <img border="0" src="../Images/show-calendar.gif">
                                                        </img>
                                                    </a>
                                                    <asp:RequiredFieldValidator ID="rfvSanctionDate" runat="server" 
                                                        ControlToValidate="txtSanctionDate" CssClass="validatemessage" 
                                                        Display="Dynamic" ErrorMessage="Data required"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" runat="server" 
                                                        ControlToValidate="txtSanctionDate" CssClass="validatemessage" 
                                                        ErrorMessage="Invalid Date" 
                                                        ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
											<TR>
												<TD width="15%">
													<asp:label id="lblBasic" runat="server" CssClass="mandatory">Basic Pay</asp:label></TD>
												<TD width="35%">
													<asp:textbox id="txtBasic" runat="server" CssClass="formlines" MaxLength="12" 
                                                        onblur="chkbadchar(this);" Width="155px"></asp:textbox>
													<asp:RequiredFieldValidator id="rfvBasic" runat="server" CssClass="validatemessage" ControlToValidate="txtBasic"
														Display="Dynamic" ErrorMessage="Data required"></asp:RequiredFieldValidator>
													<asp:RangeValidator id="rngBasic" runat="server" CssClass="validatemessage" ControlToValidate="txtBasic"
														ErrorMessage="Invalid Data" MaximumValue="999999" MinimumValue="1" Type="Integer"></asp:RangeValidator></TD>
												<TD>
													<asp:Label id="lblnoinstall" Runat="server" CssClass="mandatory">No Of Installments</asp:Label></TD>
												<TD>
													<asp:TextBox id="txtnoinstall" Runat="server" CssClass="formlines" 
                                                        onblur="chkbadchar(this);" Width="155px"></asp:TextBox>&nbsp;
													<asp:RequiredFieldValidator id="reqinstallment" runat="server" CssClass="validatemessage" ControlToValidate="txtnoinstall"
														Display="Dynamic" ErrorMessage="Data Required"></asp:RequiredFieldValidator></TD>
											</TR>
											<TR>
												<TD colSpan="2">
													<asp:label id="lblMessage" runat="server" CssClass="validatemessage"></asp:label></TD>
												<TD colSpan="2"></TD>
											</TR>
										</TABLE>
									</asp:Panel>
								</td>
							</tr>
							<TR>
								<TD align="left">
									<asp:Button id="btnSave" runat="server" CssClass="formbuttons" Width="90px" Text="Save" onclick="btnSave_Click"></asp:Button>
									&nbsp;<asp:Button 
                                            ID="btnView" runat="server" CausesValidation="False" CssClass="formbuttons" 
                                            onclick="btnView_Click" TabIndex="20" Text="View Report" Width="90px" />
									<asp:label id="lblMessage1" runat="server" CssClass="validatemessage1"></asp:label></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD colSpan="2">
                                        <iframe ID="I1" runat="server" name="I1" src="" target="_blank" 
                                        width="100%">
                                        </iframe>
                                    </TD>
							</TR>
							<TR>
								<TD colSpan="2" style="text-align:left">
									<uc1:CheckList id="CheckList1" runat="server"></uc1:CheckList></TD>
							</TR>
						</TABLE>  
					</TD>
				</TR>
				<TR>
					<TD>
						<uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></TD>
				</TR>
				<TR>
					<TD>
						<uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
