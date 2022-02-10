<%@ Control Language="c#" AutoEventWireup="True" CodeBehind="TopHeader.ascx.cs" Inherits="eKaruvoolam.WebUI.UserControls.TopHeader"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<link href="../Styles/style1.css" type="text/css" rel="stylesheet">
<script language="JavaScript" src="../Scripts/date-picker.js"></script>
<script language="JavaScript" src="../Scripts/ekvm.js"></script>
<script>
    var actualtitle = document.title + " "
    if (document.all || document.getElementById)
        scroll()
    function scroll() {

        today = new Date();
        sec = today.getSeconds();
        hr = today.getHours();
        min = today.getMinutes();
        sdate = today.getDay() + "-" + today.getMonth() + 1 + "-" + today.getFullYear();
        if (hr < 12) { timeday = " AM"; }
        else { timeday = " PM"; }
        if (hr > 12) hr = hr - 12;
        if (hr <= 9) hr = "0" + hr;
        if (min <= 9) min = "0" + min;
        if (sec <= 9) sec = "0" + sec;
        var clocktext = " - " + hr + ":" + min + ":" + sec + timeday;
        clocktimer = setTimeout("scroll()", 1000);
        //document.title = actualtitle + clocktext; 
        //document.getElementById("divdate").innerText = sdate + clocktext;						
    }
    function ShowAlertMessage(msg) {
        alert(msg);
    }			
