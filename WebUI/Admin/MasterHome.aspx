<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterHome.aspx.cs"   Inherits="eKaruvoolam.WebUI.Admin.MasterHome" %>

<%@ Register src="../UserControls/StripHeader.ascx" tagname="StripHeader" tagprefix="uc1" %>

<%@ Register src="../UserControls/ErrorLabel.ascx" tagname="ErrorLabel" tagprefix="uc2" %>
<%@ Register src="../UserControls/Footer.ascx" tagname="Footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 26px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">    
    <uc1:StripHeader ID="StripHeader1" runat="server" />
    <TABLE class="tableleftbgcolor" id="Table1" cellSpacing="0" cellPadding="0" width="100%"
				border="0" height="100%">
				<tr>
					<td width="7%">&nbsp;</td>
					<td align="center" height="100%" valign="top">
						<table border="0" cellpadding="0" cellspacing="4" width="95%" class="menutree">
							<tr>
								<td class="rptSubHead" width="50%" colspan="2">Masters</td>
							</tr>
							<tr>
								<td>
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td class="style1"><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/DPCodeMas.aspx" class="linktxt">DOCode 
													- DPCode Details</a></td>
										</tr>
										<tr>
											<td class="style1"><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/BuildingRentMas.aspx" class="linktxt">Building 
													Rent Details</a></td>
										</tr>
										<tr>
											<td class="style2"><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/ElectricityMas.aspx" class="linktxt">Electricity 
													Details</a></td>
										</tr>
										<%--<tr>
											<td><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/SerialNumber.aspx" class="linktxt">Generate 
													Serial Number</a></td>
										</tr>--%>
									</table>
								</td>
								<td valign="top">
									<table border="0" cellpadding="0" cellspacing="2" width="100%">
										<tr>
											<td class="style3"><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/WaterMas.aspx" class="linktxt">Water 
													Details</a></td>
										</tr>
										<tr>
											<td class="style3"><img src="../Images/bullet1.gif" align="middle">&nbsp;<a href="../Masters/TelephoneMas.aspx" class="linktxt">Telephone 
													Details</a></td>
										</tr>
										<tr>
											<td  class="style3"><%--<a href="../Masters/MasterHome.aspx" class="linktxt">--%>
                                                <img src="../Images/bullet1.gif" align="middle">&nbsp;<a 
                                                    href="../MiseReports/MasterupdateAbstract.aspx" class="linktxt">Master 
                                                Abstract Report</a></tr>
										</table>
								</td>
							</tr>
						</table>
                        
					</td>
				</tr>
				<tr>
					<td colspan="2">
                        <uc2:ErrorLabel ID="ErrorLabel1" runat="server" />
                    </td>
				</tr>
				<tr>
					<td colspan="2">
                        <uc3:Footer ID="Footer1" runat="server" />
                    </td>
				</tr>
			</TABLE>
    </form>
</body>
</html>
