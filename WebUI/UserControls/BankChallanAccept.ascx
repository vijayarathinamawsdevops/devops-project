<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BankChallanAccept.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.BankChallanAccept" %>
<%@ Register src="ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc1" %>


<style type="text/css">
 
		table.parabr {text-align:left;} 
		.parabr
{
 border: #000066 1px solid;
    width: 84%;
}
.lbltext
{
	font-family:tahoma;
	font-weight:normal;
	font-weight:bold;
	font-size:13px;
	color:#000000;
	text-align:right;
}
.lbldisplay
{
	font-family:tahoma;
	font-weight:normal;	
	font-size:15px;
	color:#000000;
	text-align:left;
}
.formbuttons
{
	border: 1px solid #6685C1;
	background-color: #C7D4EB;
	font-family: tahoma;
	text-align:center;
	font-size: 11px;
	color: #000000;
	font-weight: normal;
	text-decoration:none;
	cursor: hand;
    margin-left: 0px;
}



.formlines
{
	border: 1px solid #306302;
	border: solid 1px #4682B4;
	font-family: Verdana;
	font-size: 10px;
	font-weight: normal;
	color: #2d371f;
    margin-bottom: 2px;
}


.validatemessage {

	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: red;
	font-weight : bold;
	text-decoration: none;
}
</style>
						<asp:panel id="pnlBankChallan" Runat="server" visible="false">
							<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="98%" border="0">
								<TR>
									<TD class="lbltext" width="20%">Challan Number :</TD>
									<TD>
										<asp:Label id="clblChallanNo" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
									<TD class="lbltext">D.O.Code :</TD>
									<TD>
										<asp:Label id="clblDOCode" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD class="lbltext">Remitter Name :</TD>
									<TD>
										<asp:Label id="clblRemittername" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
									<TD class="lbltext">DP Code :</TD>
									<TD>
										<asp:Label id="clbldpcode" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD class="lbltext">Amount (Rs.) :</TD>
									<TD>
										<asp:Label id="clblAmount" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
									<TD class="lbltext">Entry Date :</TD>
									<TD>
										<asp:Label id="clbldate" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD class="lbltext">Purpose :</TD>
									<TD colSpan="2">
										<asp:Label id="clblRemarks" CssClass="lbldisplay" Runat="server"></asp:Label></TD>
								</TR>
								<TR>
									<TD class="lbltext">Payment Mode :</TD>
									<TD colSpan="3">
										<asp:RadioButtonList id="radPaymentMode" CssClass="lbldisplay" Runat="server" RepeatDirection="Horizontal">
											<asp:ListItem Value="0" Selected="True">Cash</asp:ListItem>
											<asp:ListItem Value="1">DD</asp:ListItem>
											<asp:ListItem Value="2">Cheque</asp:ListItem>
										</asp:RadioButtonList></TD>
								</TR>
								<TR>
									<TD class="lbltext">
										Input/Realization Date :</TD>
								    <td colspan="3">
                                        <asp:TextBox ID="txtTransDate" runat="server" CssClass="formlines" 
                                            MaxLength="10"></asp:TextBox>
                                        
                                        (dd/mm/yyyy)<asp:RequiredFieldValidator ID="rfvTranDate" runat="server" 
                                            ControlToValidate="txtTransDate" CssClass="validatemessage" 
                                            ErrorMessage="Date Required"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revTranDate" runat="server" 
                                            ControlToValidate="txtTransDate" CssClass="validatemessage" 
                                            ErrorMessage="Invalid Date" 
                                            ValidationExpression="^(((0[1-9]|[12][0-9]|3[01])([-./])(0[13578]|10|12)([-./])(\d{4}))|(([0][1-9]|[12][0-9]|30)([-./])(0[469]|11)([-./])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([-./])(02)([-./])(\d{4}))|((29)(\.|-|\/)(02)([-./])([02468][048]00))|((29)([-./])(02)([-./])([13579][26]00))|((29)([-./])(02)([-./])([0-9][0-9][0][48]))|((29)([-./])(02)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02)([-./])([0-9][0-9][13579][26])))$"></asp:RegularExpressionValidator>
                                    </td>
								</TR>
								<TR>
									<TD colSpan="4">
										<hr>
                                        </hr>
									</TD>
								</TR>
							    <tr>
                                    <td align="center" colspan="4">
                                        <table align="center" border="0" cellpadding="2" cellspacing="2" width="50%">
                                            <tr>
                                                <td>
                                                    <asp:Button ID="btnAccept" runat="server" CssClass="formbuttons" tabIndex="7" 
                                                        Text="Accept" Width="110px" onclick="btnAccept_Click" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="btnClear" runat="server" CausesValidation="False" 
                                                        CssClass="formbuttons" tabIndex="7" Text="Clear" Width="110px" 
                                                        onclick="btnClear_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <uc1:ErrorLabel ID="ErrorLabel1" runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
							</TABLE>
						</asp:panel>   
   
					
