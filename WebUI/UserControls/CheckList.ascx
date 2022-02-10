<%@ Control Language="c#" AutoEventWireup="True" Codebehind="CheckList.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.CheckList" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="javascript">
var frm = document.forms[0]
	function HighlightRow(chkB)	{
	alert('entry...')
		var oItem = chkB.children;
		xState=oItem.item(0).checked;	
	if(xState)
		{chkB.parentElement.parentElement.style.backgroundColor='lightcoral';  // grdEmployees.SelectedItemStyle.BackColor
		 chkB.parentElement.parentElement.style.color='white'; // grdEmployees.SelectedItemStyle.ForeColor
		}else 
		{chkB.parentElement.parentElement.style.backgroundColor='white'; //grdEmployees.ItemStyle.BackColor
		 chkB.parentElement.parentElement.style.color='black'; //grdEmployees.ItemStyle.ForeColor
		}
	}
// Function To Select All CheckBox
function CheckAllDataGridCheckBoxes(aspCheckBoxID, checkVal)
{
  re  = new RegExp(':' + aspCheckBoxID + '$')
  re1 = new RegExp(':' + checkVal + '$')
  var slm;
  for(j=0;j<document.forms[0].elements.length;j++)
  {
    slm = document.forms[0].elements[j];
    if(slm.type == 'checkbox')
    {
      if(re1.test(slm.name))
      {
        for(i=0;i<document.forms[0].elements.length;i++)
        {
          elm = document.forms[0].elements[i]
          if(elm.type == 'checkbox')
          {
            if (re.test(elm.name))
            {
               elm.checked = slm.checked;
            }
          }
         }
         break;
        }
       }
      }     
}	
	//*********************************
function select_deselectAll (chkVal, idVal) 
{ 
var frm = document.forms[0];

// Loop through all elements
for (i=0; i<frm.length; i++) 
{
// Look for our Header Template's Checkbox
if (idVal.indexOf ('CheckAll') != -1) {
// Check if main checkbox is checked, then select or deselect datagrid checkboxes 
	if(chkVal == true) {		  
		  
		  frm.elements[i].checked = true;		  
		} else {
			frm.elements[i].checked = false;
			}
	// Work here with the Item Template's multiple checkboxes - DeleteThis
	} else if (idVal.indexOf ('chkSelection') != -1) {
	// Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
		if(frm.elements[i].checked == false) {
		frm.elements[1].checked = false; //Uncheck main select all checkbox
	}
	}
}
}
	
</script>
<TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="1" width="100%"
	border="0">
	<TR>
		<TD colSpan="2">
        <asp:datagrid id="dgCheckList" PageSize="15" CssClass="tableleftbgcolor" Width="100%" CellPadding="3"
				BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CCCCCC" runat="server" AutoGenerateColumns="False"
				ShowFooter="False">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#006699" Font-Names="verdana" Font-Size="11px"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:TemplateColumn>
						<HeaderTemplate>
							Select if OK
						</HeaderTemplate>
						<ItemTemplate>
							<SPAN>
								<asp:CheckBox id="chkonlineSelection" Runat="server" Checked="True"></asp:CheckBox>
								<asp:CheckBox id="chkSelection" runat="server" Checked="true"></asp:CheckBox>
								<asp:CheckBox id="chkSelection1" runat="server" Checked="true" Visible="true"></asp:CheckBox>
								<asp:CheckBox id="chkSelection2" runat="server" Checked="true" Visible="true"></asp:CheckBox>
								<asp:Label id=PK Visible="False" Text='<%# DataBinder.Eval(Container.DataItem,"PK") %>' Runat="server">
								</asp:Label>
							</SPAN>
						</ItemTemplate>
						<FooterTemplate>
							<asp:CheckBox ID="CheckAll" runat="server" Visible="False" />
						</FooterTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn>
						<HeaderTemplate>
							Checklist
						</HeaderTemplate>
						<ItemTemplate>
							<asp:Label id=lblDescription Text='<%# DataBinder.Eval(Container.DataItem,"Descr") %>' Runat="server">
							</asp:Label>
						</ItemTemplate>
					</asp:TemplateColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:datagrid></TD>
	</TR>
	<TR>
		<TD colSpan="2"><asp:button id="btnadd" CssClass="formbuttons" Width="100px" runat="server" CausesValidation="False"
				Visible="False" Text="Add NewObjection" onclick="btnadd_Click"></asp:button><asp:button id="btnContinue" CssClass="formbuttons" Width="100px" runat="server" CausesValidation="False"
				Visible="False" Text="Continue..." onclick="btnContinue_Click"></asp:button></TD>
	</TR>
	<tr>
		<td colSpan="2"><asp:panel id="Panel2" Visible="False" Runat="server">
				<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="100%" align="center" border="0">
					<TR>
						<TD>
							<asp:label id="Label1" runat="server" CssClass="mandatory">Add NewRule Remarks</asp:label></TD>
					</TR>
					<TR>
						<TD>
							<asp:textbox id="txtnewrule" runat="server" CssClass="formlines" Visible="true" TextMode="MultiLine"
								Columns="70" Rows="3"></asp:textbox></TD>
					</TR>
					<TR>
						<TD>
							<asp:button id="btnsave" runat="server" Width="110px" CssClass="formbuttons" Text="Save" onclick="btnsave_Click"></asp:button>
							<asp:button id="btncancel" runat="server" Width="110px" CssClass="formbuttons" Text="Cancel" onclick="btncancel_Click"></asp:button></TD>
					</TR>
				</TABLE>
			</asp:panel></td>
	</tr>
	<TR>
		<TD colSpan="2">
			<P><asp:label id="lblSelections" runat="server"></asp:label></P>
		</TD>
	</TR>
	<TR>
		<TD colSpan="2"><asp:button id="btnConfirm" CssClass="formbuttons" Width="100px" runat="server" CausesValidation="False"
				Visible="False" Text="Confirm" onclick="btnConfirm_Click"></asp:button><asp:label id="lblMessage" runat="server"></asp:label></TD>
	</TR>
	<tr>
		<td colSpan="2"><asp:panel id="pnlAuditOverrule" Visible="False" Runat="server">
				<TABLE class="parabr" cellSpacing="2" cellPadding="2" width="100%" align="center" border="0">
					<TR>
						<TD>
							<asp:label id="lblAuditorremark" runat="server" CssClass="mandatory">Auditor - Over Rule Remarks</asp:label></TD>
					</TR>
					<TR>
						<TD>
							<asp:textbox id="txtOverruleRemark" runat="server" CssClass="formlines" 
                                TextMode="MultiLine" Columns="70"
								Rows="3"></asp:textbox>
							<asp:RequiredFieldValidator id="reqremark" Runat="server" ControlToValidate="txtOverruleRemark" ErrorMessage="Data Required">*</asp:RequiredFieldValidator></TD>
					</TR>
					<TR>
						<TD>
							<asp:button id="btnSaveRemark" runat="server" Width="110px" CssClass="formbuttons" Text="Save Remarks" onclick="btnSaveRemark_Click"></asp:button></TD>
					</TR>
				</TABLE>
			</asp:panel></td>
	</tr>
</TABLE>
