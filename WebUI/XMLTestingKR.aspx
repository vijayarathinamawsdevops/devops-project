<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XMLTestingKR.aspx.cs" Inherits="eKaruvoolam.WebUI.XMLTestingKR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUploadXML" runat="server" />
        <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
            Text="Upload" />
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="XmlTesting" />
    </form>
</body>
</html>
