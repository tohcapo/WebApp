<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCustomerIncidents.aspx.cs" Inherits="AS3_WebApp.WebFormCustomerIncidents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Incidents</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFormMain.aspx">Back</asp:HyperLink>
    
    </div>
        <table>
            <tr>
                <td>Customer ID:</td>
                <td><asp:TextBox ID="textCustomerID" runat="server" Width="200px" /></td>
                <td><asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" /></td>
            </tr>
            <tr>
               <td>Customer ID:</td>
                <td><asp:TextBox ID="textCustomerIDDisplay" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><asp:TextBox ID="textName" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><asp:TextBox ID="textAddress" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
        </table>
    </form>
</body>
</html>
