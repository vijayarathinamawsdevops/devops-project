<%@ Page Language="c#" CodeBehind="ReportMenulist.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.MAccountReport.ReportMenulist" %>

<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Main Account Reports</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href="../Styles/style1.css" type="text/css" rel="stylesheet">
    <script language="JavaScript" src="../Scripts/ekvm.js"></script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0">
    <form id="frmMAReports" method="post" runat="server">
        <table class="tableleftbgcolor" id="Table1" cellspacing="0" cellpadding="0" width="100%"
            border="0" height="100%">
            <tr>
                <td colspan="2">
                    <uc1:StripHeader ID="StripHeader1" runat="server"></uc1:StripHeader>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-left: 20px" class="rptHead">
                    <img src="../Images/analyzestep.gif" align="absMiddle">Main 
						Account Reports</td>
            </tr>
            <tr>
                <td width="7%">&nbsp;</td>
                <td align="center" height="100%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="4" width="95%" class="menutree">
                        <tr>
                            <td class="rptSubHead" width="50%">&nbsp;</td>
                            <td class="rptSubHead" width="50%" align="right"><a class="linktxt" href="../Reports/MAReportHome.aspx"><strong><font color="#9900ff" size="3"><u>Back</u></font></strong></a></td>
                        </tr>
                        <tr>
                            <td class="rptSubHead" width="50%">Payments</td>
                            <td class="rptSubHead" width="50%">Receipts</td>
                        </tr>
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="2" width="100%">
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="Loan7610PayReport.aspx" class="linktxt">Loans 
													&amp; Advances</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="SD8001PayReport.aspx" class="linktxt">S.P.F. 
													(8031)</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="SPF8009PayReport.aspx" class="linktxt">G.P.F. 
													(8009)</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="CPF8011PayReport.aspx" class="linktxt">C.P.F. 
													(8342)</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="TotalDeduct.aspx" class="linktxt">Total 
													Deduction</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="TotalRefund.aspx" class="linktxt">Refund</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="AllCrReport.aspx" class="linktxt">Cash 
													Recovery</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="ConsolidPayReport.aspx" class="linktxt">Plan 
													&amp; Non-Plan</a></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/CPS_AM_Abstract.aspx" class="linktxt">CPS Consolidated Voucher Abstract</a></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/CPSVoucher.aspx" class="linktxt">CPS SA.No and DOCode wise Report</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/CPS-EcsData.aspx" class="linktxt">CPS-ECS Report</a></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/CPSTransaction.aspx" class="linktxt">CPS Employee wise Report / P1..P4,R1..R4 Files</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/CPSTransaction.aspx" class="linktxt">NMP GPF Employee wise Report</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/GPFReport.aspx" class="linktxt">GPF Report</a></td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/GPFAbstractReport.aspx" class="linktxt">GPF Abstract Report</a></td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/NPSReport.aspx" class="linktxt">NPS Report</a></td>
                                    </tr>
                                </table>
                            </td>
                            <td valign="top">
                                <table border="0" cellpadding="0" cellspacing="2" width="100%">
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="Loan7610ReceiptReport.aspx#" class="linktxt">Loan 
													&amp; Advances</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="SDReport.aspx" class="linktxt">S.P.F. 
													(8031)</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="SPFReport.aspx" class="linktxt">G.P.F. 
													(8009-R)</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="CPF8011RecReport.aspx" class="linktxt">C.P.S. 
													(8342)</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="ConsolidRecReport.aspx" class="linktxt">Receipts</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="MainReconcAcct.aspx" class="linktxt">Reconcilation</a></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="RevenueReceipt.aspx" class="linktxt">Revenue Receipt</a></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="../Images/bullet2.gif" align="middle">&nbsp;<a href="../Reports/CPSReport_AG_gdc.aspx" class="linktxt">CPS Report</a></td>
                                    </tr>



                                </table>

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-left: 20px">
                    <asp:Label runat="server" Font-Bold="true" ForeColor="Red" Text="  P1..P4,R1..R4 Files will be stored in C:\temp  "></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <uc1:ErrorLabel ID="ErrorLabel1" runat="server"></uc1:ErrorLabel>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <uc1:Footer ID="Footer1" runat="server"></uc1:Footer>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
