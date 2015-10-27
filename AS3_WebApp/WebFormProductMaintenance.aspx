<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormProductMaintenance.aspx.cs" Inherits="AS3_WebApp.WebFormProductMaintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Maintenance</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFormMain.aspx">Back</asp:HyperLink>
        <table border="1">
            <tr style="font-weight:bold">
                <td style="width:200px">Product Code</td>
                <td style="width:200px">Name</td>
                <td style="width:200px">Version</td>
                <td style="width:200px">Release Date</td>
            </tr>
            <tr>
                <td>DRAFT10</td>
                <td>Draft Manager 1.0</td>
                <td>1.0</td>
                <td>12/1/2010</td>
                <td>
                    <asp:Button ID="buttonEdit" runat="server" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="buttonDelete" runat="server" Text="Delete" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
