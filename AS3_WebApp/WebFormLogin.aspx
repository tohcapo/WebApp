<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormLogin.aspx.cs" Inherits="AS3_WebApp.WebFormLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td><asp:Label ID="label1" runat="server" Text="UserID:" /></td>
                <td><asp:TextBox ID="textBoxUserID" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="label2" runat="server" Text="Password:" /></td>
                <td><asp:TextBox ID="textBoxPassword" runat="server" TextMode="Password" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="buttonLogin" runat="server" Width="100%" Text="Login" PostBackUrl="~/WebFormMain.aspx" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
