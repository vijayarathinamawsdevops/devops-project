<%@ Page language="c#" Codebehind="ReportMenulist.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.SAReports.ReportMenulist" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
  <HEAD>
		<title>Sub Account Reports</title>
<meta content="Microsoft Visual Studio .NET 7.1" name=GENERATOR>
<meta content=C# name=CODE_LANGUAGE>
<meta content=JavaScript name=vs_defaultClientScript>
<meta content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema><LINK href="../Styles/style1.css" type=text/css rel=stylesheet >
<script language=JavaScript src="../Scripts/ekvm.js"></script>
</HEAD>
<body leftMargin=0 topMargin=0 rightMargin=0>
<form id=frmSAReports method=post runat="server">
<TABLE class=tableleftbgcolor id=Table1 height="100%" cellSpacing=0 
cellPadding=0 width="100%" border=0>
  <tr>
    <TD colSpan=2><uc1:stripheader id=StripHeader1 runat="server"></uc1:StripHeader></td></tr>
  <tr>
    <td class=rptHead style="PADDING-LEFT: 20px" colSpan=2 
      ><img src="../Images/analyzestep.gif" align=absMiddle >Sub Account 
      Reports</td></tr>
  <tr>
    <td width="7%">&nbsp;</td>
    <td vAlign=top align=center height="100%">
      <table cellSpacing=4 cellPadding=0 width="95%" border=0 class="menutree">
       
        <tr>
          <td class=rptSubHead width="50%" colSpan=2 
            >Report Lists</td></tr>
        <tr>
          <td align=right width="50%" colSpan=2 
          src="../Images/bullet2.gif" <img>&nbsp;<a class="linktxt" href="../Reports/SAReportHome.aspx" > <STRONG><FONT 
            color=#9900ff size=3><U>Back</U></FONT></STRONG></A></td></tr>
        <tr>
          <td align=center colSpan=2><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="AllRepMenu.aspx" > All Report</A></td></tr>
        <tr>
          <td vAlign=top>
            <table cellSpacing=2 cellPadding=0 width="100%" border=0 >
             
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="alistnewGazetted.aspx" >A List 
Gazetted</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="alistnew.aspx" >A List Non Gazetted</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="BListG.aspx" >B List Gazetted</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="BListNG.aspx" >B List Non Gazetted</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="BListPen.aspx" >B List Pension</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="FLeaf23Report.aspx" >F Leaf 23</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="LOP23Report.aspx" >LOP 23</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="BList27b.aspx" >B List 27b</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="BList27C.aspx" >B List 27c</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="BList27E.aspx" >B List 
                  27e</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a class="linktxt" href="BListNG27D1.aspx" >B List 27D-Cheque 
              only</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a class="linktxt" href="PwdBListNG.aspx" >B List for PWD/FOREST/HIGHWAYS Dept
              only</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="CList.aspx" >C List</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="DListnew.aspx" >D List</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="MhAbst.aspx" >MH Abstract</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="ConsAbst.aspx" >Con. Abstract</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="ALeaf.aspx" >A Leaf Plan</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="ALeafnonplan.aspx" >A Leaf Non Plan</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="StampAccount.aspx" >Stamp 
              Account</A></td></tr></table></td>
          <td vAlign=top>
            <table cellSpacing=2 cellPadding=0 width="100%" border=0 
            >
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="BLeaf.aspx" >B Leaf Plan</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="BLeafNonPlan.aspx" >B Leaf Non Plan</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="CLeaf.aspx" >C Leaf</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="dleafplan.aspx" >D Leaf Plan</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="dleafnonplan.aspx" >D Leaf Non Plan</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="CRReport.aspx" >C.R. Report</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="Loanlist.aspx" >Loan</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="Acct.aspx" >Account</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="ReconAcct.aspx" >Reconciliation</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="plannpl.aspx" >Plan/Non-Plan</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="Rcredit.aspx" >Credit List</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="ReceiptAbstract.aspx" >Receipt - 1</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="Receipt2Abstract.aspx" >Receipt -2</A></td></tr>
              <tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="ReceiptDeduction.aspx" >Receipt 
              Schedule</A></td></tr>
              <%--<tr>
                <td><img src="../Images/bullet2.gif" align="middle" >&nbsp;<a class="linktxt" href="RevenueReport.aspx" >Revenue 
              Report</A></td></tr>--%></table></td></tr></table></td></tr>
  <tr>
    <td colSpan=2><uc1:errorlabel id=ErrorLabel1 runat="server"></uc1:ErrorLabel></td></tr>
  <tr>
    <td colSpan=2><uc1:footer id="Footer1" runat="server"></uc1:footer></td></tr></table></FORM>
	</body>
</HTML>
