<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="eKaruvoolam.WebUI.MiseReports.Main" %>
 

<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/MiseReportsHeader.ascx" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
    <title></title>
   <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../Scripts/date-picker.js"></script>
		<script language="JavaScript" src="../Scripts/ekvm.js"></script>
		<LINK href="../Styles/style1.css" type="text/css" rel="stylesheet">
		<script language="javascript">

		    function ShowScrollPopup(srcScreen, KeyField, OperMode, sTitle, Width, Height) {
		        alert('hi');
		    }
		</script>
</head>

<body>
    <form id="form1" runat="server">
    <TABLE id="Table1" class="tableleftbgcolor" border="0" cellSpacing="0" cellPadding="0"
				width="100%" height="100%">
				<TR>
					<TD colSpan="2"><uc1:stripheader id="StripHeader1" runat="server"></uc1:stripheader></TD>
				</TR>			
    
 
    <table width="100%"><tr><td>
        <table style="width:100%;">
            <tr>
                <td class="formtitle" colspan="5" align="center">
                    &nbsp;Reports</td>
            </tr>
            <tr>
                 
                <td>
     
                    <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="BillStatusReport.aspx" class="linktxt">Bill Status Report</a></td></td>
                <td>

                <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="EcsNonEcs.aspx" 
                        class="linktxt">Ecs-NonEcs Status Report</a></td>
                        
                 <td>

                <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="TweentyFourG.aspx" 
                        class="linktxt">24-G Form Report</a></td></td>
     
                    </td>
                        
                        </td>
     
                    </td>
                <td>
                    &nbsp;<FONT 
            face="Courier New" color=#6600ff><STRONG></STRONG></FONT></td>
                <td>
                    &nbsp;</td>
            </tr>
             
            <tr>
                 
                <td>
                   <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="ChequeRealisationReport.aspx" 
                             class="linktxt">Cheque Status Report</a></td>
                   </td>
                <td>
                 <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="RealisedChequeReport.aspx" 
                             class="linktxt">Realised Cheque Status</a></td>
                    </td>
                        
                 <td>
                 <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="PaymentsReceipts.aspx" 
                             class="linktxt">Payment & Receipt</a></td>
                     </td>
               <td>
                  
                     </td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr><td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="PLI.aspx" 
                             class="linktxt">Postal Life Insurance</a></td>
             <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="GeneralTNTC70A.aspx" 
                             class="linktxt">General TNTC70A</a></td>
              <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="TNTC70A.aspx" 
                             class="linktxt">TNTC70A BAS & Unit Wise</a></td>
             </tr>
             
             <tr><td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="PosRegisterReport.aspx" 
                             class="linktxt">Posting Register</a></td>
             <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="LoanAndAdvanceRpt.aspx" 
                             class="linktxt">Loan And Advance Report</a></td>
              <td>
                  <IMG align="middle" src="../Images/bullet2.gif">&nbsp;<A 
                                                    class="linktxt" href="../MiseReports/DepositsRpt.aspx"> Deposits</A> </td>
             </tr>
             
             <tr><td>
                  <IMG align="middle" src="../Images/bullet2.gif">&nbsp;<A 
                                                    class="linktxt" href="PensionRpt.aspx">Pension</A> </td>
             <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="PostingRegisterReceiptsRpt.aspx" 
                             class="linktxt">Posting Register Receipt</a></td>
              <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="CashRecoveryAbstract.aspx" 
                             class="linktxt">Cash Recovery</a></td>
             </tr>
             
             <tr><td>
                 <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="PostingRegisterAbstract.aspx" 
                             class="linktxt">Posting Register Abstract</a></td>
             <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="RBD.aspx" 
                             class="linktxt">RBD</a></td>
              <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="List.aspx" 
                             class="linktxt">List</a></td>
             </tr>
             
             <%--<tr><td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="MasterupdateAbstract.aspx" 
                             class="linktxt">Master Abstract</a></td>
             <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="BuildingRentMaster.aspx" 
                             class="linktxt">Building Rent Master</a></td>
              <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="DPCodeMaster.aspx" 
                             class="linktxt">DPCode Master</a></td>
             </tr>
             
             <tr><td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="Electricity.aspx" 
                             class="linktxt">Electricity Master</a></td>
             <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="TelephoneMas.aspx" 
                             class="linktxt">Telephone Master</a></td>
              <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="WaterMaster.aspx" 
                             class="linktxt">Water Master</a></td>
             </tr>--%>
             
             <tr><td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="DCRGRpt.aspx" 
                             class="linktxt">DCRG Final Settlement</a></td>
             <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="GPFRpt.aspx" 
                             class="linktxt">GPF Final Settlement</a></td>
              <td>
                 <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="ImmediateRelief.aspx" 
                             class="linktxt">Immediate Relieft</a></td>
             </tr>
             
             <tr><td>
                 <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="ECSNonECSBillTypeDetails.aspx" 
                             class="linktxt">ECS NonECS BillType Deatils</a></td>
             <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="CPS.aspx" 
                             class="linktxt">CPS</a></td>
              <td>
             <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="CORPUS.aspx" 
                             class="linktxt">CORPUS</a></td>
             </tr>
             
             </table>
        </td>
    </tr>
     <tr>
     <td>
     
         </td>
     </tr>
    </table>
    <tr>
					<td colSpan="2"><uc1:errorlabel id="ErrorLabel1" runat="server"></uc1:errorlabel></td>
				</tr>
				<tr>
					<td colSpan="2"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
     </TABLE>

    </form>
</body>
</html>

