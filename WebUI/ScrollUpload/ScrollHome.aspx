<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScrollHome.aspx.cs" Inherits="eKaruvoolam.WebUI.ScrollUpload.ScrollHome" %>
<%@ Register TagPrefix="uc1" TagName="StripHeader" Src="../UserControls/StripHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ErrorLabel" Src="../UserControls/ErrorLabel.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/Style1.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/Sqlinjection.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr><td>
    <uc1:StripHeader id="StripHeader1" runat="server"></uc1:StripHeader>   
    </td></tr>
    <tr><td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Reports/EScrollBank.aspx" class="linktxt">E-Scroll Report</a></td></tr>
    <tr><td><img src="../images/bullet1.gif" align="middle" style="height: 13px">&nbsp;<a 
                                                    href="../Reports/ScrollUploading.aspx" 
            class="linktxt">Scroll Uploading</a></td></tr>
    <tr><td><img src="../images/bullet1.gif" align="middle">&nbsp;<a 
                                                href="../Masters/BankChallanDetails.aspx" class="linktxt">Bank Challan Details</a></td></tr>
    <tr>
					<td><uc1:ErrorLabel id="ErrorLabel1" runat="server"></uc1:ErrorLabel></td>
				</tr>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
    </table>
    </div>
    </form>
</body>
</html>