</script>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<table id="Table1" cellspacing="0" cellpadding="0" width="100%" class="tableleftborder"
    border="0">
    <tr>
        <td background="../Images/bg.gif" colspan="2">
            <img src="../Images/banner.jpg" width="680" height="70">
        </td>
    </tr>
    <tr class="tpheadstyle" style="text-indent: 15px">
        <td width="15%" style="height: 26px" align="right">
            <span id="divdate"></span>
            <asp:Label ID="lblCurrentDate" runat="server" CssClass="mandatory" Font-Size="XX-Small"
                ForeColor="Black" Font-Bold="True" Visible="True">lblCurrentDate</asp:Label>
        </td>
        <td width="85%" style="padding-right: 5px; height: 26px" align="right">
            &nbsp;
            <asp:Label ID="Label4" Font-Bold="True" ForeColor="Black" CssClass="mandatory" runat="server"
                Font-Size="XX-Small">TO Code:</asp:Label>
            <asp:Label ID="lblTOCode" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small"
                CssClass="mandatory" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" Font-Bold="True" ForeColor="Black" CssClass="mandatory" runat="server"
                Font-Size="XX-Small">Operation:</asp:Label>
            <asp:Label ID="lblFormMode" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small"
                CssClass="mandatory" runat="server"></asp:Label>&nbsp;&nbsp;
            <img src="../Images/user.gif" align="absMiddle">
            <asp:Label ID="Label2" ForeColor="Black" CssClass="mandatory" runat="server" Font-Size="XX-Small">User ID:</asp:Label>&nbsp;<asp:Label
                ID="lblUserID" runat="server" CssClass="mandatory" Font-Size="XX-Small" ForeColor="#C00000"
                Font-Bold="True"></asp:Label>
            <asp:Label ID="Label3" ForeColor="#400000" CssClass="mandatory" runat="server"> -</asp:Label>
            <asp:Label ID="lbtnlevel" Font-Bold="True" ForeColor="#C00000" Font-Size="XX-Small"
                CssClass="mandatory" runat="server"></asp:Label>&nbsp;&nbsp;<img src="../Images/helpicon.jpg"
                    align="absMiddle">&nbsp;<asp:LinkButton ID="lnkhelp" runat="server" CssClass="lnkButton"
                        CausesValidation="False">Help</asp:LinkButton>&nbsp;&nbsp;<img src="../Images/password.gif"
                            align="absMiddle">&nbsp;<asp:LinkButton ID="lnkPassword" runat="server" CssClass="lnkButton"
                                CausesValidation="False" OnClick="lnkPassword_Click">Change Password</asp:LinkButton>&nbsp;&nbsp;<img
                                    src="../Images/logout.gif" align="absMiddle">&nbsp;<asp:LinkButton ID="lbtnLogout"
                                        CssClass="lnkButton" CausesValidation="False" runat="server" TabIndex="-1" OnClick="lbtnLogout_Click">Logout</asp:LinkButton>
        </td>
    </tr>
    <tr class="footer">
        <td colspan="2" align="center">
            <asp:Panel ID="pnlAuditorlinks" runat="server">



        <div class="menu">

            <ul>
            <li >
            <asp:LinkButton ID="lnlbillstatus" runat="server" CausesValidation="False" OnClick="lnlbillstatus_Click" TabIndex="-1">Bill Status</asp:LinkButton>

            <ul>
            <li><asp:LinkButton ID="lnkEditTokenNo" runat="server" CausesValidation="false" OnClick="lnkEditTokenNo_Click" >Edit Token Entry</asp:LinkButton></li>
            <li><asp:LinkButton ID="lnkResetBillStatus" runat="server" CausesValidation="false" OnClick="lnkResetBillStatus_Click">Reset Bill Status</asp:LinkButton></li>
            </ul>
            </li>

            <li ><asp:LinkButton ID="lbtnBillProcess" runat="server" CausesValidation="False" TabIndex="-1" OnClick="lbtnBillProcess_Click">Bill Process</asp:LinkButton></li>

     

            <li ><asp:LinkButton ID="lnkInput" runat="server" CausesValidation="False" OnClick="lnkInput_Click" TabIndex="-1">Input</asp:LinkButton></li>

            <li ><asp:LinkButton ID="lbtnWages" runat="server" CausesValidation="False" TabIndex="-1" OnClick="lbtnPassOrder_Click">PassOrder</asp:LinkButton></li>

            <li ><asp:LinkButton ID="lbtnBillPassing" runat="server" CausesValidation="False" TabIndex="-1" OnClick="lbtnBillPassing_Click">Bill Passing</asp:LinkButton></li>

             <li ><asp:LinkButton ID="lbtnModifyBill" runat="server" CausesValidation="False" TabIndex="-1" Visible="False" OnClick="lbtnModifyBill_Click">Modify Entry</asp:LinkButton>

            </li>

            <li>
            <asp:LinkButton ID="lnkmainmenu1" runat="server" CausesValidation="false" OnClick="lnkmainmenu1_Click">MainMenu</asp:LinkButton>
            </li>

            <li ><asp:LinkButton ID="lnkbtnBillRegister" runat="server" CausesValidation="False" TabIndex="-1" OnClick="lnkbtnBillRegister_Click">Bill Register</asp:LinkButton>
            <ul>
            <li ><asp:LinkButton ID="lnkBillregisterBAS" runat="server" CausesValidation="False" TabIndex="-1" OnClick="lnkBillregisterBAS_Click">Bill Register BAS</asp:LinkButton></li>
            <li ><asp:LinkButton ID="lnkUnitRegister" runat="server" CausesValidation="False" TabIndex="-1" OnClick="lnkUnitRegister_Click">Unit Register</asp:LinkButton></li>
            <li><asp:LinkButton ID="lbtnOnlineBills" runat="server" CausesValidation="False" TabIndex="-1" Visible="False" OnClick="lbtnOnlineBills_Click">OnLine Bills</asp:LinkButton></li>
            <li><asp:LinkButton ID="lnkbtnVolume" runat="server" OnClick="lnkbtnVolume_Click" >Volume</asp:LinkButton></li>
            <li> <asp:LinkButton ID="lnkbtnBillReceive" runat="server" OnClick="lnkbtnBillReceive_Click" CausesValidation="false">BillReceive</asp:LinkButton></li>
             
            </ul>
            </li>
 
            

            </ul>

    </div> 
    <div id="Audit" runat="server" class="menu">
    <ul> 
    <li>  <asp:LinkButton ID="LinkBtnDCRA" runat="server" OnClick="LinkBtnDCRA_Click" CausesValidation="false">DCRG Final Settlement</asp:LinkButton></li> 
    <li> <asp:LinkButton ID="LinkBtnGPF" runat="server" OnClick="LinkBtnGPF_Click" CausesValidation="false">GPF Final Settlement</asp:LinkButton></li>
    <li> 
        <asp:LinkButton ID="LinkMHChange" runat="server" CausesValidation="false" 
            onclick="LinkMHChange_Click" Visible="False">Approve MHCode Change</asp:LinkButton></li> </ul>
    </div>

        </asp:Panel>
            <asp:Panel ID="PnlAM" runat="server" Visible="false">
                <div class="menu">

            <ul>
            <li >
                            <asp:LinkButton ID="lnkAMReceipt" CssClass="mmenuheadstyle" runat="server" CausesValidation="false" OnClick="lnkAMReceipt_Click">AM Receipt</asp:LinkButton></li>
                           
                          <li>   <asp:LinkButton ID="lnkAMCRChallan" CssClass="mmenuheadstyle" runat="server" CausesValidation="false" OnClick="lnkAMCRChallan_Click">AM CRChallan</asp:LinkButton></li>
                            
                           <li> <asp:LinkButton ID="lnkAMFunds" CssClass="mmenuheadstyle" runat="server" CausesValidation="false" OnClick="lnkAMFunds_Click">AM Funds</asp:LinkButton></li>
                             
                           <li> <asp:LinkButton ID="linkAM" CssClass="mmenuheadstyle" runat="server" CausesValidation="false" OnClick="linkAM_Click">AM-Payment</asp:LinkButton></li>
                        </ul>
                        </div>
                </asp:Panel>
                
        </td>
    </tr>
</table>
 
