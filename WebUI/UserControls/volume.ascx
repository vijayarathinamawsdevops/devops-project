<%@ Control language="c#" Codebehind="volume.ascx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.UserControls.volume" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
&nbsp;&nbsp;&nbsp;&nbsp;<asp:label id="lblvolume" runat="server">Volume Type</asp:label>&nbsp;&nbsp;
<asp:dropdownlist id="drpvolume" tabIndex="-1" runat="server" CssClass="drptxt" 
    AutoPostBack="True" 
    onselectedindexchanged="drpvolume_SelectedIndexChanged">
	<asp:ListItem Value="Select">Select</asp:ListItem>
</asp:dropdownlist>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Image id="imgback" runat="server" ImageUrl="../Images/logout.gif" Width="32px" Height="16px"></asp:Image>&nbsp;
<asp:LinkButton id="lnkbtnback" runat="server" CausesValidation="False" onclick="lnkbtnback_Click">Back</asp:LinkButton>
